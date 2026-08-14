# Open Logic → Bahasa Indonesia: live recovery state

Last rewritten from live disk: 2026-08-14. This file is a recovery
authority, not a progress summary. After any compaction, ignore narrative
memory and re-check every statement below against the named files and hashes.

## Controlling objective

Translate the complete 722-file English Open Logic Project closure into
independent Bahasa Indonesia (`id-ID`). The frozen English authority is
commit `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`. The closure authority is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\OPENLOGIC_CLOSURE_MANIFEST_20260812.csv`

The source and target tree is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic`

No Lean, mathlib, MATLAB, OpenStax, LibreTexts/Austin, DOI, Git, publication,
or cross-session management belongs to the current production loop.
Translation is the dominant loop. Maintenance and checkpoint work occur only
after a substantial boundary, currently full 722-file closure.

## Completion state verified from live disk

Status: `COMPLETE_FROZEN_CLOSURE_LOCAL`.

The direct 2026-08-14 replay found all 722 target files present and zero
English source-hash mismatches. The source closure contains 3,051,826 bytes
and 75,578 physical lines; the Indonesian closure contains 3,222,301 bytes
and 77,789 physical lines. The exact 722-row source/target inventory is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\OPENLOGIC_ID_COMPLETE_SOURCE_INVENTORY_20260814.csv`

Inventory SHA-256:
`964a274b418c06c99130ad33e8326629d5c35bf677d7c9a6166c19a6f91a033b`.
The deterministic live-target aggregate is
`3c5a420771cf6a5119357d04471089797b7a8ab22c741d0d49d0178fb1175c33`.

The final closure replay is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\OPENLOGIC_ID_COMPLETE_CLOSURE_REPLAY_20260814.json`

Replay SHA-256:
`9a4d4b42140108666db2a50dd26868f6f70d7295e672cf3dc5a51bc2f6fb6d1b`.
It records zero missing targets, source/inventory hash mismatches, control
characters, brace-delta failures, or localized file-ID failures. Its explicit
difference lists are preserved review surfaces, not silent omissions.

## Complete reader

Driver:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id\open-logic-complete-id.tex`

Driver SHA-256:
`0eed9355caa7b96ffb6a6ad00e50db8aaa955e23fc5e5e98d56f772efa529c0a`.

Final PDF:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id\open-logic-complete-id.pdf`

- 1,116 pages; 5,591,857 bytes.
- SHA-256:
  `fe6174affbb3174cec813630e4d7608acdafa89fe044bffc486b62e66e6a161c`.
- Converged Latexmk/pdfTeX exit 0.
- Zero fatal, undefined-reference/citation, missing-file, or missing-glyph
  reports.
- All fonts embedded. Searchable, but `Tagged: no`; do not call it fully
  accessible.
- Full text extraction and all-page 144-dpi visual review passed after the
  malformed `Release: (None) ((None))` footer was replaced by the deterministic
  Indonesian frozen-source revision footer.
- Final raster replay checked all 1,116 pages: 100 no-footer pages remained
  pixel-identical and all changes on the other 1,016 pages were confined to
  the footer band.

## Durable completion receipt and recovery rule

The controlling completion receipt is:

`C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\OPENLOGIC_ID_COMPLETE_CHECKPOINT_20260814.md`

Receipt SHA-256:
`205b82ec8f4f44fc10cefab6680fb254f1c63bf9037e5a7b37815e1e084607d2`.

After any compaction, verify the receipt, inventory, closure replay, driver,
and final PDF hashes from disk. Do not resume translation from a hallucinated
cursor: the frozen 722-file closure has no remaining cursor. Do not start Lean,
mathlib, MATLAB, OpenStax, LibreTexts/Austin, DOI, Git, publication, or an
upstream issue unless Floris explicitly authorizes that separate next action.

No Git command, external publication, upstream contact, or archive upload was
performed in this completion tranche. Batch review receipts and adverse/source
correction evidence remain under `locale\id` and `..\_control`; any later
concise upstream issue must be reconstructed from those files and exact diffs,
not conversational memory.
