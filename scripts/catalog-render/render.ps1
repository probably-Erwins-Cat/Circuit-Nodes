param(
    [string]$StyleFile = (Join-Path $PSScriptRoot 'style.json'),
    [string[]]$Only = @(),
    [ValidateSet('TOP', 'BOTTOM')][string[]]$Faces = @('TOP', 'BOTTOM')
)
$ErrorActionPreference = 'Stop'

function Resolve-RepoPath([string]$Path, [string]$Repo) {
    if ($Path.StartsWith('~/')) { return Join-Path $env:USERPROFILE $Path.Substring(2).Replace('/', '\') }
    if ([IO.Path]::IsPathRooted($Path)) { return $Path }
    return Join-Path $Repo $Path
}

function Invariant-Number($Value) {
    return [Convert]::ToString($Value, [Globalization.CultureInfo]::InvariantCulture)
}

function Composite-Preview([string]$Source, [string]$Destination, $Style, [bool]$WithBrand, [string]$LogoPath) {
    $render = [Drawing.Image]::FromFile($Source)
    $canvas = [Drawing.Bitmap]::new($render.Width, $render.Height)
    $graphics = [Drawing.Graphics]::FromImage($canvas)
    $graphics.CompositingQuality = [Drawing.Drawing2D.CompositingQuality]::HighQuality
    $graphics.InterpolationMode = [Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    try {
        $graphics.Clear([Drawing.ColorTranslator]::FromHtml($Style.image.background_hex))
        $graphics.DrawImageUnscaled($render, 0, 0)
        if ($WithBrand) {
            $logo = [Drawing.Image]::FromFile($LogoPath)
            try {
                $corner = [int]$Style.branding.corner_padding_px
                $padding = [int]$Style.branding.badge_padding_px
                $logoWidth = [Math]::Min([int]$Style.branding.logo_width_px, ($render.Width - 2 * ($corner + $padding)))
                $logoHeight = [int][Math]::Round($logo.Height * $logoWidth / $logo.Width)
                $badgeWidth = $logoWidth + 2 * $padding
                $badgeHeight = $logoHeight + 2 * $padding
                $badgeX = $corner
                $badgeY = $render.Height - $corner - $badgeHeight
                $brush = [Drawing.SolidBrush]::new([Drawing.ColorTranslator]::FromHtml($Style.branding.badge_color_hex))
                try { $graphics.FillRectangle($brush, $badgeX, $badgeY, $badgeWidth, $badgeHeight) }
                finally { $brush.Dispose() }
                $graphics.DrawImage($logo, ($badgeX + $padding), ($badgeY + $padding), $logoWidth, $logoHeight)
            } finally { $logo.Dispose() }
        }
        $canvas.Save($Destination, [Drawing.Imaging.ImageFormat]::Png)
    } finally {
        $graphics.Dispose()
        $canvas.Dispose()
        $render.Dispose()
    }
}

$repo = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$style = Get-Content -LiteralPath $StyleFile -Raw | ConvertFrom-Json
$kicadCli = Resolve-RepoPath $style.kicad.executable $repo
$easyEdaLibrary = Resolve-RepoPath $style.kicad.easyeda_model_library $repo
$logoPath = Resolve-RepoPath $style.branding.logo_file $repo
$outputDir = Resolve-RepoPath $style.image.output_directory $repo
$viewerSettings = Join-Path $PSScriptRoot $style.kicad.viewer_settings
if (-not (Test-Path -LiteralPath $kicadCli)) { throw "KiCad CLI missing: $kicadCli" }
if (-not (Test-Path -LiteralPath $viewerSettings)) { throw "Viewer settings missing: $viewerSettings" }
if ($style.branding.enabled -and -not (Test-Path -LiteralPath $logoPath)) {
    throw "Logo missing: $logoPath"
}
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
Add-Type -AssemblyName System.Drawing

$workDir = Join-Path $PSScriptRoot '.work'
New-Item -ItemType Directory -Force -Path $workDir | Out-Null
$configHome = Join-Path $workDir 'kicad-config'
$configVersion = Join-Path $configHome '10.0'
New-Item -ItemType Directory -Force -Path $configVersion | Out-Null
Copy-Item -LiteralPath $viewerSettings -Destination (Join-Path $configVersion '3d_viewer.json') -Force
$modelRoot = Join-Path (Split-Path (Split-Path $kicadCli -Parent) -Parent) 'share/kicad/3dmodels'
$modelRoot = $modelRoot.Replace('\', '/')
$lighting = $style.lighting
$direction = [string]$style.camera.tilt_direction
switch ($direction) {
    'left-bottom'  { $xSign = -1; $ySign =  1 }
    'left-top'     { $xSign =  1; $ySign =  1 }
    'right-bottom' { $xSign = -1; $ySign = -1 }
    'right-top'    { $xSign =  1; $ySign = -1 }
    default { throw "Unknown tilt_direction '$direction'. Use left-bottom, left-top, right-bottom, or right-top." }
}
$xDegrees = $xSign * [double]$style.camera.vertical_tilt_degrees
$yDegrees = $ySign * [double]$style.camera.horizontal_tilt_degrees
$edgeRoll = $xSign * $ySign * [double]$style.camera.edge_level_degrees
$oldConfigHome = $env:KICAD_CONFIG_HOME
try {
    $env:KICAD_CONFIG_HOME = $configHome
    foreach ($example in $style.examples) {
        if ($Only.Count -gt 0 -and $Only -notcontains $example.name) { continue }
        $source = Resolve-RepoPath $example.board_file $repo
        if (-not (Test-Path -LiteralPath $source)) { throw "Board missing: $source" }
        $name = $example.name
        $renderBoard = Join-Path $workDir "$name-render-only.kicad_pcb"
        $board = [IO.File]::ReadAllText($source)
        $board = $board -replace '\(color "(?:Black|#000000CC|#000000FF)"\)', ('(color "' + $style.board.solder_mask_hex_rgba + '")')
        $board = $board.Replace('(color "FR4 natural")', ('(color "' + $style.board.substrate_hex_rgba + '")'))
        if ($null -ne $example.solder_mask_thickness_mm) {
            $maskThickness = Invariant-Number $example.solder_mask_thickness_mm
            $maskPattern = '(\(layer "[FB]\.Mask"\s+\(type "[^"]+"\)\s+\(color "[^"]+"\)\s+\(thickness )[-\d.]+(\))'
            $board = [regex]::Replace($board, $maskPattern, [Text.RegularExpressions.MatchEvaluator]{
                param($match)
                $match.Groups[1].Value + $maskThickness + $match.Groups[2].Value
            })
        }
        foreach ($version in @(8, 9, 10)) {
            $board = $board.Replace('${KICAD' + $version + '_3DMODEL_DIR}', $modelRoot)
        }
        $board = $board.Replace('${EASYEDA2KICAD}', $easyEdaLibrary.Replace('\', '/'))
        [IO.File]::WriteAllText($renderBoard, $board, [Text.UTF8Encoding]::new($false))

        $shortSideMm = [Math]::Min([double]$example.board_width_mm, [double]$example.board_height_mm)
        if ($shortSideMm -le 0) { throw "Invalid board dimensions for $name" }
        $width = [int][Math]::Round($style.image.pixels_per_short_side * $example.board_width_mm / $shortSideMm)
        $height = [int][Math]::Round($style.image.pixels_per_short_side * $example.board_height_mm / $shortSideMm)
        if ($null -ne $example.canvas_width_px) { $width = [int]$example.canvas_width_px }
        if ($null -ne $example.canvas_height_px) { $height = [int]$example.canvas_height_px }
        if ($width -le 0 -or $height -le 0) { throw "Invalid canvas dimensions for $name" }
        foreach ($face in $Faces) {
            $side = [string]$style.camera.sides.$face
            if ($side -notin @('top', 'bottom')) { throw "Invalid KiCad side '$side' for $face" }
            $faceRotation = if ($face -eq 'BOTTOM') { -$edgeRoll } else { $edgeRoll }
            $boardRotation = [double]$example.board_rotation_degrees
            if ($face -eq 'BOTTOM') { $boardRotation += [double]$example.bottom_rotation_degrees }
            $rotation = '{0},{1},{2}' -f $xDegrees, $yDegrees, ($faceRotation + $boardRotation)
            $zoomFactor = if ($null -eq $example.zoom_multiplier) { 1.0 } else { [double]$example.zoom_multiplier }
            if ($face -eq 'BOTTOM' -and $null -ne $example.bottom_zoom_multiplier) {
                $zoomFactor *= [double]$example.bottom_zoom_multiplier
            }
            $zoom = [double]$style.camera.zoom * $zoomFactor
            $transparentPath = Join-Path $workDir "$name-$face-transparent.png"
            $imagePath = Join-Path $outputDir "${name}_$face.png"
            $renderArgs = @('pcb', 'render', '--output', $transparentPath, '--width', "$width", '--height', "$height",
                '--side', $side, '--rotate', $rotation, '--zoom', (Invariant-Number $zoom),
                '--background', 'transparent', '--quality', $style.kicad.quality,
                '--light-top', (Invariant-Number $lighting.top), '--light-bottom', (Invariant-Number $lighting.bottom),
                '--light-side', (Invariant-Number $lighting.side), '--light-camera', (Invariant-Number $lighting.camera),
                '--light-side-elevation', [string]$lighting.side_elevation_degrees, $renderBoard)
            & $kicadCli @renderArgs | Out-Null
            if ($LASTEXITCODE -ne 0) { throw "KiCad render failed for $name $face (exit $LASTEXITCODE)" }

            Composite-Preview $transparentPath $imagePath $style ([bool]$style.branding.enabled) $logoPath
            Write-Output $imagePath
        }
    }
} finally {
    $env:KICAD_CONFIG_HOME = $oldConfigHome
}
