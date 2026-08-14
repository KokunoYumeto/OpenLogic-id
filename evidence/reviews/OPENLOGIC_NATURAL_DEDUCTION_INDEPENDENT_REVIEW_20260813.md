# Independent review — Open Logic id-ID OLP-0084--OLP-0097

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Scope: the complete fourteen-file chapter under
`content/first-order-logic/natural-deduction/`.

## Review result

An independent read-only AI semantic replay compared every source/target pair
against the final live bytes. After the exact dispositions below it returned
PASS: all fourteen targets preserve source meaning, formulas, quantifiers,
connectives, proof trees, exercises, and structure. No translation-origin
omission, reader-facing English, polarity, scope, mathematical, or material-
register defect remains.

The durable replay script
`openlogic/locale/id/qa_natural_deduction_batch_replay.ps1` passes 225 checks
across all fourteen files. It binds the frozen source and target hashes, 3,082
ordered commands, 362 environment markers, 268 localization tokens, 21 labels,
12 references, 13 imports, 967 mathematical skeletons, and 63 proof/derivation
blocks. Path-scoped source corrections are positively encoded; unrelated
structural drift remains a hard failure.

## Exact target hashes

| ID | Target | Bytes | SHA-256 |
|---|---|---:|---|
| OLP-0084 | `natural-deduction.tex` | 981 | `2827c36a18a38ce94e96c0e9d6c3cfd8707ac210cd4544578d13759fc725d92c` |
| OLP-0085 | `rules-and-proofs.tex` | 2,247 | `d070ac560767c37a11f545cac55ae2b79f105edcf7b18c0d7d377073874102ef` |
| OLP-0086 | `propositional-rules.tex` | 2,438 | `7477693691999b64ef85a17103a0d38687658d7f6b8f884d9c0ec4b03d9745be` |
| OLP-0087 | `quantifier-rules.tex` | 4,103 | `4ebf24041111ba2ef983b4ba86f482fb8a7a68ecfad8d19661d82f3d77a4740e` |
| OLP-0088 | `derivations.tex` | 3,993 | `b562ed11e296111e74d8603e78db2d9530730f933acaced59338064a5a480e53` |
| OLP-0089 | `proving-things.tex` | 11,486 | `069d99c8af43dc287db35c769f82c6e44e691275a9dc96456ec82e06389e2652` |
| OLP-0090 | `proving-things-quant.tex` | 10,061 | `928d581265fc79e95633bc44151c1df984ef2ac4d06916c995b526fb539a230a` |
| OLP-0091 | `proof-theoretic-notions.tex` | 5,475 | `bacfe229b38696e84d8debf870a167cab73b58b60c3ae3f0fa7fa9b760a6d1d9` |
| OLP-0092 | `provability-consistency.tex` | 4,052 | `86d6278f81fdfc0a96cdbc0f1e92e90d32e92afee5ac618ee1b7aa2da4ca130c` |
| OLP-0093 | `provability-propositional.tex` | 3,952 | `477b33231262a1ba133603c32a8426f85536da5d9b619e8748a1c0cf0f4e1cd7` |
| OLP-0094 | `provability-quantifiers.tex` | 1,809 | `b0c7c12f62c8d081213a896b2882ee2da171a092aab4d50cba52decddde9c86b` |
| OLP-0095 | `soundness.tex` | 13,776 | `f80b84001385431cce1809dddb5093ad3e69c37d6a89e58243c30e9f7dd57cfd` |
| OLP-0096 | `identity.tex` | 4,139 | `d3292913ff525b924b0be718fb3a0c3f5215444ff1ed9e12bd0f650b18e3dc0c` |
| OLP-0097 | `soundness-identity.tex` | 1,965 | `c58ab126fc93a20849c2fd626e58ed7e25ca8a2004cabe2d58069b62f99c5143` |

## Exact dispositions

- Quantifier-rule prose now states the actual preceding eigenvariable
  restrictions and limits the closed-term statement to elimination rules.
- `rules-and-proofs.tex` repairs a source category error that called formulas
  sequents; `proof-theoretic-notions.tex` preserves the FOL structure versus PL
  valuation distinction.
- `proving-things.tex` repairs the derivation-conclusion description, a wrong
  branch direction, and a false-introduction label that is negation
  elimination. Sentence-initial token capitalization and the Indonesian bound
  form `subformula` are also rendered correctly.
- `proving-things-quant.tex` restores a missing negation, the complete
  eigenvariable side conditions, and the correct existential-elimination
  macro.
- `provability-consistency.tex` removes a duplicated rule label while retaining
  the discharge marker. `provability-propositional.tex` accurately states that
  implication introduction may discharge zero occurrences and retains the
  source token architecture.
- `soundness.tex` preserves semantic consequence from premises, corrects the
  PL valuation carrier, restores the universal- and negation-elimination rule
  cases, and keeps quantifier scope explicit.
- `identity.tex` repairs malformed nested universal syntax and states the
  freshness/distinctness side conditions. `soundness-identity.tex` makes the
  induction extension and both equality-elimination variants explicit.

## Build, extraction, and visual evidence

`openlogic/locale/id/natural-deduction-id.tex` builds with `latexmk` exit 0 to
27 letter-size pages. Final PDF: 209,663 bytes, SHA-256
`c2ee4b9d2662b986780b2f1580ea4c1c4effe05fb39e4feda54f061370e81704`.
The log contains no fatal error, undefined control sequence/reference/
citation, multiply defined label, or missing glyph. Two inherited package-name
warnings, eight overfull boxes (maximum 24.25922 pt), and one underfull vbox
remain; exact-resolution inspection found no clipping or loss.

`pdftotext -layout` produced 61,952 bytes, SHA-256
`b1f5ebffc5a9a8039c00bcce9093f02aee7ec6e3b59d797a489d69d9d99d0952`,
and 7,220 whitespace-delimited words. Searches found zero unresolved marker,
English environment/reference heading, raw localization token, or named
English technical fallback.

All 27 pages were rendered at 144 dpi and inspected. Pages 25--27 were
reinspected after the deferred-problem layout repair; pages 4, 8, 9, and 19
were inspected at original resolution after the final semantic edits. No
clipping, overlap, blank content page, broken glyph, lost formula, cutoff proof
tree, merged problem heading, damaged hyperlink, or margin loss was found.
The final post-whitespace-cleanup rebuild produced 27 page PNGs byte-identical
to this inspected final render.

TeXcount 3.1.1 reports 5,270 English-source and 4,847 Indonesian words for the
batch. Cumulative counts through OLP-0097 are 42,457 and 38,809.

Next deterministic cursor: OLP-0098,
`content/first-order-logic/tableaux/tableaux.tex`.
