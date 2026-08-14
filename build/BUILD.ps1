[CmdletBinding()]
param(
    [string]$WorkDirectory = '',
    [string]$OutputDirectory = ''
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$authority = '9620cc73f9c8e0ad003c514a5d3748f29611c4c0'
$expectedPdfSha256 = 'BF538D5E1994A7A7600703C9D24616696F77E43E9312FB51078095FF0C963C0A'
$repoRoot = Split-Path -Parent $PSScriptRoot
$localeSource = Join-Path $repoRoot 'source\locale\id'

if (-not $WorkDirectory) {
    $WorkDirectory = Join-Path ([IO.Path]::GetTempPath()) ('openlogic-id-' + [guid]::NewGuid().ToString('N'))
}
if (-not $OutputDirectory) {
    $OutputDirectory = Join-Path $repoRoot 'output'
}

New-Item -ItemType Directory -Path $WorkDirectory -Force | Out-Null
New-Item -ItemType Directory -Path $OutputDirectory -Force | Out-Null

$checkout = Join-Path $WorkDirectory 'OpenLogic'
if (Test-Path -LiteralPath $checkout) {
    throw "Refusing to overwrite existing checkout: $checkout"
}

git clone --filter=blob:none --no-checkout https://github.com/OpenLogicProject/OpenLogic.git $checkout
if ($LASTEXITCODE -ne 0) { throw 'git clone failed' }
git -C $checkout checkout --detach $authority
if ($LASTEXITCODE -ne 0) { throw 'authority checkout failed' }

$observed = (git -C $checkout rev-parse HEAD).Trim()
if ($observed -cne $authority) { throw "authority mismatch: $observed" }

$targetLocale = Join-Path $checkout 'locale\id'
New-Item -ItemType Directory -Path $targetLocale -Force | Out-Null
Copy-Item -Path (Join-Path $localeSource '*') -Destination $targetLocale -Recurse -Force

Push-Location $targetLocale
try {
    latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error open-logic-complete-id.tex
    if ($LASTEXITCODE -ne 0) { throw 'latexmk failed' }
    Copy-Item -LiteralPath 'open-logic-complete-id.pdf' -Destination (Join-Path $OutputDirectory '00_OPENLOGIC_id_COMPLETE_LINKED_READER_OLP-0722.pdf') -Force
} finally {
    Pop-Location
}

$pdf = Join-Path $OutputDirectory '00_OPENLOGIC_id_COMPLETE_LINKED_READER_OLP-0722.pdf'
$hash = (Get-FileHash -LiteralPath $pdf -Algorithm SHA256).Hash
Write-Output "Built $pdf"
Write-Output "SHA-256 $hash"
if ($hash -cne $expectedPdfSha256) {
    Write-Warning "Build succeeded but PDF bytes differ from the frozen release. Compare toolchain metadata and render before claiming byte identity."
}
