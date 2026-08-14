# Independent review — Open Logic id-ID OLP-0069--OLP-0083

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Scope: the complete fifteen-file chapter under
`content/first-order-logic/sequent-calculus/`.

## Review result

An independent read-only AI semantic replay compared every source/target pair
against the final live bytes. After the exact dispositions below it returned
PASS: no translation-origin omission, reader-facing English, polarity,
quantifier, scope, exercise, mathematical, or material-register defect
remained. The authoring pass and deterministic structural replay separately
rechecked every declared correction.

The durable replay script
`openlogic/locale/id/qa_sequent_calculus_batch_replay.ps1` passes 248 checks
across all fifteen files. It binds the frozen source and live target hashes,
3,690 ordered commands, 358 environment markers, 180 localization tokens, 22
labels, 15 references, 14 imports, 1,009 mathematical skeletons, and 58
proof/derivation blocks. Seven correction classes, comprising twelve exact
occurrences, are positively asserted; unrelated structural drift remains a
hard failure.

## Exact target hashes

| ID | Target | SHA-256 |
|---|---|---|
| OLP-0069 | `sequent-calculus.tex` | `72ecfceecadbfd2f7c27ae714acb11d861cfad85e1c5600857499d0cc0521437` |
| OLP-0070 | `rules-and-proofs.tex` | `f6bb912f9390aa07557ee8278b86b7b938ce8657ad3daa0a6bc47e3730607847` |
| OLP-0071 | `propositional-rules.tex` | `2a7041c3ec0d0116cfb5cc7005f49a39be8efc77595584e91a194a14727f0dfd` |
| OLP-0072 | `quantifier-rules.tex` | `beeaaeb5de592e6cb3a47e003f99ea0b3bbb81f70f2f6d854b11e7a3abe7b645` |
| OLP-0073 | `structural-rules.tex` | `746bd301dd001de69368559c86b6228e191dd0a04b186c827e71edd80bdc9071` |
| OLP-0074 | `derivations.tex` | `d20a575a6e89ac8a71c7e008bbc842beb0c3134525a165a1a24f4f0bb327395e` |
| OLP-0075 | `proving-things.tex` | `897a12b7bc254b1324e1e7ec938f697e6643c91124540d7f0216ca22c1e7a466` |
| OLP-0076 | `proving-things-quant.tex` | `35a0d0d6b5aec91b1a2ccfe0bbe98059c00411a1baed4ccc86d15decf869c3cf` |
| OLP-0077 | `proof-theoretic-notions.tex` | `12837032db27238fc42e074d8bdf85b6ba6b93fb69aa3584cf76f33d3d1a3b27` |
| OLP-0078 | `provability-consistency.tex` | `858f7f8d28106db6de7e18e9317efb8a6ccca0b48ebef5c1fd4926b6a14b3f9c` |
| OLP-0079 | `provability-propositional.tex` | `5d42d1262f8ef255df39f99ae13b53bd71c5741a56b18037899ab48d5fd319da` |
| OLP-0080 | `provability-quantifiers.tex` | `7ef331eaa5b0fb31b7008c5f10309b84f807694321e359ffe7cec52fcd61556f` |
| OLP-0081 | `soundness.tex` | `427331d19c0c5c4eca75e4ba260a58ca26f53221713d0672bc2586eb86afcf6b` |
| OLP-0082 | `identity.tex` | `f61e66e89e0b21beba942d90a08b46d26a700955dce5421f63972345c4148f37` |
| OLP-0083 | `soundness-identity.tex` | `33702681c0fbf2e7f3a1eaba470cffb87fc444d3a2dffa19f19354598301f56b` |

## Exact dispositions

- Four frozen right-exchange labels in `proving-things.tex` actually reorder
  the antecedent. The target uses left exchange for precisely those four
  steps; genuine succedent exchanges remain right exchange.
- The De Morgan example in `proving-things.tex` restores the two missing
  negations before the second formula.
- Unfinished upward constructions in `proving-things.tex` are described as
  partial proof-search trees, not complete derivations.
- The `proof-theoretic-notions.tex` editorial identifies the surrounding
  proof system as sequent calculus, not natural deduction.
- The frozen propositional derivation combines `A => A` and `B => B` directly
  under right conjunction despite mismatched left contexts. The target adds
  explicit weakening and exchange so both premises have context `A,B` before
  applying right conjunction.
- The left-conjunction soundness case concludes `A and B, Gamma => Delta`, not
  the source's dropped-antecedent `Gamma => Delta`.
- The cut soundness case uses the sequent `Pi => Lambda`, repairing the
  source's malformed set-difference expression.

Terminology was normalized across the complete chapter to `kalkulus sekuen`,
`keterderivasian`, `keterpenuhan`, `dapat dipenuhi`, `kesahihan`, and
`himpunan bagian`. Invariant formulas, proof trees, rule names, labels,
references, and identifiers remain source-bound except for the seven exact
mathematical/source corrections above.

## Build, extraction, and visual evidence

`openlogic/locale/id/sequent-calculus-id.tex` builds with `latexmk` exit 0 to
26 letter-size pages. Final PDF: 212,888 bytes, SHA-256
`9990d74508d6f1e5eee911001c5ea9417b4bc37969b6f8344e0682bab166613f`.
The log contains no fatal error, undefined control sequence/reference/
citation, multiply defined label, underfull box, or missing glyph. Seven
overfull boxes remain, maximum 5.95644 pt; exact-resolution inspection found
no clipping or loss.

`pdftotext -layout` produced 58,371 bytes and 7,935 whitespace-delimited
words. Searches found zero unresolved marker, English environment/reference
heading, localization-token fallback, or reader-facing English residue. All
26 pages were rendered at 144 dpi and inspected at original render
resolution. Proof trees, equations, hyperlinks, headings, page transitions,
exercise lists, proof-end marks, and margins are legible and complete. Every
font is embedded; the one Type 3 mathematical font renders correctly.

The final post-cleanup rebuild was rendered again at 144 dpi. Every one of its
26 PNG page hashes matched the already inspected render exactly, so the final
PDF bytes introduce no visual delta.

TeXcount 3.1.1 reports 5,455 English-source and 4,912 Indonesian words for the
batch. Cumulative counts through OLP-0083 are 37,187 and 33,962.

Next deterministic cursor: OLP-0084,
`content/first-order-logic/natural-deduction/natural-deduction.tex`.
