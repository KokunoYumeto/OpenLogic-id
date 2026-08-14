# Open Logic Bahasa Indonesia — independent review: models and theories

**Date:** 2026-08-13  
**Disposition:** **PASS — no unresolved Indonesian semantic findings**  
**Bounded closure:** OLP-0167–OLP-0173 (7 files)  
**Frozen upstream commit:** `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
**Target paths:** `locale/id/content/first-order-logic/models-theories/{models-theories,introduction,expressing-props-of-structures,theories,expressing-relations,set-theory,size-of-structures}.tex`  
**Replay:** `locale/id/qa_models_theories_batch_replay.ps1`  
**Replay SHA-256:** `a1ba04487be799c0f365e57aeb2637791c8ad0701955430989bb6f0cd33212a0`

## Independent disposition

The final Indonesian bytes for OLP-0167–OLP-0173 pass immutable Git-object
binding, closure-manifest and worktree-source binding, exact target-hash
binding, deterministic structural replay, normalized mathematical replay, an
English-residue guard, explicit source-correction assertions, and independent
line-by-line semantic review of the seven source/target pairs.

The replay verifies every source path against its exact blob at the frozen
commit and its exact manifest/worktree SHA-256. The worktree uses CRLF while
the Git objects use LF; newline-normalized blob content is therefore compared
directly to worktree content instead of falsely equating their byte hashes.
It then compares the complete ordered LaTeX command sequence; 94 ordered
`begin`/`end` tokens; the complete 109-token semantic-token multiset; labels,
references, citations, assets, imports, tagged items and tag conditionals; all
299 normalized inline/display math skeletons; thirteen outer/nested math
environment structures; brace balance; six localized `\olfileid[id]`
occurrences; and the single chapter command.

No semantic omission, reversal, polarity error, quantifier change,
relation-direction error, scope defect, structural loss, or untranslated
reader-facing English remains detected. The five exact source corrections
carried by the target are positively asserted below. Human/native review is
not claimed and was not an admission gate.

## Frozen bindings

| ID | Source path | Git blob | Manifest/worktree source SHA-256 | Final target SHA-256 |
|---|---|---|---|---|
| OLP-0167 | `content/first-order-logic/models-theories/models-theories.tex` | `f253e3a896a8747ba5aa3bae33f57e6f6cb715e1` | `a3a51cfc65725adf5e09f41af5e24114847757effad8d2c49827bb427e16da6f` | `767505629b7ced0e2513dea1945a82e67e12b48a3172e4feff56aa68ac1d3607` |
| OLP-0168 | `content/first-order-logic/models-theories/introduction.tex` | `fb3bf885473c223d772f118d2be217c2e062722f` | `56518e9cb660f5393a035d369656023c1e2301db8eb220c642131a14a5cdc8d8` | `3a1079a9fc045adf062c20d74151d16f234665daaf994985281563da438076f1` |
| OLP-0169 | `content/first-order-logic/models-theories/expressing-props-of-structures.tex` | `8d3effa95471011f651b4087da4ca796009f7947` | `939bbd9f240291eefaf1926db84c710e635642e1c0b083d6bb8fd7c62b302db0` | `3d45a9dfcfe40490fcd258b4f2ec9e58326cdc78d8564e6637a85b2844ea9c0c` |
| OLP-0170 | `content/first-order-logic/models-theories/theories.tex` | `12c303d64912fd547e64f7e2ff4f219510442143` | `0d47cc25cb7555009033f6dd8131beddfe7a36d514989154d241d98c3ae92536` | `055f4af3528c4dc68351f124507d89ba120a010717302e05429e0dbd890a9350` |
| OLP-0171 | `content/first-order-logic/models-theories/expressing-relations.tex` | `4f4c0a3b30ada41649576eb8b17a2206cfe3ddb7` | `4463b194f95a1e7649f0ee833e2851273e78e760d9db32f67f925c8d551daa7d` | `300f6d199e4750c6d1aaab65c0db9c014c5cf6476807a9ed586c67412ca94519` |
| OLP-0172 | `content/first-order-logic/models-theories/set-theory.tex` | `b04c16a01f2ab5cab809f2aa3189b74f4059f6bd` | `c252116bc14449400e362e11e002d865f58e59177215cab085ceaec7ae9d2aa3` | `be3c755f6c74775c117c7f68c07c74dbd37202b23b08e72170cf03a0d0c69c64` |
| OLP-0173 | `content/first-order-logic/models-theories/size-of-structures.tex` | `d9f2315b15aeb8396e81ac6e5ea0adae5cf28b7f` | `b63fc24a59388785180fe06e738b2b2e0e61c05896050bbfb1959fd6ddcf0060` | `fd62fecca24d670d2d318f11b3e08eac87aa6b1fdd6367c2b6963de02c774cff` |

## Replay result

```text
STRUCTURAL_TOTALS commands=917 environments=94 semantic_tokens=109 labels=0 references=0 citations=0 assets=0 imports=6 tagged_items=0 tag_conditionals=0 math_skeletons=299 math_environments=13 localized_file_ids=6 chapter_ids=1 uppercase_tokens=7
CORRECTION_TOTALS source_classes=5 source_occurrences=5 structural_normalizations=5 target_assertions=5 target_review_assertions=3 uppercase_false_findings_retracted=7
BINDING_DIGESTS source_set_sha256=e333a41b16dd6412887baab269bae396b898ee7ce84af48885a1d3c15bde9a76 target_set_sha256=07b631a2f48c55683de6112c2b68039f507c41bb44334272af6f09c95fa4f3b3
MODELS_THEORIES_BATCH_REPLAY_OK files=7 checks=218 upstream=9620cc73f9c8e0ad003c514a5d3748f29611c4c0 closure=OLP-0167..OLP-0173
```

The uncorrected frozen source has 916 command tokens. The only additional
target command is the restored object-language `\Obj` in OLP-0171; after that
admitted correction, corrected source and target each have 917 commands. The
thirteen math-environment records comprise eight `align*`, three `multline*`,
and two nested `aligned` structures.

## Admitted source corrections

1. **OLP-0170, `theories.tex`, source lines 24–26:** the converse clause calls
   `R` merely a “linear order,” although the displayed language and axioms are
   for strict linear orders. The target consistently says `urutan linear
   ketat`. This is high-confidence because the relation interpreting `<` must
   be strict.
2. **OLP-0171, `expressing-relations.tex`, source lines 72–75:** the English
   prose is grammatically malformed: “but in the domain they are used to
   describe often many other relations play an important role.” The target
   gives the coherent intended reading: `Teori semacam itu sering kali hanya
   memuat sedikit ... tetapi banyak relasi lain sering berperan penting dalam
   domain yang hendak dideskripsikan.` No mathematical scope is changed.
3. **OLP-0171, source line 64:** the second arithmetic formula contains bare
   object-language `v_2`; the target restores `\Obj v_2`, matching every other
   displayed object-language variable and contributing the sole command-count
   delta.
4. **OLP-0172, `set-theory.tex`, source lines 123–126:** the formula defining
   functions lacks one outer right parenthesis. The target closes it as
   `\lif y = y')]])))`, restoring delimiter balance without changing the
   formula's clauses.
5. **OLP-0172, source lines 169–170:** the separation formula lacks one outer
   right parenthesis. The target closes it as `!A(x)))]]]`, restoring the
   intended quantified formula.

These are five distinct classes and five occurrences. No other source-to-
target mathematical divergence is admitted by the replay.

## Indonesian wording review

Three bounded wording decisions were independently rechecked:

1. The chapter title is `Teori dan Model-Modelnya`, preserving the relation
   between theories and their models without the rejected singular rendering
   `Modelnya` or needless reduplication of `Teori`.
2. The definition reads `Suatu himpunan disebut murni`, an idiomatic
   predication rather than the rejected calque `adalah murni`.
3. The empty set `tergolong murni`; `tergolong` preserves “counts as” as class
   membership rather than the weaker epistemic `dianggap`.

## Retraction of false uppercase-token findings

All seven earlier flags against target forms beginning `!!^{...}` are
**retracted as false findings**. They are valid Open Logic token syntax, not
untranslated markup or malformed commands. The primary grammar is
`doc/Tokenized-Text.md` in the frozen parent commit's documentation submodule:

- parent gitlink/submodule commit:
  `b46686df0e06f302a7b75a74b379c802f7c7b565`;
- `Tokenized-Text.md` blob:
  `e9b3c38ee123574e44e56a4145a67d714cc234aa`;
- worktree SHA-256:
  `3e5601e5711c74f3cc22f2fe08365d05b8e87754160e3f0f554edfc49bc86a80`.

That specification explicitly defines `!!^{_token_}` as the uppercase form
for sentence-initial use and `!!^{_token_}s` as its uppercase plural. The
seven target occurrences replay exactly as one plural `sentence`, one plural
`constant`, one singular and one plural `formula`, and three singular
`sentence` forms. The replay verifies that all 109 semantic-token occurrences
match the declared grammar and that no malformed `!!^` occurrence exists.

## Scope note

This receipt covers frozen-byte source/target binding, deterministic
structural and mathematical replay, correction assertions, token-grammar
replay, an untranslated-prose guard, and independent semantic review. This QA
task did not edit translations, locale configuration, build drivers, the
closure manifest, PDFs, project documentation outside this receipt, or Git
state. Build, extraction, rendering, manifest admission, and Git operations
remain parent-owned.
