# Open Logic Bahasa Indonesia — independent review OLP-0191–OLP-0251

**Date:** 2026-08-13  
**Disposition:** **PASS — zero unresolved Indonesian target defects**  
**Bounded closure:** OLP-0191–OLP-0251, exactly 61 files  
**Frozen upstream:** OpenLogicProject/OpenLogic@9620cc73f9c8e0ad003c514a5d3748f29611c4c0  
**Closure manifest:** OPENLOGIC_CLOSURE_MANIFEST_20260812.csv  
**Locale configuration SHA-256:** 84b09e09ccfa1e03f45ef8cf0de20a3525f9c196317ee4f4a675ab27f1f0cbdd

## Independent disposition and provenance

Two bounded independent-agent audits supplied the semantic review:

1. **OLP-0191–OLP-0207: PASS.** Every source/target paragraph, formula,
   identifier, and TeX structure was replayed. After the explicit
   normal-logic hypothesis and negated-satisfaction repairs, no target defect
   remained.
2. **OLP-0208–OLP-0251: PASS.** Recursive-functions and
   computability-theory units were reviewed through OLP-0251. All declared
   source-bound corrections were accepted and no target defect remained.

The batch replay in
locale/id/qa_olp0191_0251_batch_replay.ps1 independently binds those findings
to the final live bytes. Semantic audit coverage comes from the bounded
independent agents; deterministic manifest, byte, parser, and correction-scope
coverage comes from the replay. Human or native review is not claimed and was
not an admission requirement.

## Deterministic replay result

The final replay completed with:

- **61 files, 956 assertions, PASS**
- source bytes: **223,335**
- target bytes: **237,011**
- frozen manifest/source binding SHA-256:
  **610ece178c3fcb5ee8fdbb92d697c80c4279e058ecee83c1ae7df7d0511bee4c**
- canonical target binding SHA-256 over ordered
  ID|target-hash|target-bytes records:
  **45df77e61c17a67852cef0dc390cbe81a22c09a980e3c9a2e3e47c2c27dababd**
- structural-record SHA-256:
  **590d328334aa9b397ad3c76227c73b982a342bebd47694dadb940959bfbd0593**
- audit/correction/risk declaration SHA-256:
  **4757ab53edae353cb016bb1e96ee5d65c0e603677169fb1ddb47cc7cdf8acd9f**
- replay script SHA-256:
  **cc593aa70a69d5487d6e68c870b5efed65cf334b50eb7551cbe533bac999d8e2**

Frozen parser totals are source/target:

| Invariant | Total |
|---|---:|
| LaTeX commands | 6,144 / 6,173 |
| ordered begin/end tokens | 924 / 924 |
| semantic tokens | 270 / 269 |
| file/chapter/part identifiers | 61 / 61 |
| labels | 47 / 47 |
| references, raw | 89 / 90 |
| references, after the declared OLP-0194 added-reference normalization | 89 / 89 |
| imports | 57 / 57 |
| inline/display math segments | 3,435 / 3,466 |
| structured math environments | 109 / 109 |

Environment order, localized IDs, labels, and imports match exactly. The sole
reference delta is the admitted OLP-0194 cross-reference to
prop:thq-standard. Command, semantic-token, math-segment, and math-environment
deltas are accepted only on the exact path-scoped lists frozen in the replay;
the aggregate structural digest prevents a weakened parser or symmetric
omission from silently passing.

The replay also checks balanced braces, valid semantic-token forms, absence of
the undefined composite notmodels_L command, absence of placeholder markers,
and the exact OLP-0239 post-iftag paragraph break.

## Admitted correction classes

### Models of arithmetic: OLP-0191–OLP-0197

- OLP-0192 qualifies the overbroad nonstandard-element claim to the applicable
  arithmetic-model setting and restores the omitted proof-code witness in
  OPrf.
- OLP-0193 removes stray leading equality tokens and corrects range/domain
  wording.
- OLP-0194 repairs the invalid converse for arbitrary structures, M/M-c
  interpretation identifiers, the finite-subset compactness case with no
  inequality sentence, and the missing Löwenheim–Skolem step needed for the
  countable-model conclusion.
- OLP-0195 repairs the impossible K case y=b to y=a and the stray L expression
  b-plus-y to b-plus-a.
- OLP-0196 repairs a closing bracket, restricts predecessor existence away
  from zero and to nonstandard block elements where required, repairs block
  order and addition notation, restricts the no-largest-block statement to
  nonstandard PA models, and adds the countability hypothesis needed for the
  rational block order.
- OLP-0197 repairs the set-comprehension binder, gives the correct explicit
  bijection, and states Tennenbaum’s theorem up to isomorphism.

### Interpolation and Lindström: OLP-0198–OLP-0207

- OLP-0200 replaces the upstream delta typo with H.
- OLP-0201 primes the enumerated languages, supplies both omitted fallback
  assignments, repairs malformed language macros and the predicate-transport
  argument, and uses structure satisfaction rather than theory entailment.
- OLP-0202 repairs structure satisfaction, the raw P-prime atom, and the
  sentence/formula scope of Beth’s theorem.
- OLP-0205 repairs the symbol-language description, renaming target, Boolean
  disjunction clause, and negated-satisfaction syntax.
- OLP-0206 repairs tuple notation, separates the outer structure U from M,
  repairs starred domains, distinguishes the abstract-logic sentence from the
  first-order sentence, and repairs negated satisfaction.
- OLP-0207 repairs the finite-representative construction, elementary
  equivalence notation, first-order versus abstract satisfaction subscripts,
  ambiguous outer-structure names, all negated-satisfaction sites, and the
  theorem’s required normal-logic hypothesis.

### Recursive functions: OLP-0208–OLP-0227

- OLP-0211 repairs the primitive-recursion direction.
- OLP-0212 repairs x_n in composition and changes the projection arity from k
  to n.
- OLP-0213 makes the S_i stages cumulative.
- OLP-0216 repairs the constant-function subscript const_2.
- OLP-0217 repairs the less-than-or-equal label.
- OLP-0218 repairs the bounded-minimization x/y binder.
- OLP-0219 repairs division/remainder direction and scope and supplies the
  missing Euclid base cases.
- OLP-0220 defines the sequence bound separately at k=0, avoiding p_-1.
- OLP-0221 repairs the traversal off-by-one index, g/g_f mismatch, empty base
  case, and cumulative-level description.
- OLP-0225 qualifies the normal-form theorem to unary partial-recursive
  functions.
- OLP-0226 removes an impossible invalid-index branch, repairs the diagonal
  contradiction, and clarifies that the opening program may define a partial
  function.

### Computability theory: OLP-0228–OLP-0251

- OLP-0232 makes both x-to-e repairs and removes the adjacent typo.
- OLP-0233 repairs the universal partial-function scope.
- OLP-0234 repairs the total/universal-function distinction.
- OLP-0235 repairs h to g and the Indonesian decision wording.
- OLP-0236 repairs the Russell diagonal membership from X-notin-S to
  S-notin-S.
- OLP-0239 replaces an inappropriate equality by partial equality, binds the
  free proof variable, and includes the final render correction: an explicit
  paragraph break after the tagged Turing-machine conditional prevents the
  observed a.Kita collision.
- OLP-0242 repairs the d/e indices.
- OLP-0243 repairs tuple order in the reduction.
- OLP-0245 repairs the completeness-reduction direction.
- OLP-0247, OLP-0248, OLP-0249, and OLP-0251 replace equality by partial
  equality where definedness is not guaranteed.
- OLP-0250 repairs the theorem and proof scope to a partial f with f(e)
  defined.

## Retracted false positives

1. Command-count changes, added priming, structure satisfaction replacing
   entailment, and renamed outer structures in OLP-0191–OLP-0207 are admitted
   repairs rather than translation drift.
2. The composition macro’s direction is correct.
3. The characteristic-function complement identity is valid.
4. The K less-than-or-equal-m K_0 exercise is valid.
5. Ordinary equality is valid for total functions and for extensional
   equality; only partial-function claims require partial equality.
6. Reader-facing English program and string are intentional technical
   vocabulary, not untranslated residue.

## Preserved upstream risks

- OLP-0192 uses n and m directly as inputs on a string domain; the intended
  exponent/length identification is understandable but formally implicit.
- OLP-0195 retains the source’s stale Section metadata
  non-standard-models.
- OLP-0196 retains the source’s stale Part metadata first-order-logic.
- OLP-0220 retains strict less-than sequenceBound after prose says “at most”
  the bound.
- OLP-0224’s diagonalization rhetoric omits the effective-enumeration and
  universal-evaluation qualification.

These are preserved source risks or metadata issues, not target-introduced
defects.

## Frozen source and target ledger

| ID | Source path | Source SHA-256 | Target path | Bytes | Target SHA-256 |
|---|---|---|---|---:|---|
| OLP-0191 | content/model-theory/models-of-arithmetic/models-of-arithmetic.tex | 3805d7a115d7d90554f1a29916190b1f050d1b5caedeb071e3226f6d38ee2100 | locale/id/content/model-theory/models-of-arithmetic/models-of-arithmetic.tex | 377 | 9ac0ba3945f0f8a0d2c7517eb1e502c119d34ae7a730327ea0a72d9f6af5cdb3 |
| OLP-0192 | content/model-theory/models-of-arithmetic/introduction.tex | 2d070e63927f9c2ea50bf5074fd6b3f15bff465398575601d3b7ed8bc9867cbb | locale/id/content/model-theory/models-of-arithmetic/introduction.tex | 3526 | f44e88d609c63b6aee745695e95ad2436f67be73122cc5c6d5da6ba5f1e2ab84 |
| OLP-0193 | content/model-theory/models-of-arithmetic/standard-models.tex | 27e39b49bb28308233f0874de2d15ff5f33d61cc294acfa635bde0bbe4710019 | locale/id/content/model-theory/models-of-arithmetic/standard-models.tex | 8498 | ba088247a64abe988f2ba8fe573645aa4cf479e489394fd2908ad33236478381 |
| OLP-0194 | content/model-theory/models-of-arithmetic/non-standard-models.tex | 0895b776d3e5ded7c9695e63ec9f268dd0e096b38040c558624f4784c3024fcc | locale/id/content/model-theory/models-of-arithmetic/non-standard-models.tex | 5682 | 9db7cabfc574cc05fab3c6db3c6dd177fedec1085d23731dfad282bad90e98b5 |
| OLP-0195 | content/model-theory/models-of-arithmetic/models-of-q.tex | e7f932a05807df4e416bb015cc0aac662de3fb3f0a9f8e3e0ea1a9a4f1283aa7 | locale/id/content/model-theory/models-of-arithmetic/models-of-q.tex | 8451 | cac0c778335ce4f67fb7b351b2deaa8e9829038441dd910988ecb8050000e9d8 |
| OLP-0196 | content/model-theory/models-of-arithmetic/models-of-pa.tex | 8c4dec337b74d9a8dd3cb6a65065ba12e883518dba2a17834041d01d85c219be | locale/id/content/model-theory/models-of-arithmetic/models-of-pa.tex | 11657 | cc7ef489662e2f913627d9be0589f68c3ca052745e999105100c6dceca79632c |
| OLP-0197 | content/model-theory/models-of-arithmetic/computable-models.tex | 79a6a13d59f055788182e0fe9117c3e98782317a71ac747db0e7483ca118cac5 | locale/id/content/model-theory/models-of-arithmetic/computable-models.tex | 5043 | 0264a073e61750ce378a0574cc77c98f52fde7b8866a489629e792c2b5fc3d92 |
| OLP-0198 | content/model-theory/interpolation/interpolation.tex | 30f05b67fa5f7ad8fd9e9c59fed138ddb53cdca1fbd9fb65a4c58aeda6b7342a | locale/id/content/model-theory/interpolation/interpolation.tex | 308 | 4bbe8de43d63b02f1d34de6f2a3b70eaf59db3f1390124c7f3343d58ac6fc3d5 |
| OLP-0199 | content/model-theory/interpolation/introduction.tex | bf9e45873cb4e5c18fc57a8c51cd7ed5d94dbd1bdfd6f89f0c1bad630ae22044 | locale/id/content/model-theory/interpolation/introduction.tex | 1024 | 121b08b2d99f0ecebf2bac69a29644e6b9ccd4dcd2e2963453470c413f704fc4 |
| OLP-0200 | content/model-theory/interpolation/separation.tex | 0850da6cb374079c24cd947ce17cf85604551f825be405676e97fe2779b0a2f6 | locale/id/content/model-theory/interpolation/separation.tex | 5238 | f813ef7b6ac9302b8c95f674d4f33827ec56d1e29146a2a649f1a255cda9db8a |
| OLP-0201 | content/model-theory/interpolation/interpolation-proof.tex | c2b53950362da168a87e66758d2c91729041cc28a49ea78374283d46459bade2 | locale/id/content/model-theory/interpolation/interpolation-proof.tex | 10126 | d2b10e2a733d48b06bcc572320b3e122d8995c341973c888d23ec2062ea8a62f |
| OLP-0202 | content/model-theory/interpolation/definability.tex | 8e89c08c0e211d3bd52c05cbd1d09b148df444855e4165df71e43461e84cbaca | locale/id/content/model-theory/interpolation/definability.tex | 5437 | c0c466aed501ae19e634606261277b753e1c189e269b8d5420ab59ecaf654d69 |
| OLP-0203 | content/model-theory/lindstrom/lindstrom.tex | ea726cb752c7aa9832bf45f4b2ded0c69d9dcb376549c93bc2af7df4aacddc8a | locale/id/content/model-theory/lindstrom/lindstrom.tex | 304 | ea60647bee250e5892147fe21d8176d4f9f30292d57c7541e83f4dffb50878d2 |
| OLP-0204 | content/model-theory/lindstrom/introduction.tex | c37aac04a5f7e6123c558cd7ce3ca7c8159fad3bce92c2a47aa40ebf810baa52 | locale/id/content/model-theory/lindstrom/introduction.tex | 798 | 82db35bcab0e64a9200c5555b2d46cdc4d2e01ea2d6ea9c3271ad05435b21f87 |
| OLP-0205 | content/model-theory/lindstrom/abstract-logics.tex | ab605690e24fffb499ee9523a80e4cb422d9e7ac7beb0b86cdd7a4eba6edba9b | locale/id/content/model-theory/lindstrom/abstract-logics.tex | 7061 | 11692de25a77e39be3b9039f1a6bf6f0fcea9f89767b213ded890e5131aeca61 |
| OLP-0206 | content/model-theory/lindstrom/ls-property.tex | 3e7b3f84adf951cd912972a2d7ac5908d7d3c0130f881caf70eec03a5080efe3 | locale/id/content/model-theory/lindstrom/ls-property.tex | 6065 | 4ac6fc8aaef2cf6494e992e8018ea739b3fe3d52eb61fbb404cc39745a739d51 |
| OLP-0207 | content/model-theory/lindstrom/lindstrom-proof.tex | 8e407658f1e11431ad859dd166b2de535e6bab8da9b1a28b9549fd97b2ec87fc | locale/id/content/model-theory/lindstrom/lindstrom-proof.tex | 6785 | 7a1805201b26b6c5affaa1946946e6a9efb9595f30e56299191999caae64c99a |
| OLP-0208 | content/computability/computability.tex | efc0b0d0a189854db40ac8fc626a19327d6cf0b22e1a8eb3b74bcb727efcd8e0 | locale/id/content/computability/computability.tex | 553 | 6cd2d2b92ed78538d1cfa992c89dd950d5d06031c20bd7d7e5f66b397b59ecb9 |
| OLP-0209 | content/computability/recursive-functions/recursive-functions.tex | 567feffca9844be257c54e521e882775439f227be7b8277ddfdae9fe5333e45e | locale/id/content/computability/recursive-functions/recursive-functions.tex | 989 | 610adbb34caac242664e780b1d709928c51c04fd8e717e91f42b7c244414c1b7 |
| OLP-0210 | content/computability/recursive-functions/introduction.tex | aa5da3312ed4236449827261edddc5393a2d17306bca57e36284c368f5fa3bc8 | locale/id/content/computability/recursive-functions/introduction.tex | 2982 | ae17945cd80becf51885e4a39b4f9fb60015e02f01b513a2ec975447f1ae44a1 |
| OLP-0211 | content/computability/recursive-functions/primitive-recursion.tex | e98c274a0ab979761d083f4c9ad1486d440c7933a13c1c0d99ac1a52d8996fcc | locale/id/content/computability/recursive-functions/primitive-recursion.tex | 6247 | 4e651120695800480d67b2db90300a33ec5f388b2fa7a206d17613306e3b9e13 |
| OLP-0212 | content/computability/recursive-functions/composition.tex | 76ed2309d26b936b5eb1cb6a7c90f58e40043d38aa3afd1b7ad2e98d836245f0 | locale/id/content/computability/recursive-functions/composition.tex | 3728 | dd992550253f1feddd0951c545ae309a4b4781de4bd2e8c1f8dd0712e043d80b |
| OLP-0213 | content/computability/recursive-functions/pr-functions.tex | 1bb48caec3680c643d88cee6a910542ce36852e8f97b4e1728d4b5fc59d8f22f | locale/id/content/computability/recursive-functions/pr-functions.tex | 6306 | aab48ec733e9f3daa58721215f2a15c330077c67455d9347c3209e09b3fe0f65 |
| OLP-0214 | content/computability/recursive-functions/notation-pr-functions.tex | 6018c8fb8ec86201286b019a60163a63ca076925d3044dde7060394822241272 | locale/id/content/computability/recursive-functions/notation-pr-functions.tex | 2265 | 7a40c15cf26721ecfc4063307cadce211184c8c710027d63bf75ae1b9de6d9bb |
| OLP-0215 | content/computability/recursive-functions/pr-functions-computable.tex | 10a26513e18c31ee991a53c54bc10682710d93b5766f0ee758cc766b38e321c9 | locale/id/content/computability/recursive-functions/pr-functions-computable.tex | 1897 | 8325b94b14c988db80a9e48fe0ee0a99132aa1131898e5ba2735ebff90f9c48d |
| OLP-0216 | content/computability/recursive-functions/examples.tex | 431b72df17cd6de28a2f475f360742639cc40b5abc1a68d0d7e91794a88188d9 | locale/id/content/computability/recursive-functions/examples.tex | 6128 | de9d2a764c7f611a8882c6b2efd6809d3fb89ee9d58fea562471715d4e400282 |
| OLP-0217 | content/computability/recursive-functions/pr-relations.tex | 8323a8010f1d1faed641b5efc44c46956e1264fc4120c95e67edc26fbaa4ace2 | locale/id/content/computability/recursive-functions/pr-relations.tex | 5901 | 8ebdfa0064852f7506fc26fc9da47e04dc97a16b0f035215365fabbc1372fe9e |
| OLP-0218 | content/computability/recursive-functions/bounded-minimization.tex | e92c4c37e242325519960ad6cc05f288cac99a3422e3eec6557f70325ce4a75e | locale/id/content/computability/recursive-functions/bounded-minimization.tex | 2840 | f04c6e560379cd17bee782acf4ba6228af21c2a2943b5873e3bad93688c2b991 |
| OLP-0219 | content/computability/recursive-functions/primes.tex | 02365c0e9de7f0df4bfae770dc311f59c8947e48422a8570de4c5e2c2d6a9157 | locale/id/content/computability/recursive-functions/primes.tex | 3928 | cd6bef4686c5b66ac5a33c9adb77caa497047057da087e96b026dc5677b83342 |
| OLP-0220 | content/computability/recursive-functions/sequences.tex | 8199ddcf003b44e0e6d5a050d32ddbb13322d6a62bfe998b075c493d8a905dee | locale/id/content/computability/recursive-functions/sequences.tex | 7243 | 8a0c136363e88b1e73a3714826b83c23d96f8e08a07adddabd5a13e2bc37a4f8 |
| OLP-0221 | content/computability/recursive-functions/trees.tex | 894b0c7adc8dcd90f8dcf342c07f0a1255861174f73b004c1fcd56c90b314d3a | locale/id/content/computability/recursive-functions/trees.tex | 3672 | e22bbf144d44a920adea44810d41bc2d900b385347f2a6887b1ba2a9de8e4b87 |
| OLP-0222 | content/computability/recursive-functions/other-recursions.tex | f3e558032c6f1e11bfe8710653a5a544ab28a3344e14b0606efb8d8c42f5942e | locale/id/content/computability/recursive-functions/other-recursions.tex | 2796 | 513d7ba221b70f6355ebf8ace0682057246d552666316e77aab464e23ef6f4f3 |
| OLP-0223 | content/computability/recursive-functions/non-pr-functions.tex | 78d19b1607382b6e44c4c225c853b34634e4342b5998e3857be2360cb5f6d8d2 | locale/id/content/computability/recursive-functions/non-pr-functions.tex | 4763 | 5245dbc612e4b4d2641675a9dbc8270327157ea9291258ad284a9eda9483ecac |
| OLP-0224 | content/computability/recursive-functions/partial-functions.tex | 8bc40ad81d6d9df66dfcfd82b0a8ba732528ab0fa870d2706a7a80b89caa6a7c | locale/id/content/computability/recursive-functions/partial-functions.tex | 5613 | 8de010eec51546b77da12a87ab0976ca355046579a58d10220f98a729a8f1802 |
| OLP-0225 | content/computability/recursive-functions/normal-form.tex | bcaadbcfece9d45963ac5e9e66176efecc7d014aba49c3924522e14c2f6058b2 | locale/id/content/computability/recursive-functions/normal-form.tex | 2008 | ef18e0d75799f75ea92aa430900f2cc960af58f84e442f9c9b0623e438a28083 |
| OLP-0226 | content/computability/recursive-functions/halting-problem.tex | 45ec5638665a104724a6591813603a2162182ffedef2288f210e4c99eb035d00 | locale/id/content/computability/recursive-functions/halting-problem.tex | 3166 | 3c267b767384e08962a2a0f7cd31e5597f7680ee641e80b63d954f0eb6c94cf8 |
| OLP-0227 | content/computability/recursive-functions/general-recursive-functions.tex | ec031b368a8b22f20144e845280e876ef9012cb3bfa524c01785d423519feaee | locale/id/content/computability/recursive-functions/general-recursive-functions.tex | 1674 | 49d2d404427deffe640aca925c091b1dfb863cc80ceb2f2f93dae7294ce38ff9 |
| OLP-0228 | content/computability/computability-theory/computability-theory.tex | 455935eba9c7e9c84dfbac734f6d7d99c9e1d1d29e1bfec82df6a04af662f376 | locale/id/content/computability/computability-theory/computability-theory.tex | 959 | 60c81dd188837c4c5c9a4c1c0305c03b693db6ae5df765980774742c5d2aa20a |
| OLP-0229 | content/computability/computability-theory/introduction.tex | c3419c9d239782b621f14aae61fde98a1ecaa1a8e146d8d042d87476cd826107 | locale/id/content/computability/computability-theory/introduction.tex | 3679 | 3411adc134f95db16450442ad7e09a16ab91e210bd93557237756babd2564c35 |
| OLP-0230 | content/computability/computability-theory/coding-computations.tex | a7f410fc4df20dc8a33e389d77fef080bc442c898f66fc6c7f2b416563aac620 | locale/id/content/computability/computability-theory/coding-computations.tex | 2020 | 091ece3b1d3138e57559aab9b14a1ba0bfd812b31eb35eace152867f399dd353 |
| OLP-0231 | content/computability/computability-theory/normal-form.tex | 275b05d5a1731214ddec611571a58c1a0d1587409ae68462852e3cb253a800dc | locale/id/content/computability/computability-theory/normal-form.tex | 4227 | 72663a6710c6efcf97f060f4fdce855507ecb4757acb23c120907407cb5af742 |
| OLP-0232 | content/computability/computability-theory/s-m-n.tex | 4a1c61fd8f0426b389b529ee9052fcab5d28e67895f48a95572804c92fec995c | locale/id/content/computability/computability-theory/s-m-n.tex | 1665 | 9dd211c165d8433b9222d269f17d280ba1bc111961182ce2cc0c819887dc609a |
| OLP-0233 | content/computability/computability-theory/universal-part-function.tex | ad8a25c4b89efb3fb744ac5e31eb93e36e89ac7890f892a30dd0ca5886df9ec4 | locale/id/content/computability/computability-theory/universal-part-function.tex | 1715 | b2af6ef13c71a34d8697e658fe4ac8a83542db4a379f2a0ce97ac3814f168411 |
| OLP-0234 | content/computability/computability-theory/no-universal-function.tex | 21cdbc8e03343aed5b966aa8df3cb1670e06ff46bc95d6f70a25a45d68edb8c0 | locale/id/content/computability/computability-theory/no-universal-function.tex | 1964 | e014fe981b9afb21ff6dce349e38e100e3b1b94c499de967160414047484740b |
| OLP-0235 | content/computability/computability-theory/halting-problem.tex | 07a2761be56b61fdf53a8059c14ccc93f9e10e467834f49086bf1033b3325da2 | locale/id/content/computability/computability-theory/halting-problem.tex | 3980 | 035bbfc8d873b547dc83762051fde46477c040994bc90a197807090f740a112a |
| OLP-0236 | content/computability/computability-theory/russells-paradox.tex | 8cdf210d5f1554d2c000429a6d18ad27ee2e81a264a1b66530ba061c7eb66d07 | locale/id/content/computability/computability-theory/russells-paradox.tex | 2932 | 389825176e4c7f43e59468596ebc010022522a06f54edd3cc5366dd50aa628cc |
| OLP-0237 | content/computability/computability-theory/computable-sets.tex | f5f564af892eaee08204f6b878e7172fa49bc45f8429fd5b91f1521fd116f222 | locale/id/content/computability/computability-theory/computable-sets.tex | 1398 | 0b8f311b4a9996bd9c009d57880488231936bc9a5841df91ea10eeea60c0c2cd |
| OLP-0238 | content/computability/computability-theory/ce-sets.tex | b738f332001dab70a842378f9ebcdd3c81f81a37d40093e9c3a12d724220031f | locale/id/content/computability/computability-theory/ce-sets.tex | 1735 | 47019d77d9ab865668e627d8eabdc753b203edae8c550a1d754c482be5632c57 |
| OLP-0239 | content/computability/computability-theory/equiv-ce-defs.tex | a195b2f0b2d78a5121d2c5993e5b7c31b493aa02d4f8103804f1f6780e1dbb30 | locale/id/content/computability/computability-theory/equiv-ce-defs.tex | 6982 | d7584e3b135f948299c1f92dbecfe2874607e4cd597b9f9c0214a9d86ebfc58b |
| OLP-0240 | content/computability/computability-theory/non-comp-set.tex | ea2588e217e3df5956db0c8abd7cfbd46dde8ffeec2cc585354b43fef11bded2 | locale/id/content/computability/computability-theory/non-comp-set.tex | 2417 | b16225df4fa0327293c8b024ccc2b1114b217a3725ea7f2fb81b15f3ce88fb10 |
| OLP-0241 | content/computability/computability-theory/ce-closed-cup-cap.tex | 6b5a606958985b35543ab2967d419a1894ea7bb37138594be5a8ebf997d75094 | locale/id/content/computability/computability-theory/ce-closed-cup-cap.tex | 3408 | 32964c87b306b2ec19f3b024636c8ea9f2defdbf5feccb6da26bbf042b77637b |
| OLP-0242 | content/computability/computability-theory/complement-ce.tex | ae7fddd59fca662c90bb7e23a2af725a90dc7d9d95821eb3a55550f3f6b649d9 | locale/id/content/computability/computability-theory/complement-ce.tex | 2398 | a1c52e3d76ba97ac74108864cfc1a1fb0a47d974fa54765f9319e86b32876643 |
| OLP-0243 | content/computability/computability-theory/reducibility.tex | 9f392186d01baec03bd0c6cad875c8fc66231174ddb294c4a9a014c590f8ce22 | locale/id/content/computability/computability-theory/reducibility.tex | 3457 | 701a3d9f5a6ddae793e519e7445930ea2cabf4d6c21bd21894adadca115f3af0 |
| OLP-0244 | content/computability/computability-theory/prop-reduce.tex | aba1c5594c0c29e062f0d40bd85948f4977a962cbdad14f492bc19b36e51504d | locale/id/content/computability/computability-theory/prop-reduce.tex | 4455 | 2ae07d0b8f70ea9e4be1774abdca73deaef77fb853807736ee27e0f1f5a5904c |
| OLP-0245 | content/computability/computability-theory/complete-ce-sets.tex | f2b3d831482a977fe0d186eed0e916f4efa52c2aeb2cd828e29a1d012bb0c377 | locale/id/content/computability/computability-theory/complete-ce-sets.tex | 2129 | a31f3e187a7dbee8cea007fdc54b45caf70ad3d4f5de134f1f75a4cda832cb8f |
| OLP-0246 | content/computability/computability-theory/k-1.tex | 553b765fd06bae91196dfd6a9404614f0b5c687d77d6eebf53205b30cba3ce2d | locale/id/content/computability/computability-theory/k-1.tex | 2846 | 8e3340444bd139623c53a91db95bf91449c76d934fe2bfcd95f5ad74443a9f70 |
| OLP-0247 | content/computability/computability-theory/total.tex | d165286d41a2d24092135479b2fb302b460176ec3e7370375e4a88a7c2b74228 | locale/id/content/computability/computability-theory/total.tex | 1886 | ca777687db237b348925ccc94243badb3006f4e40414d4cd33f2da0e22bb473b |
| OLP-0248 | content/computability/computability-theory/rice-theorem.tex | 83b47def0c2b096e1a19487c7df09cd43e330933e58848efa68d431b606902d4 | locale/id/content/computability/computability-theory/rice-theorem.tex | 6170 | 83879cfec786296457c93497f0467a1fee8a27c2dd404e7d8fc467839d0f724a |
| OLP-0249 | content/computability/computability-theory/fixed-point-thm.tex | fba78fdf1abfe96f69e5623ec0cfe75430b5e139d19fcb9e22484bb8dae38820 | locale/id/content/computability/computability-theory/fixed-point-thm.tex | 8448 | 40be61b749c841a1c4d87e9735e27826e415b6464c9ef1fa61542d42be92398f |
| OLP-0250 | content/computability/computability-theory/application-fixed-point.tex | 864d0413932de8279b535e9aa047420dd88a8e7f86ba3caa338ac11429dfba47 | locale/id/content/computability/computability-theory/application-fixed-point.tex | 3040 | d35c27fad251c1c1cfe60a949359267eb1d398fe68301a5d279f6d2459a1ef77 |
| OLP-0251 | content/computability/computability-theory/def-functions-self-reference.tex | 66f68fd888fbe9cd4e10f42a9943add43582bd0246e7c9c5f97ee151e9e85581 | locale/id/content/computability/computability-theory/def-functions-self-reference.tex | 2022 | 833dfff9e92c18bfd23bc485983153f7b76a6fc1282ae3cd58000082f9b6e296 |

## Scope note

This task created only this receipt and the bounded replay script. It did not
edit translation targets, locale configuration, drivers, project
documentation, the closure manifest, PDFs, Git state, or tmp. It did not run a
build or Git command.
