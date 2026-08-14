# Open Logic Bahasa Indonesia — independent review: FOL part and introduction

**Date:** 2026-08-13  
**Disposition:** **PASS, with seven preserved upstream exposition risks**  
**Bounded closure:** OLP-0138–OLP-0148 (11 files)  
**Frozen upstream commit:** `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
**Target paths:** `locale/id/content/first-order-logic/first-order-logic.tex` and `locale/id/content/first-order-logic/introduction/*.tex`  
**Replay:** `locale/id/qa_fol_introduction_batch_replay.ps1`  
**Replay SHA-256:** `481b71fe273995c9f640119362d647efdc339caa81df23f999b8e9693eb8ff19`

## Independent disposition

The live post-review Indonesian bytes for OLP-0138–OLP-0148 pass exact
source binding, structural replay, math replay, and bounded semantic review.
The replay resolves every closure row to its immutable Git blob at the frozen
commit, checks the worktree source hash recorded in the 722-row closure
manifest, and freezes every final target SHA-256.

It compares the complete ordered LaTeX command, environment, label,
reference, citation, asset, import, and tag-key structures; semantic-token
multisets; all **333** normalized math segments and the one math environment;
brace balance; nine localized `\olfileid[id]` occurrences; and the one valid,
non-locale-overloaded `\olchapter` occurrence. Only the seven path-scoped
source-correction classes below are admitted, covering nine exact source
occurrences. Sixteen additional assertions bind the post-review target
corrections and preserved upstream findings.

The Indonesian target has no remaining detected semantic omission, reversal,
formula corruption, or untranslated reader prose in this bounded tranche.
Seven source-level exposition issues remain visible for a later concise
upstream issue. They are not Indonesian translation defects and are not
silently rewritten.

## Frozen bindings

| ID | Source path | Git blob | Manifest source SHA-256 | Final target SHA-256 |
|---|---|---|---|---|
| OLP-0138 | `content/first-order-logic/first-order-logic.tex` | `159f9bc0195526828d653f1334be672cddbfab95` | `3fee444ae39c4094bd1bb1963010c0bf6350b5702c79d9e8bc62c430592f527e` | `ade5dc8f6f448d927f592870f21ab10c9322d6365f02edd5ba5621e0169ad0ad` |
| OLP-0139 | `content/first-order-logic/introduction/introduction.tex` | `2169aa069ea7464369d29d305bacfffa5d60c5df` | `3da46f27a563094a0904eacf23838c601ce3a22b0db9d82cfe33d95d8a507b95` | `33bb48042dd995541ab6c9af94a8841509eff5d8762f12806e3be48058e30b51` |
| OLP-0140 | `content/first-order-logic/introduction/first-order-logic.tex` | `2d9e147ca41a3d27e24ca2f2fb80ac576dbd1508` | `32887943e2083de8ae7402ced896b1e5c85beee1c52df199a5dce311cdc91627` | `cd2885e22eaae61e9845f7ec1ca633d9986747d7a8d8116d0004f7a801b24f9f` |
| OLP-0141 | `content/first-order-logic/introduction/syntax.tex` | `d38452a7463d5109384e1332367d18e435a1cfb9` | `91d8aaea25b2d821af6aa8016f994b2e0abbf5cd2debdef7354409fa8ce767d8` | `9ebdcdd3dc75ba37a682c7c8d552de99dfdfb01424efd925ffc57418b601cbef` |
| OLP-0142 | `content/first-order-logic/introduction/formulas.tex` | `6ca80552927ac8fec0756432a3041f0828ad142f` | `43b36e58c2cf5bd1c22018eb0a758d0ed31ab304dc1b3d5532358f6e9703a7c1` | `5bc0c31ea892079192e4731553ed72a8ae7bf2ab610009eaeadef211f025d778` |
| OLP-0143 | `content/first-order-logic/introduction/satisfaction.tex` | `3ec75b194eaeb7f45103e1457522d4683e53ad03` | `7131c06390c685ff0af79611754cf0b98a22dd8a77256a332c84bf39e2f5cc0a` | `664c8c388c97d55cc53b24b4098845b1c480a583b5ef866def8db5cae033ec3d` |
| OLP-0144 | `content/first-order-logic/introduction/sentences.tex` | `bb3bb90b9282f3f0f9860a1f0f19bce3f807f4ff` | `e02b1d562648ce99867d653622b5c8bcb4cd4eeb9e02d335fa59715e193b3cc9` | `523ffd6824e13fdca509c2f7553a929fcd8caafab82e38bcdb36a55e44e8ae0d` |
| OLP-0145 | `content/first-order-logic/introduction/semantic-notions.tex` | `9bb86bc80c2aa2189c33f7705a0ce152307a8ef4` | `5b59ab9c84aad202080a9a834229b1310ba7fb18cbc6891024c072723b9fbadd` | `238a472a82116b9f8a3db47641eb40ea1fbbf14b14a1f8aad8fdf7de2f708822` |
| OLP-0146 | `content/first-order-logic/introduction/substitution.tex` | `bbae5e7735b83b9eec43cd8622152bf163fbf8c3` | `d1e27e94b43fda8329176530bfa9528c859d444123257a7408d5a979151b8941` | `60847d1c66e6df26da77ecb4ed98f7c93644faa40e2d1d071eff26615f518a93` |
| OLP-0147 | `content/first-order-logic/introduction/models-theories.tex` | `f2927425bffd59c4c0983946b4ab22b84a7b33a1` | `9207639415c1946c70ead4464cefaec9ed2972f35121e88272980b6c9a076ca8` | `145ecdfe8c08b9989d767ce6beec6ea12557b354b31dc64a72d7bcb7a74bc597` |
| OLP-0148 | `content/first-order-logic/introduction/soundness-completeness.tex` | `98c661082ac6dd6a337ddafa20265fe9859eca0d` | `49f9a2fb437d680d3e796d72b46d1bc1c5a60c58e3e13ac2e19e6bac6976336e` | `09bc476393eb90d09d6df8e739f79bdeab1c06f9340aca2f92f5980fb859e7ad` |

## Replay result

```text
STRUCTURAL_TOTALS commands=633 environments=40 semantic_tokens=219 labels=4 references=7 citations=1 assets=0 imports=20 tag_keys=8 math_skeletons=333 math_environments=1 localized_file_ids=9 chapter_ids=1
CORRECTION_TOTALS classes=7 source_occurrences=9 target_assertions=7 target_review_assertions=16
BINDING_DIGESTS source_set_sha256=ef53444959f569edf49d2dc543b4e07b98ec3b96091b1ce35dde9542182ba67c target_set_sha256=688f5678509d8de08b0cea2526d8408d77290273a95f618fa6e53348cf9076c4
FOL_INTRODUCTION_BATCH_REPLAY_OK files=11 checks=302 upstream=9620cc73f9c8e0ad003c514a5d3748f29611c4c0 closure=OLP-0138..OLP-0148
```

## Admitted source corrections

1. `introduction/first-order-logic.tex`: closes the universal quantifier at
   the end of its matrix in the combined entailment display.
2. The same file removes the display's unmatched final closing bracket.
3. The same file closes the universal premise correctly in two later inline
   occurrences.
4. The same file removes two unmatched final brackets from existential
   conclusions. These five exact repairs make the displayed and repeated
   entailment well-formed without changing the intended argument.
5. `introduction/satisfaction.tex`: changes the arity-bearing symbols from
   constants to predicates; constants do not have argument places.
6. The same file changes assignment values from `{1,2,3}` to `{0,1,2}` so
   they belong to the example's declared domain `{0,1,2}`.
7. `introduction/substitution.tex`: moves the argument of `\Atom` inside the
   macro's braces in `\Atom{\Obj P}{\Obj v_0}`.

The target-side semantic review also corrected the semantic-register word
for validity (`valid`, not proof-theoretic `sahih`), restored the referent
“variables” in the assignment explanation, removed an invalid `[id]` option
from `\olchapter`, and attached five intended nonbreaking spaces. Those are
target-review corrections, not exceptions to source structure.

## Preserved upstream findings for later issue drafting

Keep the eventual upstream note concise and source-path-specific:

1. `introduction/models-theories.tex`: “sentences that characterize these
   structures in the sense that they, and only they, are true in them” has an
   ambiguous pronoun chain. The intended biconditional should be stated
   directly.
2. The preorder example claims the models are “exactly the preorders,” but
   standard first-order structures have nonempty domains. The correspondence
   is with nonempty preorders unless empty structures are explicitly allowed.
3. The example says a *property* of preorders is entailed by two sentences.
   Entailment relates sentences (or sets of sentences), so it should refer to
   a sentence expressing the property.
4. The claim that exact finite domain cardinality is always expressible
   requires identity/equality in the language.
5. The claim that infinitude is expressible by infinitely many first-order
   sentences likewise requires identity/equality for the standard scheme.
6. `introduction/soundness-completeness.tex`: not all derivation systems
   define the same derivability relation. Sound and complete systems for the
   stated semantics do; arbitrary or incomplete systems need not.
7. “You cannot prove `A ∧ ¬A` from Γ” needs quantification over `A`, or the
   invariant statement that no contradiction is derivable. For one fixed
   `A`, non-derivability does not establish consistency.

These seven findings remain in the Indonesian target because there is not yet
an upstream source adjudication. The three determinate syntax/example defects
listed under admitted corrections were repaired directly and are suitable for
the same eventual human-readable issue.

## Scope note

This receipt covers frozen-byte source binding, structural and math replay,
and independent semantic review only. The parent workflow separately owns the
bounded driver, build, extraction, visual QA, closure-manifest admission,
checkpoint packaging, and Git operations. This task did not edit translation
content, locale configuration, manifests, documentation, build drivers, PDFs,
or Git state.
