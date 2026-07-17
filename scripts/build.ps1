param([string]$Output = "output/pdf/HTH-design-prototype.pdf")

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$typst = Get-Command typst -ErrorAction SilentlyContinue
if (-not $typst) {
  $typst = Get-ChildItem "$env:LOCALAPPDATA/Microsoft/WinGet/Packages/Typst.Typst_*/typst-*/typst.exe" -ErrorAction SilentlyContinue | Select-Object -First 1
}
if (-not $typst) { throw "Typst 0.15.0 or newer was not found in PATH." }
$typstPath = if ($typst.Source) { $typst.Source } else { $typst.FullName }

$target = Join-Path $root $Output
New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target) | Out-Null
& $typstPath compile (Join-Path $root "src/main.typ") $target --root $root
if ($LASTEXITCODE -ne 0) { throw "Typst build failed." }
Write-Host "Built $target"
