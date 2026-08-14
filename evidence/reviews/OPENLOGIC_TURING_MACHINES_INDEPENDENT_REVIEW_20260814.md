# Open Logic → Bahasa Indonesia — Turing Machines admission receipt

Date: 2026-08-14  
Scope: `OLP-0252` through `OLP-0273` (complete `content/turing-machines` part)  
Authority: OpenLogicProject/OpenLogic commit `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Language: Bahasa Indonesia (`id-ID`), independently maintained from Malaysian Malay  
Result: **PASS — 22 translated files admitted; cumulative closure 273/722; 449 remain**

## Exact continuation

The gap-free translated boundary is `OLP-0001` through `OLP-0273`. The next
ordered unit is `OLP-0274`,
`content/incompleteness/incompleteness.tex`, frozen source SHA-256
`a35dd35ed4de8a64ba4bbe335c420d98148bae58c83bf834d39b029de1a7d1e2`.

## Frozen target bindings

| ID | Target bytes | Target SHA-256 |
|---|---:|---|
| OLP-0252 | 261 | `80c4ddd9440613e41ded07a6cfcc9b7d709886ed22a9567cbc2997201e309bb6` |
| OLP-0253 | 496 | `117aa24ef075838ae0bc97fbf18c7d12bef2444f56ec5721c6d92a5f8b75f538` |
| OLP-0254 | 7,051 | `f0fc9bead6ce606033ba05d23545e1fff227b825b1e23f775f3e92f1556ecce6` |
| OLP-0255 | 13,115 | `f53b4c95ec85a1f40109e23e8bbb75646546e77daf5aeae3cb0d011ca2a240c0` |
| OLP-0256 | 2,402 | `3f3a3700eee9ef6b73907e4035898e4bbf941efd7d7683a5c373bb3d5ba114d9` |
| OLP-0257 | 4,415 | `2abc2e83168c673da1b9a735d4e01f716c45201e9015743cc4beb80a69025a4a` |
| OLP-0258 | 11,044 | `b588f924d26c4a6eedc4ce886312b34f9708d6a96db9dc786813e948068a8635` |
| OLP-0259 | 3,255 | `89c236dbeff826699499b423ced8befae44d7e7d1bbffdaa5a1b5d59dd07afbb` |
| OLP-0260 | 4,286 | `fbbb656fa67e4377ae974c13956eaa4cd35938b6a3cfadf81053d5fb70960fc7` |
| OLP-0261 | 8,650 | `9d022fd29ed78d54e1d0cd1ccf16421f400cd6bee4249c7fe27d67c9c8582630` |
| OLP-0262 | 4,908 | `4613bcb1ea951da2fa2fb539a654691459ffd3f669495e2a6e8772e233cae8ce` |
| OLP-0263 | 2,210 | `93ee8c10196cb8cff19cee1613189e10811d1c855448767b2c3663ded3c2ef7a` |
| OLP-0264 | 460 | `612f65f9a2f04ed147f93f197ae44f38b222755a2661d99b5e5ceb656b1ce7ee` |
| OLP-0265 | 5,687 | `54f1c6a8dfe344116bb41e30fbe19cdb459617550c0a291ef4685ca9b3b0ac33` |
| OLP-0266 | 7,493 | `fb11c534b017e9c6cb4b3ba3722fde0a82b7adce5383466147b8c5bf58f4e338` |
| OLP-0267 | 7,363 | `0ada2145660d9194d2a5314a93dde6eaf909fce841f9159ccd5367c89b3f56fb` |
| OLP-0268 | 6,588 | `f6b945b7bc25ed63d6c5e711bf2464cf4fb27b5bff73f0d8facef234b642ff8c` |
| OLP-0269 | 2,539 | `0996246d4a9a39a8dda9f1d08db9ca1cc6e364ce51871c3135d4041bc65a87e4` |
| OLP-0270 | 8,390 | `93c7d554d5241fd42bca8f748d83eb81d82f4037021930392e2d4e54040103d3` |
| OLP-0271 | 15,086 | `212dc477c735aff0267431a8e61673c89a5ce646ff43d3feaf22a94948635eb5` |
| OLP-0272 | 4,546 | `2edca3379f026446d5f9fef787833a1fa11b4413ab5b42e995d5eefe31c3d57d` |
| OLP-0273 | 12,167 | `63113eec71e48783aeaf39d5b1323d74b7c033f40ade9458bd37e6db392d4cf5` |

Aggregate target bytes: 132,412. Target-binding digest:
`5b8ce0d5fb8495535cdd21ae6dab0a26346b0562d09590de23a4e3610de368f3`.

## Source, structural, mathematical, and semantic replay

`locale/id/qa_turing_machines_batch_replay.ps1` exits zero with:

`TURING_MACHINES_BATCH_REPLAY_OK files=22 checks=389 closure=OLP-0252..OLP-0273`

- All 22 source hashes match the closure manifest and frozen commit.
- Source-binding digest:
  `df54d88e2e8791c10ae2023e7dda332c635aa4a337049f8e8338503866532485`.
- Ordered totals, source/target: commands 3,037/3,047; environment marks
  428/428; semantic tokens 97/97; stable IDs 22/22; labels 40/40;
  references 60/60; imports 21/21; math spans 1,365/1,364; math environments
  22/22.
- Every semantic-token base used here has an Indonesian locale definition.
- Braces, identifiers, environments, labels, references, imports, control
  bytes, and token grammar pass. The only semantic-token-family change is the
  deliberate `sentence` → `formula` correction for open `A(x,y)` in OLP-0270.
- Full paragraph/formula reread found no omitted reader prose, polarity or
  quantifier reversal, broken transition case, untranslated reader-facing
  English, or unresolved Indonesian target defect.

Replay file: 23,219 bytes; SHA-256
`e6444d3b1ed279a5a5f9051a524da0eb5c9dab2a9d28b1c8dc3bb973ce755595`.

## Exact source corrections retained for later upstream courtesy report

These are path-scoped corrections, not a claim that upstream accepted them:

1. OLP-0255, `machines-computations/representing-tms.tex:88`: “state one”
   conflicts with the diagram/configuration; Indonesian uses state `q_0`.
2. OLP-0257, `configuration.tex:60,84-95`: the input begins right of the
   left-end marker, not left; the run definition now permits finite or infinite
   runs and requires a successor step only where a next configuration exists.
3. OLP-0258, `unary-numbers.tex:55-56`: the addition diagram's `q_0` stroke
   transition is a self-loop on node A, not a transition to node B; the scope
   includes zero and therefore says natural numbers rather than positive ones.
4. OLP-0260, `disciplined-machines.tex:66-68`: the inherited addition-machine
   stroke transition is likewise restored as the node-A self-loop.
5. OLP-0261, `combining-machines.tex:37-43,74-76,97-99,127-129`: the first
   piecewise transition case is restricted to defined `delta(q,sigma)`, making
   the cases disjoint; three inherited node-B loop targets are restored to A.
6. OLP-0270, `undecidability/representing-tms.tex:113-150`: `A(x,y)` is a
   formula with free variables, not a sentence; the left-move frame uses
   `A(x',y)` because the written square is `x'`.
7. OLP-0271, `verification.tex:41,52,95-123,163-168,201-234`: the missing
   theory token, machine name, transition variables, induction scope,
   rewritten-square exclusions, and left-move coordinates are repaired.
8. OLP-0273, `trakhtenbrot.tex:35-48,70-73,112-129,184-200`: the finite-domain
   bound is `max(k+1,len(w))`; machine/theory primes, left-transition
   coordinates, boundary predicate, and model-theory references are repaired.

Target-only corrections include removal of an invalid `[id]` short-title
argument on `olchapter`, normalization of `mendekodekan` and
`ketakterputusan`, stale metadata locators, and restoration of the valid OLP
plural token suffix in OLP-0266. The English block retained in the Trakhtenbrot
source comment is nonreader material and was excluded from reader-residue
claims.

## Build, extraction, fonts, and visual QA

Cumulative driver:
`locale/id/first-order-logic-model-theory-computability-turing-machines-id.tex`
(4,487 bytes; SHA-256
`5096f02050bb5a06338590f1f3797bb892e9d9df9c697841a472051ca3935bf8`).

`latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error`
completed with exit 0. The PDF has 221 pages, 1,188,293 bytes, SHA-256
`c3434bfe0b7e2b89f7fdf808b854961dd1e3c77a9e946924429fa138a76dddd8`.
The final log SHA-256 is
`e0f02c475f96a055556f749a9fd822a585dad35748be42652435e1c294224621`:
zero fatal errors, undefined references, undefined citations, or missing glyphs.
The added tranche contributes 17 overfull and 4 underfull boxes; maximum
overfull is 31.59683 pt. Every affected page was inspected and none clips,
overlaps, loses a margin object, or damages a formula/diagram.

Full extracted text: 477,718 bytes, SHA-256
`6df8a1706c9ab44adee84e6b85f413df2336977c8dee84809a6557bda4a6b850`.
Changed-page extraction (175-221): 97,648 bytes, SHA-256
`2242f822cfdf73f1fc8452aeb4fe3b03de3c55a054a197d14190987f30ef06f5`.
Scans found zero replacement glyphs, `??`, undefined markers, raw LaTeX/OLP
tokens, or English environment labels. The only common-English prose hit in
the changed range is the English title in the bibliography.

The entire 221-page PDF was rendered at 144 dpi. Pages 1-174 are pixel-identical
to the previously admitted 175-page reader. Page 175 is the first changed page
because the old bibliography is displaced. Every page 175-221 was inspected at
the original 1224×1584 render resolution. Visual verdict: PASS—no clipping,
overlap, margin loss, broken glyph, black box, malformed table/diagram/formula,
unexpected blank page, or English reader-interface fallback. All 19 fonts are
embedded; one inherited Type-3 font lacks ToUnicode, but extraction and visual
glyph checks are clean.

## Manifest state

`OPENLOGIC_CLOSURE_MANIFEST_20260812.csv` parses to 722 rows, exactly 273
translated and 449 missing, with first missing row OLP-0274. Manifest SHA-256:
`1bd1646fe755392411b02fe6824b8696009ded460a66c9dd0e39017fa3df17ff`.
No complete-corpus, native-review, upstream-endorsement, or DOI claim is made.
