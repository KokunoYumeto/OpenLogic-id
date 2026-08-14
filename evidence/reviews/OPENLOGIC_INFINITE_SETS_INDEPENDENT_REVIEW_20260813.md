# Open Logic Indonesian Infinite Sets review — 2026-08-13

## Authority and scope

- Frozen English authority: `OpenLogicProject/OpenLogic` commit
  `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`.
- Target: Bahasa Indonesia (`id-ID`), independently localized from Malaysian
  Malay.
- Ordered closure: `OLP-0049` through `OLP-0054`, six files under
  `locale/id/content/sets-functions-relations/infinite/`.
- Next deterministic cursor: `OLP-0055`,
  `content/propositional-logic/propositional-logic.tex`.

| ID | Source path | Source SHA-256 | Target SHA-256 | Words EN/ID |
|---|---|---|---|---:|
| OLP-0049 | `content/sets-functions-relations/infinite/infinite.tex` | `1f4a788f692454adc1a93e2670899f785f45ee9849952ac2f36fce7cdd77dbff` | `5c3dfc0856dab17c0617a6b3fc188442dbb67726764192f130bd7873f78e10a4` | 22/24 |
| OLP-0050 | `content/sets-functions-relations/infinite/hilberts-hotel.tex` | `e9a73caefcc496d7074251a3ac15f66fd577415bd3a531dd23f79375502ee0ed` | `a81da0629916dc0b920f7a77d2cd9ac5f8274af6439a82f36d640127bc55879e` | 268/253 |
| OLP-0051 | `content/sets-functions-relations/infinite/dedekind-algebra.tex` | `9cee716bb8cb3bfd507ed5c17bbd4477d05995af6f8f8d411087793bdaa86036` | `1d68378a390b4de543c8a8f83fe91f73ef58c1c66d1953fb0daa0b972a911da7` | 538/520 |
| OLP-0052 | `content/sets-functions-relations/infinite/dedekind-induction.tex` | `ea5f6c80d70abca6f5598de3e221c2f60524c40cbf533ae8a5336d5bb7186537` | `bb2dce323e32a4b1831b00b885118409f0f89b1a8e45f11b6da85ca3261015e6` | 324/310 |
| OLP-0053 | `content/sets-functions-relations/infinite/dedekinds-proof.tex` | `a7c41cebb6b7b0e2bed0d187777be4ba69fecdb17baa070975a0ca5c5c55b8bf` | `91d6b5d2ea4bd572dc30ff6100c57e8918977c800f59a50e04212e801b7a2dcd` | 858/776 |
| OLP-0054 | `content/sets-functions-relations/infinite/card-sb.tex` | `88534a3f2be736a704ab31343e45933edb9712fa5b4411eb102c0f4a12d656e9` | `001e757715635c0746fa93a84b5677f5db2a47e6f608391be1b3c719b2097b7f` | 403/429 |

Final TeXcount totals are 2,413 English-source words and 2,312 Indonesian
words for this batch; cumulative totals through OLP-0054 are 26,148 and 23,916.

## Independent semantic replay

An independent read-only reviewer compared all six targets paragraph by
paragraph against the frozen English files. It identified one translation
residue, `{iff}`, in `dedekind-algebra.tex`; the target now reads `jika dan
hanya jika`. The final replay found no omitted reader-facing passage and no
translation-introduced polarity, quantifier, scope, or mathematical error.
Labels, references, citations, glossary tokens, environments, and formula
structure agree with the source except for the declared repairs below and
reader-facing translated text.

After semantic review, one sentence was shortened from `Perhatikan bahwa
terdapat sekurang-kurangnya` to `Ada sekurang-kurangnya` to eliminate a
17.92607 pt overfull line. This is a register/layout refinement with unchanged
mathematical content. Structural replay and the complete combined build were
rerun afterward.

## Declared source repairs and preserved adverse evidence

Two exact repairs are confined to `card-sb.tex`:

1. The malformed source consequent in the intermediate proposition is restored
   as `B \approx C`.
2. The source's omitted inclusion `ran(g) \subseteq B` is supplied before the
   inherited reverse-inclusion argument, so the stated equality is actually
   proved.

The following source defects remain visible and are not translation errors:

- the Closure lemma quantifies `o \in A` without binding `A`;
- the definition says “any function” although its existence proof needs an
  endofunction/domain or ambient-set premise.

## Deterministic replay, build, extraction, and render evidence

`locale/id/qa_infinite_batch_replay.ps1` has SHA-256
`c88170c8441ca6f6e2cc251ca63618a3a0eda7c5bed3632faa90b5a3a5b52270` and
returns exactly:

```text
INFINITE_BATCH_REPLAY_OK files=6 checks=115 source_corrections=2 reader_text_exceptions=1 target_corrections=2 adverse_assertions=3 upstream=9620cc73f9c8e0ad003c514a5d3748f29611c4c0 closure=OLP-0049..OLP-0054
```

The combined `infinite-id.tex` build completed with Latexmk 4.88 and MiKTeX
pdfTeX 1.40.29 while automatic installation was disabled. The final PDF is 87
pages, 583,365 bytes, SHA-256
`825d4ae9d41ee7f3243ce922652a2e4b539c124b968192cc43a48f0ca4202618`.
The log has zero fatal errors, unresolved references/citations,
multiply-defined labels, or missing glyphs. It retains eighteen visually
harmless overfull boxes, maximum 6.08615 pt, one underfull bibliography line,
and one inherited underfull vbox.

`pdftotext -layout` produced 208,533 bytes for the complete PDF. Searches found
zero `??`, `Undefined`, or English environment/reference headings. Final pages
78–87 were rendered at 144 dpi and every page was inspected; the chapter title,
Hotel Hilbert diagram, formulas, theorem/proof structure, cross-references,
proof-end marks, and bibliography are legible, with no clipping, overlap,
blank changed page, broken glyph, lost formula, or margin loss. Page 79 was
also inspected at 300 dpi.

No human review is claimed or required for admission. Future corrections remain
welcome as post-admission evidence.
