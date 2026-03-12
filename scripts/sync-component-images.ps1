param(
    [string]$SourceRoot = "puzzle-pieces",
    [string]$TargetRoot = "docs/images/components"
)

$ErrorActionPreference = "Stop"

if (!(Test-Path -LiteralPath $SourceRoot)) {
    throw "Source root not found: $SourceRoot"
}

if (Test-Path -LiteralPath $TargetRoot) {
    Get-ChildItem -LiteralPath $TargetRoot -Force | Remove-Item -Recurse -Force
} else {
    New-Item -ItemType Directory -Path $TargetRoot | Out-Null
}

$copiedCount = 0
$folderCount = 0

Get-ChildItem -LiteralPath $SourceRoot -Directory | ForEach-Object {
    $componentDir = $_
    $images = Get-ChildItem -LiteralPath $componentDir.FullName -File -ErrorAction SilentlyContinue |
        Where-Object { $_.Name -match '_(TOP|BOTTOM)\.png$' }

    if (-not $images) {
        return
    }

    $targetDir = Join-Path $TargetRoot $componentDir.Name
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
    $folderCount++

    foreach ($image in $images) {
        Copy-Item -LiteralPath $image.FullName -Destination (Join-Path $targetDir $image.Name) -Force
        $copiedCount++
    }
}

Write-Output "Synced $copiedCount image(s) across $folderCount component folder(s) to '$TargetRoot'."
