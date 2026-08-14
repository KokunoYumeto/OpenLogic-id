# Independent review — Open Logic id-ID OLP-0063--OLP-0068

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Scope: `content/first-order-logic/proof-systems/` through the complete six-file
overview chapter.

## Review result

Two independent read-only AI replays compared every paragraph and the final
live target bytes with the frozen English files. After the dispositions below,
both returned PASS: no remaining reader-facing English, omission, polarity,
quantifier, scope, mathematical, structural, or material-register defect was
found. A final exact-delta replay separately verified the render-driven
`Suatu sistem derivasi` correction and its target hash.

The deterministic replay script
`openlogic/locale/id/qa_proof_systems_overview_batch_replay.ps1` passes 122
checks across all six files: 359 ordered commands, 26 environment markers, 156
localization tokens, five imports, 137 mathematical skeletons, four exact
proof/derivation blocks, and ten localized file IDs. It also binds every
exception below by exact positive and rejected-form assertions.

## Exact target hashes

| ID | Target | SHA-256 |
|---|---|---|
| OLP-0063 | `proof-systems.tex` | `907af9733ac30d4d49d72a40cb7af244e9800ce7ebf7e3785377e24ecd397a31` |
| OLP-0064 | `introduction.tex` | `f0fd9207187515506bd4f7eb6b71e98bf4be578af14d0908eb2649eab7d44f8c` |
| OLP-0065 | `sequent-calculus.tex` | `04fe414e682651cbbf0b1d7aca69f7c533a38f8ae92acd2ab1321ec9199726bf` |
| OLP-0066 | `natural-deduction.tex` | `4200eced3b9252a4a58760382628c530faf282150165ff730373cf0e38508ff2` |
| OLP-0067 | `tableaux.tex` | `4d61a7b695b9eb0ca94a91684fd0f98ffe209439914e7d189ae9dabacfa1781e` |
| OLP-0068 | `axiomatic-deduction.tex` | `ace4b2e3d141b1df2102fd32d6d4cbc286ba4f0abd7ec75d5221f9be24791efe` |

## Dispositions

- General sequent notation now ends the right sequence at `!B_n`, not the
  source's conflicting `!B_m`.
- The false-conjunction tableau rule uses the connective-only
  `\TRule{\False}{\land}`; two truth-conjunction expansion labels use
  `\TRule{\True}{\land}[2]`, not implication labels.
- The tableau subformula claim distinguishes connective rules from first-order
  quantifier rules, which may yield substitution instances.
- Tableau derivability and inconsistency now quantify a finite subset of
  `\Gamma` and every listed assumption, rather than the source's existential
  `some B_i` wording.
- Axiomatic derivability permits the finitely used condition-(2) assumptions
  to be a subset of an arbitrary `\Gamma`; it does not redefine `\Gamma` as
  exactly the used assumptions.
- Natural-deduction prose uses `langkah perantara` and states that the selected,
  labeled occurrences of the assumption are discharged.
- Three English passive token constructions were normalized to grammatical
  Indonesian prose without changing the proof relation.
- Exact PDF inspection exposed the hard-coded English tableau label
  `Assumption`; the locale now renders `Asumsi`.
- Exact PDF inspection also exposed article/compound ordering. Sentence-initial
  technical nouns render with `Suatu`, while the source's “A derivation system”
  is explicitly reordered as `Suatu sistem derivasi`.

## Build and visual evidence

The bounded driver `openlogic/locale/id/proof-systems-overview-id.tex` builds
with `latexmk` exit 0 to eight letter-size pages. Final PDF: 118,822 bytes,
SHA-256 `c8e7475d52cd072d13c0e58467d04976f1bfef976d7e2a9a79b7905e26e94902`.
The log contains no fatal error, undefined control sequence/reference/citation,
multiply defined label, or missing glyph. Three overfull boxes remain (9.2365,
0.67668, and 0.19641 pt); exact-resolution inspection found no clipping or
loss.

`pdftotext -layout` produced 20,256 bytes. Searches found zero `Assumption`,
`Sistem Suatu derivasi`, unresolved marker, English environment/reference
heading, or named English proof-system fallback. All eight pages were rendered
at 144 dpi and inspected at exact render resolution; the two render-driven
correction pages were re-rendered and re-inspected after the final build.

Next deterministic cursor: OLP-0069,
`content/first-order-logic/sequent-calculus/sequent-calculus.tex`.
