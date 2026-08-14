$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$errors = [System.Collections.Generic.List[string]]::new()

$required = @(
  'README.md', 'CITATION.cff', '.zenodo.json', 'LICENSE',
  'reader\00_OPENLOGIC_id_COMPLETE_LINKED_READER_OLP-0722.pdf',
  'source\README.txt', 'source\locale\id\open-logic-complete-id.tex',
  'source\locale\id\open-logic-config.sty',
  'source\locale\id\open-logic-locale.sty',
  'source\locale\id\TRANSLATION_MANIFEST.csv',
  'source\locale\id\TARGET_SHA256SUMS.txt',
  'evidence\SOURCE_AUTHORITY.json', 'evidence\COMPONENT_COVERAGE.tsv',
  'evidence\QA_STATE.json', 'evidence\UNRESOLVED_ITEMS.tsv',
  'evidence\ARTIFACT_SHA256.tsv', 'evidence\REVIEW_COVERAGE_0722.md',
  'evidence\DATACITE_RELATIONS.json', 'evidence\DOI_IDENTITY.json',
  'build\BUILD.ps1'
)
foreach ($rel in $required) {
  if (-not (Test-Path -LiteralPath (Join-Path $root $rel) -PathType Leaf)) {
    $errors.Add("MISSING $rel")
  }
}

foreach ($jsonRel in @('.zenodo.json','evidence\SOURCE_AUTHORITY.json','evidence\QA_STATE.json','evidence\DATACITE_RELATIONS.json','evidence\DOI_IDENTITY.json')) {
  try { Get-Content -LiteralPath (Join-Path $root $jsonRel) -Raw | ConvertFrom-Json | Out-Null }
  catch { $errors.Add("INVALID_JSON $jsonRel") }
}

$artifactRows = Import-Csv -LiteralPath (Join-Path $root 'evidence\ARTIFACT_SHA256.tsv') -Delimiter ([char]9)
foreach ($row in $artifactRows) {
  $artifact = Join-Path $root ($row.relative_path -replace '/', '\')
  if (-not (Test-Path -LiteralPath $artifact -PathType Leaf)) {
    $errors.Add("ARTIFACT_MISSING $($row.relative_path)")
    continue
  }
  $item = Get-Item -LiteralPath $artifact
  if ($item.Length -ne [long]$row.bytes) {
    $errors.Add("ARTIFACT_BYTES $($row.relative_path)")
  }
  $artifactHash = (Get-FileHash -LiteralPath $artifact -Algorithm SHA256).Hash
  if ($artifactHash -cne $row.sha256) {
    $errors.Add("ARTIFACT_HASH $($row.relative_path)")
  }
}

$content = Get-ChildItem -LiteralPath (Join-Path $root 'source\locale\id\content') -Filter '*.tex' -File -Recurse
if ($content.Count -ne 722) { $errors.Add("CONTENT_TEX_COUNT expected=722 observed=$($content.Count)") }

$coverage = Get-Content -LiteralPath (Join-Path $root 'evidence\COMPONENT_COVERAGE.tsv')
if (($coverage.Count - 1) -ne 722) { $errors.Add("COVERAGE_ROWS expected=722 observed=$($coverage.Count - 1)") }

$manifest = Import-Csv -LiteralPath (Join-Path $root 'source\locale\id\TRANSLATION_MANIFEST.csv')
if ($manifest.Count -ne 722) { $errors.Add("TRANSLATION_ROWS expected=722 observed=$($manifest.Count)") }
foreach ($row in $manifest) {
  $relative = $row.target_path -replace '^locale/id/',''
  $target = Join-Path (Join-Path $root 'source\locale\id') ($relative -replace '/','\')
  if (-not (Test-Path -LiteralPath $target -PathType Leaf)) { $errors.Add("TARGET_MISSING $($row.closure_id)"); continue }
  $hash = (Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant()
  if ($hash -cne $row.target_sha256.ToLowerInvariant()) { $errors.Add("TARGET_HASH $($row.closure_id)") }
}

$reader = Join-Path $root 'reader\00_OPENLOGIC_id_COMPLETE_LINKED_READER_OLP-0722.pdf'
if ((Get-Item -LiteralPath $reader).Length -ne 5593664) { $errors.Add('READER_BYTES') }
if ((Get-FileHash -LiteralPath $reader -Algorithm SHA256).Hash -cne 'BF538D5E1994A7A7600703C9D24616696F77E43E9312FB51078095FF0C963C0A') { $errors.Add('READER_HASH') }

$placeholderHits = @(Get-ChildItem -LiteralPath $root -Recurse -File |
  Where-Object Name -notin @('validate_release.ps1','03_OPENLOGIC_id_SHA256_MANIFEST_OLP-0722.txt') |
  Select-String -Pattern 'REPLACE_' -SimpleMatch)
if ($placeholderHits) { $errors.Add("UNRESOLVED_PLACEHOLDERS $($placeholderHits.Count)") }

$forbidden = @(Get-ChildItem -LiteralPath $root -Recurse -File | Where-Object {
  $_.Name -match '\.(aux|log|fls|fdb_latexmk|synctex|tmp)$' -or
  $_.FullName -match '[\\/]\.git([\\/]|$)' -or
  $_.Name -match '(token|credential|secret)'
})
if ($forbidden) { $errors.Add("FORBIDDEN_FILES $($forbidden.Count)") }

if ($errors.Count) {
  $errors | ForEach-Object { Write-Error $_ }
  exit 1
}
Write-Output 'PASS: 722/722 sources, reader identity, metadata JSON, coverage, and public-tree exclusions verified.'
