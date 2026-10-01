param(
    [string]$StyleFile = (Join-Path $PSScriptRoot 'style.json'),
    [switch]$DryRun,
    [switch]$UsePreview,
    [string]$Only
)
$ErrorActionPreference = 'Stop'

$repo = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$style = Get-Content -LiteralPath $StyleFile -Raw | ConvertFrom-Json
$preview = if ([IO.Path]::IsPathRooted($style.image.output_directory)) {
    [string]$style.image.output_directory
} else {
    Join-Path $repo $style.image.output_directory
}

foreach ($folder in (Get-ChildItem -LiteralPath (Join-Path $repo 'puzzle-pieces') -Directory)) {
    if ($Only -and $folder.Name -cne $Only) { continue }
    $boards = @(Get-ChildItem -LiteralPath $folder.FullName -File -Filter '*.kicad_pcb')
    if ($boards.Count -eq 0) { continue }
    if ($boards.Count -ne 1) {
        Write-Warning "$($folder.Name): $($boards.Count) PCB files; select one manually."
        continue
    }

    $missing = @()
    $ambiguous = $false
    foreach ($face in @('TOP', 'BOTTOM')) {
        $images = @(Get-ChildItem -LiteralPath $folder.FullName -File -Filter "*_$face.png")
        if ($images.Count -gt 1) {
            Write-Warning "$($folder.Name): multiple _$face.png images; resolve manually."
            $ambiguous = $true
        } elseif ($images.Count -eq 0) {
            $missing += $face
        }
    }
    if ($ambiguous -or $missing.Count -eq 0) { continue }

    $entries = @($style.examples | Where-Object { $_.name -ceq $folder.Name })
    if ($entries.Count -ne 1) {
        Write-Warning "$($folder.Name): add exactly one style.json example named after this folder before rendering."
        continue
    }
    $entry = $entries[0]
    $expectedBoard = Join-Path $folder.FullName ([string]$boards[0].Name)
    $configuredBoard = Join-Path $repo ([string]$entry.board_file)
    if ([IO.Path]::GetFullPath($configuredBoard) -ne [IO.Path]::GetFullPath($expectedBoard)) {
        Write-Warning "$($folder.Name): configured PCB does not match the folder's sole PCB file."
        continue
    }
    if ([double]$entry.board_width_mm -le 0 -or [double]$entry.board_height_mm -le 0) {
        Write-Warning "$($folder.Name): set positive board dimensions in style.json."
        continue
    }
    if ($missing.Count -eq 1) {
        $other = if ($missing[0] -eq 'TOP') { 'BOTTOM' } else { 'TOP' }
        $otherImage = @(Get-ChildItem -LiteralPath $folder.FullName -File -Filter "*_$other.png")
        if ($otherImage.Count -eq 1 -and $otherImage[0].Name -cne "$($folder.Name)_$other.png") {
            Write-Warning "$($folder.Name): existing image uses a different basename; resolve the pair manually."
            continue
        }
    }

    Write-Output "$($folder.Name): missing $($missing -join ', ')"
    if ($DryRun) { continue }
    if (-not $UsePreview) {
        & (Join-Path $PSScriptRoot 'render.ps1') -StyleFile $StyleFile -Only @($folder.Name) -Faces $missing | Out-Null
    }
    foreach ($face in $missing) {
        $fileName = "$($folder.Name)_$face.png"
        $source = Join-Path $preview $fileName
        if (-not (Test-Path -LiteralPath $source -PathType Leaf)) { throw "Render missing: $source" }
        if ((Get-Item -LiteralPath $source).Length -eq 0) { throw "Empty render: $source" }
        if ($UsePreview) {
            $newestInput = @((Get-Item -LiteralPath $expectedBoard).LastWriteTimeUtc,
                (Get-Item -LiteralPath $StyleFile).LastWriteTimeUtc) | Sort-Object -Descending | Select-Object -First 1
            if ((Get-Item -LiteralPath $source).LastWriteTimeUtc -lt $newestInput) {
                throw "Preview is older than PCB or style: $source"
            }
        }
    }
    foreach ($face in $missing) {
        $fileName = "$($folder.Name)_$face.png"
        $source = Join-Path $preview $fileName
        $destination = Join-Path $folder.FullName $fileName
        [IO.File]::Copy($source, $destination, $false)
        Write-Output "Created: $destination"
    }
}
