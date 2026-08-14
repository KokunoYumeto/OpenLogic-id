# Open Logic Project -> Bahasa Indonesia: complete local checkpoint

Checkpoint date: 2026-08-14  
Status: `COMPLETE_FROZEN_CLOSURE_LOCAL`  
Publication status: not committed, pushed, released, or externally announced

## Scope and authority

This checkpoint closes the complete declared English Open Logic Project
content corpus at frozen commit
`9620cc73f9c8e0ad003c514a5d3748f29611c4c0` into independent Bahasa
Indonesia (`id-ID`). The controlling closure manifest is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\OPENLOGIC_CLOSURE_MANIFEST_20260812.csv`

The source/translation repository is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic`

The closure has 722 units. All 722 Indonesian target files exist; the
continuation remainder is zero and there is no next translation cursor for
this frozen commit. Later upstream changes require a separately declared
delta cycle and must not rewrite this source identity silently.

## Exact source and target census

- Source files: 722; 3,051,826 bytes; 75,578 physical lines.
- Indonesian target files: 722; 3,222,301 bytes; 77,789 physical lines.
- Missing target files: 0.
- English source-hash mismatches against the manifest: 0.
- Per-unit source/target inventory:
  `C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\OPENLOGIC_ID_COMPLETE_SOURCE_INVENTORY_20260814.csv`
  (722 rows; 252,486 bytes; SHA-256
  `964a274b418c06c99130ad33e8326629d5c35bf677d7c9a6166c19a6f91a033b`).
- Inventory replay: 722/722 target hashes passed; zero missing or mismatched
  files.
- Deterministic aggregate SHA-256 of the 722 live target rows:
  `3c5a420771cf6a5119357d04471089797b7a8ab22c741d0d49d0178fb1175c33`.
  The aggregate hashes UTF-8 rows in stable order of
  `closure_id<TAB>target_path<TAB>target_sha256<TAB>bytes<TAB>line_count<LF>`.

The final closure replay is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\OPENLOGIC_ID_COMPLETE_CLOSURE_REPLAY_20260814.json`

It is 3,169 bytes with SHA-256
`9a4d4b42140108666db2a50dd26868f6f70d7295e672cf3dc5a51bc2f6fb6d1b`.
It reports zero missing targets, source-hash mismatches, inventory-hash
mismatches, control-character files, brace-delta mismatches, or localized
`\olfileid` policy failures. Its nonempty difference lists are explicit
review surfaces: one active environment-sequence difference, fourteen
reference/label/citation/import/asset sequence differences, and sixty-five
semantic-token-base differences. They represent localized grammar, declared
source repairs, and reviewed structural corrections rather than silent
fallback; the exact closure IDs remain in the JSON.

## Complete reader and build

Driver:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id\open-logic-complete-id.tex`

- Bytes: 2,202.
- SHA-256: `0eed9355caa7b96ffb6a6ad00e50db8aaa955e23fc5e5e98d56f772efa529c0a`.

Reader PDF:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id\open-logic-complete-id.pdf`

- Pages: 1,116.
- Bytes: 5,591,857.
- SHA-256: `fe6174affbb3174cec813630e4d7608acdafa89fe044bffc486b62e66e6a161c`.
- Format: PDF 1.5, US Letter, unencrypted, no forms or JavaScript.

Exact final build command, run from `locale\id`:

```powershell
latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error open-logic-complete-id.tex
```

Latexmk/pdfTeX exited 0 and converged. The final build log is 2,384,153
bytes, SHA-256
`74cd54fdc23d0ff30d4daabf0a32832d05115889a0fff68e79cf0a2ce02e2937`.
It contains zero fatal errors, undefined reference/citation reports, or
missing-file/missing-glyph reports. It retains 557 overfull hbox warnings
(maximum 87.84541 pt), 22 underfull hbox warnings, and 38 underfull vbox
warnings. These warnings are preserved adverse evidence, not erased.

## Extraction, fonts, and render review

Final text extraction:

`C:\Users\Floris\Documents\interlanguage\tmp\pdfs\openlogic-id-complete\open-logic-complete-id-footer-fixed.txt`

- Bytes: 2,288,540.
- Lines: 47,036.
- SHA-256: `dd22475047913aa92c23e51b6f04a9c5b6388550d930ce94fbbd624c53f42468`.
- Zero replacement glyphs, `??`, `Undefined`, semantic-token markup,
  OLP control-command leakage, placeholders, or stale
  `Release: (None) ((None))` footers.
- The deterministic Indonesian revision footer occurs on the expected 1,016
  running pages.

All 29 PDF fonts are embedded. Twenty-six have Unicode maps. Three inherited
Type 3 mathematical fonts lack ToUnicode. The document is searchable but is
not structurally tagged (`Tagged: no`); it is therefore not described as
fully accessible.

All 1,116 pages were rendered at 144 dpi (1,224 x 1,584 pixels) and reviewed
in nonoverlapping ranges 1--275, 276--550, 551--825, and 826--1,116. Page
bodies passed for clipping, overlap, missing content, black boxes, broken
glyphs, damaged formulas/tables/diagrams, malformed headings, and visible
English UI fallback. The first pass found one global footer defect:
`Release: (None) ((None))`. The driver now binds the running footer to the
frozen source as `Revisi sumber: 9620cc7 (12-07-2026)`.

The corrected PDF was rerendered in full. Pixel comparison with the reviewed
body found 100 identical no-footer pages and 1,016 changed running pages. All
changed pixels were confined to raster rows 1,380--1,397; zero pages changed
outside the declared footer band 1,370--1,400. Final full-resolution checks on
pages 276, 551, 825, and 1,100 confirmed the corrected footer is legible and
unclipped.

## Editable support and provenance hashes

- `locale\id\open-logic-config.sty`: 12,363 bytes; SHA-256
  `671cb87683292cc1baa4c9bbfd91f248757abb04986ab18f7ce6c2341c3f1e70`.
- `locale\id\README.md`: 14,902 bytes; SHA-256
  `4dc8ace774a3a0a34cabbe2d143370e5b7783c5ddd7da69bed04e0a2d6b39858`.
- `locale\id\TRANSLATION_STATUS.md`: 45,309 bytes; SHA-256
  `6fe96de25132f811c4aefa7755b8a111f46adf83b60d911eacd25882e33119f6`.
- `locale\id\BUILD.md`: 68,429 bytes; SHA-256
  `992a658b42f62901ba07c71a277cdce053d3cc4f4dab22297ee61efb58dc6c18`.
- `locale\id\MAINTENANCE.md`: 3,370 bytes; SHA-256
  `7335a0b108f2a924896f72e14a75578bb9a9b1bc25e4a1c012433a3000ecdb28`.
- `locale\id\ATTRIBUTION_AND_CHANGES.md`: 9,232 bytes; SHA-256
  `91ec15d9a7a8f9aa5e9f88b3105e4f112a708dbb5461888aae0de7f30e9da47d`.
- `locale\id\TERMINOLOGY_AND_ADVERSE_LEDGER.csv`: 85,945 bytes;
  SHA-256
  `041894e1963371569155e5ff0cf953a5f51907a866cd034c337fad648d5dd7df`.

Batch-specific structural replay scripts, independent review receipts,
correction dispositions, and explicit retractions remain in `locale\id` and
`..\_control`. Later preparation of a concise upstream issue must read those
source-backed records and the translated diffs; it must not infer issue claims
from conversational memory.

## Caveats, supersession, and custody

- English is the semantic authority. Bahasa Indonesia is independent from
  Malaysian Malay.
- Source-bound AI production and independent AI replay are the operational
  authority for this checkpoint. No human/native review or community
  certification is claimed.
- The edition is complete only for the declared frozen 722-file closure; no
  claim is made about later upstream commits.
- Open Logic Project endorsement is not implied.
- The local preliminary PDFs with SHA-256 prefixes `a38b4023` and `25e2d74a`
  are superseded by the final PDF above. Neither was public.
- No public file or checkpoint is superseded because nothing in this final
  completion tranche was committed, pushed, uploaded, or released.
- No Git command was run during final admission. Public GitHub/Zenodo custody
  remains outside this producer task and requires a separately authorized
  archive handoff.
