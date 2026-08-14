# Open Logic Bahasa Indonesia — independent review: model-theory basics

**Date:** 2026-08-13  
**Disposition:** **PASS — no unresolved Indonesian target finding**  
**Bounded closure:** OLP-0182–OLP-0190 (9 files)  
**Frozen upstream:** `OpenLogicProject/OpenLogic@9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
**Target roots:** `locale/id/content/model-theory/model-theory.tex` and
`locale/id/content/model-theory/basics/`

## Independent disposition and method

The final live bytes were frozen by the sole writer and independently replayed
against both the frozen English files and the 722-row closure manifest. Every
paragraph, definition, theorem, proof, problem, remark, formula, semantic token
and tag in the nine source/target pairs was read. The replay verified source and
target SHA-256 bindings, balanced braces, identical ordered LaTeX-command and
`begin`/`end` sequences, and exact ordered `\ollabel`, `\olref`, and
`\olimport` arguments. Mathematical segments were compared individually;
every non-whitespace divergence was either localized reader prose or one of the
source-bound repairs declared below. A final residue replay found no
`bertempat`, duplicated DLO phrase, raw English `-structure`, placeholder, or
unresolved token-order defect.

No semantic omission, polarity reversal, quantifier loss, relation-direction
error, proof-scope loss, or unexplained mathematical change remains. Human or
native review is not claimed and was not an admission gate for this independent
AI review.

## Frozen bindings

| ID | Source path | Source SHA-256 | Final target bytes | Final target SHA-256 |
|---|---|---|---:|---|
| OLP-0182 | `content/model-theory/model-theory.tex` | `d344ffda1bed36ff693a10b8093066703e9f00ce0ca64babaea50d5a2d25613f` | 865 | `865ef7a75844bed0076d63005c04a66038c8fb3b125da56b36c70f0232a86aac` |
| OLP-0183 | `content/model-theory/basics/basics.tex` | `dbaab317a40a064d1325f5f071b3be75c7a3fa581423f7a2551cf9f4b06873b4` | 407 | `44d4eedda8bc6c90f68f9a72845ac841a525d177d9c454857ab4d28ec3c9adf4` |
| OLP-0184 | `content/model-theory/basics/reducts-and-expansions.tex` | `f570b7501195fe1f9f137521c31af6e33c31c6d87d304e82649408b523aec20d` | 2457 | `2ec4dee5ed0193a016974974a0b863051c504a7ea0b7860982dbf76a2feecacf` |
| OLP-0185 | `content/model-theory/basics/substructures.tex` | `2c47b8add212cb4b0f9029d4d68acb4e56e8827a7da2e44ea2c5914b2f6f27d1` | 2042 | `649402a762e9efc1c22e3639b95bf715192694fc25c17329e81cbf3d6851e3c7` |
| OLP-0186 | `content/model-theory/basics/overspill.tex` | `c0bcbf30f27166ac4d28caa048c645701e64a64407184b553c37666ecdf7fbc5` | 1620 | `a30f1fbcf757cc2b88215c36ebf5fd0df0a8c2bf55b63abacc929be635f55db7` |
| OLP-0187 | `content/model-theory/basics/isomorphism.tex` | `400ced4b63fe2ab03f95db16b1169e3bfa382ae0b4346c839c36220f51aac563` | 5764 | `d6796fd03e7dec30c975a5be47b0c921eb739e20a34a05a4ed4b5c7629b3b67a` |
| OLP-0188 | `content/model-theory/basics/theory-of-m.tex` | `29fadddc04faea7888457a0eb536fbbef4d9942e4076a14f9ed186b61813e7a7` | 2594 | `b4e9d7b74b35bd46253f1d3361fa7004aa17af4c221f8d4162d4d2de8a32ecb3` |
| OLP-0189 | `content/model-theory/basics/partial-iso.tex` | `9233c0428a52f321404fd272342e7e2ad90b16efcc7c6a0c5d766717eb739e97` | 10789 | `99b60edc8873fc776f48cba2eabab075722fc24abb6bf7c2c3d3bc1726e7e9ad` |
| OLP-0190 | `content/model-theory/basics/dlo.tex` | `2176d8add7d120c359c3a1f83010e0dcbcfa8a70c3d7595bf87931eb67354a8a` | 4341 | `2b51e8ca5f2cc7be5d411b76b921bff42252366088b3f0c66bcdf3f45fdcba00` |

## Eight admitted correction classes

The first four classes are target-language defects found by independent review;
they comprise ten exact occurrences. The last four are explicit source-bound
repairs already made by the writer and positively checked in the final bytes.

1. **DLO duplicated/malformed phrase (one occurrence).** OLP-0190 target
   lines 85–87 previously contained `merupakan urutan / merupakan` and a
   duplicated phrase. It now reads coherently that `\Struct{S}` is a dense
   enumerable linear order without endpoints and is therefore isomorphic to
   `\Struct{Q}`.
2. **False Indonesian `bertempat` arity surfaces (three occurrences).** The
   OLP-0184 relation is now `relasi $n$-tempat`; the OLP-0188 predicate is
   `beraritas~2`; and the OLP-0190 predicate `<` is `beraritas~2`.
3. **Raw English `-structure` fallbacks (three occurrences).** OLP-0184 source
   lines 20, 21, and 60 used un-tokenized `-structure`; their three Indonesian
   surfaces are now the command-neutral `-struktur` at target lines 21, 22,
   and 62. No semantic token was invented where none exists upstream.
4. **`enumerable` adjective order (three occurrences).** OLP-0188 target
   lines 61–62 now say `model yang !!{enumerable}`. OLP-0190 target line 84
   says `!!a{structure} ... yang !!{enumerable}`, and lines 85–86 say
   `urutan linear rapat tanpa titik ujung yang !!{enumerable}`.
5. **Nonempty structure domain.** OLP-0185 source lines 41–44 say any
   `N \subseteq \Domain{M}` determines a substructure, but OLP structures have
   nonempty domains. Target line 45 explicitly requires `himpunan bagian tak
   kosong`.
6. **Isomorphism-definition and calculation repair.** OLP-0187 target lines
   48–58 make the predicate/function conditions range over arguments from the
   first domain. In the term induction, source line 89 incorrectly evaluates
   the right-hand term with `\Assign{f}{M}`; target line 94 uses
   `\Assign{f}{M'}`. Source line 96 also lacks a closing parenthesis; target
   line 102 restores it.
7. **Partial-isomorphism indexing and finite-type repair.** OLP-0189 changes
   source line 68 from `n+1=2r` to `n+1=2r+2`, so the even stage reaches
   `b_0`. It explicitly bounds free variables in the partial-isomorphism
   induction and back-and-forth theorem, separates sequence length `k` from
   recursion rank `n`, and replaces the false claim that `T_n^a` itself is
   finite with the correct finite-up-to-logical-equivalence representative
   conjunction.
8. **DLO back-and-forth proof closure.** OLP-0190 source lines 43–57 silently
   assume both that `p` is nonempty and that the chosen `a` is outside its
   domain. Target lines 44–54 handle the already-in-domain and empty-map cases
   before the three order-position cases.

## Upstream candidates and preserved risks

- OLP-0182 source line 15 has the English grammar error `is at planning`;
  Indonesian correctly conveys that Andy Arana plans to work on the part.
- OLP-0185's empty-`N` issue, OLP-0187's missing argument ranges, wrong
  `M`/`M'`, and unmatched parenthesis, OLP-0189's parity/index/free-variable/
  finiteness issues, and OLP-0190's omitted proof cases are upstream candidates
  exactly as described in correction classes 5–8.
- OLP-0187 source lines 125–127 claim every definable subset is fixed by every
  automorphism. This is false for definitions with parameters unless the
  automorphism fixes those parameters; the statement is valid for
  parameter-free definability. The target preserves the source ambiguity and
  this receipt records it rather than silently choosing a convention.
- OLP-0189 source lines 26–28 apply
  `p(\Assign f M(a_1,\dots,a_n))` without requiring that the function value
  lies in `dom(p)`. The partial-function clause needs a definedness/closure
  qualification. The target preserves this source risk.

## Retracted false positives

1. `\Sat/{N}{\lnot !A}` in OLP-0188 is the project's valid
   negated-satisfaction macro, not malformed LaTeX or a polarity error.
2. The empty map in OLP-0189 is a valid partial isomorphism under Open Logic's
   declared positive arities; a hypothetical nullary-relation objection does
   not apply here.
3. OLP-0190's direct `\Struct{R} \iso[p] \Struct{Q}` remark is valid through
   OLP-0189's second back-and-forth theorem, which does not require the two
   structures to be enumerable. It is not contradicted by their unequal
   cardinalities.

## Scope note

This receipt records source/manifest and final-target hash binding, structural
and mathematical replay, exact correction assertions, adverse upstream
evidence, explicit retractions, and independent semantic review. This review
task did not edit translation targets, locale configuration, build drivers,
project documentation, the closure manifest, PDFs, or Git state.
