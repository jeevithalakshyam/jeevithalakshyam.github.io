$ttfPath = 'assets/NotoSerifMalayalam-Regular.ttf'
if (-not (Test-Path $ttfPath)) { Write-Error "TTF not found: $ttfPath"; exit 1 }
$b = [Convert]::ToBase64String([IO.File]::ReadAllBytes($ttfPath))
$svg = @"
<?xml version='1.0' encoding='utf-8'?>
<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 64 64' width='64' height='64'>
  <defs>
    <linearGradient id='g' x1='0' y1='0' x2='1' y2='1'>
      <stop offset='0' stop-color='#D4A24C'/>
      <stop offset='1' stop-color='#F5C572'/>
    </linearGradient>
  </defs>
  <style type='text/css'>
    @font-face { font-family: 'Noto Serif Malayalam'; src: url('data:font/ttf;base64,$b') format('truetype'); font-weight: 700; font-style: normal; }
    text { font-family: 'Noto Serif Malayalam', serif; }
  </style>
  <rect width='100%' height='100%' fill='transparent'/>
  <circle cx='32' cy='32' r='30' fill='url(#g)'/>
  <text x='50%' y='50%' dominant-baseline='middle' text-anchor='middle' font-family='Noto Serif Malayalam, serif' font-weight='700' font-size='28' fill='#0F1419'>ജ</text>
</svg>
"@
Set-Content -Path 'assets/favicon.svg' -Value $svg -Encoding UTF8
Write-Host 'Embedded SVG written to assets/favicon.svg'