# Generate favicon PNG and ICO files from assets/favicon.svg
# Requires ImageMagick (magick) installed and on PATH.
# Run from repository root: pwsh .\scripts\generate-favicons.ps1

$svg = "assets/favicon.svg"
$out16 = "assets/favicon-16.png"
$out32 = "assets/favicon-32.png"
$out180 = "assets/apple-touch-icon.png"
$out192 = "assets/favicon-192.png"
$outico = "assets/favicon.ico"

function Check-Command($cmd) {
  $p = Get-Command $cmd -ErrorAction SilentlyContinue
  return $null -ne $p
}

if (-not (Test-Path $svg)) {
  Write-Error "SVG not found: $svg"
  exit 1
}

if (-not (Check-Command magick)) {
  Write-Host "ImageMagick 'magick' not found on PATH."
  Write-Host "Install ImageMagick (https://imagemagick.org) and ensure 'magick' is available, or run conversion manually."
  exit 2
}

Write-Host "Generating PNG favicons..."
magick "$svg" -background none -resize 16x16 "$out16"
magick "$svg" -background none -resize 32x32 "$out32"
magick "$svg" -background none -resize 180x180 "$out180"
magick "$svg" -background none -resize 192x192 "$out192"

Write-Host "Generating ICO (multi-size)..."
magick convert "$out16" "$out32" "$out180" -colors 256 "$outico"

Write-Host "Done. Files created in assets/:"
Write-Host "  - $out16"
Write-Host "  - $out32"
Write-Host "  - $out180"
Write-Host "  - $out192"
Write-Host "  - $outico"
