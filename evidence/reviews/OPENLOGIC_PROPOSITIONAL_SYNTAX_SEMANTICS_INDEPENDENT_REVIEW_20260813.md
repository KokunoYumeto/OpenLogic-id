# Independent replay — Open Logic Indonesian OLP-0055--OLP-0062

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Target: Bahasa Indonesia (`id-ID`)

## Exact closure and hashes

| ID | Source path | Source SHA-256 | Target SHA-256 |
|---|---|---|---|
| OLP-0055 | `content/propositional-logic/propositional-logic.tex` | `8cfcb14b29eae3ae53c6ef626987e2323b8c870010e27d52d454296f24452799` | `fbcb8684894f2c907d5b42a0b93a3b568edc30b7fab8f6f39d48217b1f271b4c` |
| OLP-0056 | `content/propositional-logic/syntax-and-semantics/syntax-and-semantics.tex` | `799d1dab63cda19a28c1dbf7097052fb790bbce609aecd5367d2e368decdb18b` | `462431e7b2bce9ecb44ca9b5ee98870a39e2921d78c2e7f2954a968e4aafa195` |
| OLP-0057 | `content/propositional-logic/syntax-and-semantics/introduction.tex` | `2ad06497283fa1399d56862c75caf1a418bb753fbb0195658af9f0c57183a441` | `755779eaec9923d35a349eb526b3af07b9f07b3a20b41e5423bd009f837a4c9d` |
| OLP-0058 | `content/propositional-logic/syntax-and-semantics/formulas.tex` | `8777d77e48e3a41a527b1b737c67e00cb7850f4fa0902ce24846000b40724756` | `102d32ad31976a33e2846eac0c86f6fe5efd2d864ade0a0095cff5b624b77efa` |
| OLP-0059 | `content/propositional-logic/syntax-and-semantics/preliminaries.tex` | `78673f8419aa1f936f1ecc5629c0fa92c74fd4ee3102badf5f389e3d775f48d6` | `df60b0058fd7d79d8b369ebdb98d5ca109093aa2c0ed99badf87e1a4500edb2e` |
| OLP-0060 | `content/propositional-logic/syntax-and-semantics/formation-sequences.tex` | `4057bf6b85c70ad9ee56dc5365b21a1daa0a99550079bdafb1ab16f36b943356` | `72801592ce5a90faf543cf23558731abb1b7239f109821f6bc6edbf2ab3b5777` |
| OLP-0061 | `content/propositional-logic/syntax-and-semantics/valuations-sat.tex` | `d1454e8c2366f3a204a371523f41feacbdc72402f7a3a7ae6635b60b17c90481` | `22b344cb5a7008a0cb27236055077a9fa505e35bf9b4349ef4b39a1512577677` |
| OLP-0062 | `content/propositional-logic/syntax-and-semantics/semantic-notions.tex` | `0167b2bab0dc2a75d011556643190a246d29831244a60bde5515b1b2f431406a` | `1e32925e1d401747f5ac5b73403884083b85efd85f70d708bad9c66369580115` |

The batch contains 2,853 English-source and 2,715 Indonesian TeXcount words,
with each file counted once and imports disabled. Cumulative admitted counts
through OLP-0062 are 29,001 and 26,631 words.

## Structural and mathematical replay

The final source-bound replay passed eight files, 112 comparison groups, and
424 mathematical skeletons. It compares source hashes; ordered commands,
environments, token invocations, labels, references, citations, imports,
assets, URLs and IDs; brace balance; localized `\olfileid` values; and exact
mathematical structure after only the declared path-scoped corrections.

One reader-order exception is deliberate: English `!!^a{denumerable} set` is
rendered in Indonesian noun order as `Himpunan !!a{denumerable}`. No other
silent structural exception is admitted.

Durable replay script:
`openlogic/locale/id/qa_propositional_syntax_batch_replay.ps1`, 19,712 bytes,
SHA-256 `ebc51a72466b9187a67035afa1ef1235c8f80b68fd94a104638eff3c40503ffb`.

## Semantic replay and source corrections

Two independent read-only passes checked every paragraph. The final pass found
no untranslated reader-facing English, omission, polarity reversal, quantifier
drift, scope error, or remaining material register defect. During replay, the
following were corrected and then rechecked:

1. OLP-0057 now states that a formula is a semantic consequence of a set,
   preserving the direction `Gamma entails A` rather than reversing the
   natural-language relation.
2. OLP-0060 repairs the source's length/index mismatch by carrying the final
   sequence index consistently through the strong-induction argument.
3. OLP-0061 keeps the theorem's fixed formula `A`; it does not rebind it as an
   arbitrary new formula inside the conclusion.
4. OLP-0058 moves a period inside the true branch of an `\iftag`, preventing a
   standalone punctuation line when all optional defined-connective tags are
   false.
5. OLP-0058 removes the unmatched closing parenthesis in the source's
   disjunctive definition of implication.
6. OLP-0060 replaces source `\equiv` by the already defined syntactic-identity
   relation `\ident` in the formation-sequence case proof.

The two inaccurate upstream header comments in OLP-0059 and OLP-0060 remain as
non-rendering adverse metadata; their actual file IDs and paths are correct.

## Build, extraction, and visual evidence

Two clean bounded builds prevent untranslated downstream imports while still
rendering all reader-facing material in OLP-0055--0062:

- `propositional-part-id.pdf`: 2 pages, 38,380 bytes, SHA-256
  `9747a415962fa62c0b263965f966cd457fb42b8b8147666bdcf41520237aa2a8`.
- `propositional-syntax-semantics-id.pdf`: 11 pages, 195,778 bytes, SHA-256
  `8e04657dc409e29d59badaa0b9d411e2a633799384777ac58d44654e20294d0c`.

Both `latexmk` runs exited 0 with automatic package installation disabled.
The logs contain no fatal error, undefined reference or citation,
multiply-defined label, missing glyph, or underfull box. The chapter log has
three small overfull boxes, maximum 5.47389 pt; all are visually harmless.

Text extraction produced 779 and 22,282 bytes. It contains no unresolved
marker, English environment/reference heading, token fallback, or standalone
period artifact. All 13 pages were rendered at 144 dpi and inspected at exact
render resolution. The final 11 chapter render PNGs are byte-identical to the
fully inspected post-correction render; the two part pages were independently
inspected. No clipping, overlap, blank content page, broken glyph, lost formula,
damaged table, or margin loss was found.

Human/native review metadata is absent and is not claimed. Admission is based
on frozen-source binding, deterministic replay, independent AI semantic review,
clean builds, extraction checks, visual inspection, and hashes.

## Continuation

The gap-free target boundary is now OLP-0001--OLP-0062, or 62/722 files. The
exact next cursor is OLP-0063,
`content/first-order-logic/proof-systems/proof-systems.tex`.
