# Open Logic Bahasa Indonesia — Arithmetization independent review

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Closure: `OLP-0041` through `OLP-0048`, eight content TeX files  
English root: `C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\content\sets-functions-relations\arithmetization`  
Indonesian root: `C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id\content\sets-functions-relations\arithmetization`

The frozen commit is an ancestor of the working branch, and each English hash
below matches `OPENLOGIC_CLOSURE_MANIFEST_20260812.csv`. English is the semantic
authority; the Indonesian files are an independent `id-ID` translation. This
receipt admits one bounded batch, not the complete Open Logic corpus.

## Source and target binding

Byte counts are filesystem lengths. Word counts use TeXcount 3.1.1 with
`texcount -sum -1 -utf8`, each file counted once and without recursive imports.

| ID | Source path | Source SHA-256 | Source bytes / words | Target path | Target SHA-256 | Target bytes / words |
|---|---|---|---:|---|---|---:|
| OLP-0041 | `content/sets-functions-relations/arithmetization/arithmetization.tex` | `05f8775a82c294927a6195ae372c1910e4777909fe8ad2aaa9cbf6dea566fe24` | 575 / 36 | `locale/id/content/sets-functions-relations/arithmetization/arithmetization.tex` | `c1a57a6b0d56c1ba47ffab81453b3f301cd25cb517b714d219f0c7ff8a59a904` | 549 / 33 |
| OLP-0042 | `content/sets-functions-relations/arithmetization/integers.tex` | `f93b142146b9527128437355d7e3922204eede2ca9c75a941d3c09a9a848ce77` | 5,572 / 542 | `locale/id/content/sets-functions-relations/arithmetization/integers.tex` | `d7693cd791af2712b452dcc5ed0a644b393696a8de7073d2f5b45864f2459843` | 5,886 / 471 |
| OLP-0043 | `content/sets-functions-relations/arithmetization/rationals.tex` | `7140495368042fcbc55907e6ee568c5bc8b7066e44a01a50cbf4202acebe71d2` | 3,255 / 286 | `locale/id/content/sets-functions-relations/arithmetization/rationals.tex` | `772b9a8ee465529c37bf9149f2ed17d23a1f1e4a0f87dfdfae741e12f71d6340` | 3,666 / 268 |
| OLP-0044 | `content/sets-functions-relations/arithmetization/reals.tex` | `3df30161417b836178ff701aa3d778b9ec7c1ba8e3a8a54f98b5584a7960f453` | 4,654 / 553 | `locale/id/content/sets-functions-relations/arithmetization/reals.tex` | `49cad3492e1c9beaaa2773969dce274ffc8c248a96b872825baef99d369a0a82` | 5,109 / 513 |
| OLP-0045 | `content/sets-functions-relations/arithmetization/cuts.tex` | `e7cb1029bcb0f0f1ac677c005af8d4e6a10df84bfff50c7483447b972324b44c` | 5,825 / 600 | `locale/id/content/sets-functions-relations/arithmetization/cuts.tex` | `bb62b9e4d22b80a188150420a291988d4d53e7128b869f4ba7f3c300cd6e235c` | 6,737 / 571 |
| OLP-0046 | `content/sets-functions-relations/arithmetization/reflections.tex` | `01032be342b6892c970733acf0b553216c39c5e864c0378d25fea8c5eaa11ead` | 5,326 / 673 | `locale/id/content/sets-functions-relations/arithmetization/reflections.tex` | `dc1fd93399e4e1742dce91b4c1bd0fe76b578639311d9548ed6bdc02e2acdf0b` | 6,177 / 630 |
| OLP-0047 | `content/sets-functions-relations/arithmetization/checking-details.tex` | `d791c146f159c8e43368c12cd1a10e61a53f501baf9f3d2c606c7bd589c0ae01` | 8,707 / 839 | `locale/id/content/sets-functions-relations/arithmetization/checking-details.tex` | `35a61f27d3b79f8d0bfc9dbc0ecdefdcd0680ffa674387965a9e4fe51697a8ee` | 9,363 / 749 |
| OLP-0048 | `content/sets-functions-relations/arithmetization/cauchy.tex` | `35d0a39913340eadcab7fb9d7742b56aef0d0f29868cd65eeca9dc53694e8ac2` | 10,928 / 1,354 | `locale/id/content/sets-functions-relations/arithmetization/cauchy.tex` | `c83d8ad89dfb297e2a76eb109480da2c3cb5f109d1a177c316447638be8c7465` | 12,067 / 1,234 |
| **Total** | **8 files** | — | **44,842 / 4,883** | **8 files** | — | **49,554 / 4,469** |

## Independent semantic reviews

Two independent read-only AI reviews compared the complete eight-file target
against the frozen English authority.

1. **Review A:** after the recorded corrections, no material
   translation-introduced semantic defect remained. The review identified and
   resolved the frozen source's reversed rational difference at
   `rationals.tex:53-55` / target `rationals.tex:55-57`, the invalid
   boundedness-to-nonemptiness inference at `cuts.tex:59-68` / target
   `cuts.tex:62-72`, the malformed real-zero notation at `cuts.tex:88-95` /
   target `cuts.tex:95-102`, and the Indonesian rigor-register wording at
   target `reals.tex:73-76`.
2. **Review B:** replayed every paragraph in `OLP-0041`–`OLP-0048`. It found
   no omission, untranslated reader-facing prose, or target-origin polarity,
   quantifier, or scope drift. It verified Review A's corrections and the
   additional Cauchy repairs below. Its remaining mathematical findings are
   inherited upstream defects or proof gaps, preserved in the adverse section;
   they are not translation defects.

Neither reviewer edited the files. Dispositions were applied by the sole
writer and independently rechecked by deterministic replay.

## Path-scoped correction normalizations and assertions

`locale/id/qa_arithmetization_batch_replay.ps1` does not rewrite the English
tree. It applies exactly eleven in-memory, path-unique source normalizations
before structural comparison and asserts twelve exact corrected target forms.
Any missing, duplicate, or unrelated divergence makes the replay fail.

| Replay key | Exact source / target location | Disposition |
|---|---|---|
| `rationals/order-difference-orientation` | source `rationals.tex:53-55`; target `rationals.tex:55-57` | Correct `r-s` to `s-r`, consistent with the order definition. Source normalization 1; target assertion 1. |
| `reals/principal-square-root-comment` | source `reals.tex:24`; target `reals.tex:25` | Correct the hidden note: `sqrt(2)` denotes the principal positive root, not both roots. Source normalization 2; target assertion 2. |
| `reals/minimal-pair-premise` | source `reals.tex:30-32`; target `reals.tex:31-34` | State the least-pair premise needed by the geometric descent, not merely an irreducible fraction. Source normalization 3; target assertion 3. |
| `cuts/nonempty-union-premise` | source `cuts.tex:59-68`; target `cuts.tex:62-72` | Infer that a member cut exists from `S` being nonempty, not from boundedness. Source normalization 4; target assertion 4. |
| `cuts/real-zero-notation` | source `cuts.tex:88-95`; target `cuts.tex:95-102` | Replace malformed `0^\mathbb{R}` with `0_\Real`. Source normalization 5; target assertion 5. |
| `cauchy/nth-decimal-digit` | source `cauchy.tex:28-31`; target `cauchy.tex:28-31` | Say `d(n)` is the digit in the nth decimal place, not the place itself. Source normalization 6; target assertion 6. |
| `cauchy/noncircular-zero-difference` | source `cauchy.tex:101-106`; target `cauchy.tex:99-103` | Replace the premature “same limit in the sense of the Cauchy-sequence definition” claim with the noncircular fact that the difference tends to zero. Source normalization 7; target assertion 7. |
| `cauchy/equivalence-classes-not-relations` | source `cauchy.tex:109-125`; target `cauchy.tex:107-123` | Real numbers are identified with equivalence classes, not equivalence relations. Source normalization 8; target assertion 8. |
| `cauchy/real-zero-notation` | source `cauchy.tex:149-154`; target `cauchy.tex:148-154` | Positivity compares a real equivalence class with `0_\Real`, not `0_\Rat`. Source normalization 9; target assertion 9. |
| `cauchy/compare-embedded-class` | source `cauchy.tex:181-185`; target `cauchy.tex:181-186` | Compare `q_\Real` with the class `\equivrep{r}{}`, not raw sequence `r`. Source normalization 10; target assertion 10. |
| `cauchy/gap-at-most-halved` | source `cauchy.tex:210-213`; target `cauchy.tex:211-214` | The recursive gap is at most halved; an equality branch may collapse it to zero. Source normalization 11; target assertion 11. |
| `reals/rigorous-register` | source `reals.tex:72`; target `reals.tex:73-76` | Assert the fluent and exact Indonesian phrase `sepenuhnya ketat secara matematis`; no English-source normalization. Target assertion 12. |

## Preserved upstream adverse evidence

These findings remain in the frozen English source and, where semantic fidelity
requires it, in the Indonesian target. They are explicitly not silently
certified as mathematical repairs.

| Severity | Exact path and lines | Finding / disposition |
|---|---|---|
| Major | source `cauchy.tex:159-170`; target `cauchy.tex:159-170` | The theorem and problem say raw Cauchy sequences form an ordered field; the field is formed by their `\Realequiv` equivalence classes. Preserved as an inherited source defect for a later source-correction decision. |
| Major | source `cauchy.tex:176-185`; target `cauchy.tex:173-186` | `S` is called a set of sequences although the order and upper-bound statements operate on equivalence classes. The isolated comparison with raw `r` was repaired, but the larger type ambiguity remains adverse. |
| Major | source `cauchy.tex:139-154`; target `cauchy.tex:137-154` | Arithmetic and order are defined on representative functions without supplying representative-independence proofs; the prose acknowledges well-definedness only for the order. Preserved as an upstream proof gap. |
| Major | source `checking-details.tex:18-125`; target `checking-details.tex:18-128` | The ring/order checks do not prove that integer `+`, `times`, and `leq` are independent of the chosen equivalence-class representatives. Preserved as an upstream proof gap. |
| Major | source `rationals.tex:47-67` and `checking-details.tex:127-143`; target `rationals.tex:48-70` and `checking-details.tex:130-148` | The corresponding representative-independence proof is also omitted for rational operations and order. Preserved as an upstream proof gap. |
| Material | source `checking-details.tex:158-168`; target `checking-details.tex:164-175` | The proof asserts that `alpha+beta` is a proper subset of the rationals without giving the rational upper-bound argument needed for properness. Preserved as an upstream proof gap. |
| Major | source `cuts.tex:90,93-94` and `checking-details.tex:170-173`; target `cuts.tex:97,100-101` and `checking-details.tex:177-180` | Subtraction and division formulas are commented out, while the later checking section invokes `alpha-beta` and `alpha/beta`; division is therefore undefined in the active source. Preserved as an upstream definition gap. |
| Material | source `checking-details.tex:184-203`; target `checking-details.tex:192-211` | The no-maximum proof for the proposed `sqrt(2)` cut explicitly handles positive `p`; the easy `p <= 0` case is unstated. Preserved as an upstream proof gap. |

## Structural, build, extraction, and render evidence

- Deterministic replay: PASS with the exact output:

  `ARITHMETIZATION_BATCH_REPLAY_OK files=8 checks=120 source_corrections=11 target_corrections=12 upstream=9620cc73f9c8e0ad003c514a5d3748f29611c4c0 closure=OLP-0041..OLP-0048`
- Clean `latexmk` build: exit 0.
- Combined PDF: `locale/id/arithmetization-id.pdf`, 79 pages, 539,582
  bytes, SHA-256
  `e938bf09813d45a82516d7646b120358c113337d9c7bdaa8a1a607a36323a1d7`.
- Build log: no fatal errors, undefined references or citations, multiply
  defined labels, or missing glyphs. Fifteen overfull boxes remain, maximum
  5.66658 pt; one underfull hbox in the bibliography and one underfull vbox
  remain. Exact-resolution inspection found them visually harmless.
- Extracted text: 188,162 bytes; zero unresolved markers and zero English
  environment/reference labels.
- Render: pages 60–79 were rendered at 144 dpi and all twenty pages were
  inspected, including dense originals. No clipping, overlap, formula loss,
  broken glyph, blank output, or margin loss was found.

## Admission boundary

Result: `OLP-0041`–`OLP-0048` is admitted as a real contiguous Indonesian
production batch. Whole-corpus coverage is only **48/722**; **674 files remain**.
This receipt does not call the corpus complete, certified, or fully reviewed.
The next deterministic cursor is `OLP-0049`,
`content/sets-functions-relations/infinite/infinite.tex`.
