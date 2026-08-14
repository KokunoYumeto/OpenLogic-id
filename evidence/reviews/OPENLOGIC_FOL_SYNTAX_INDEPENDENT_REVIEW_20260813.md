# Open Logic Bahasa Indonesia — independent review: first-order syntax

**Date:** 2026-08-13  
**Disposition:** **PASS — no unresolved Indonesian semantic findings**  
**Bounded closure:** OLP-0149–OLP-0158 (10 files)  
**Frozen upstream commit:** `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
**Target paths:** `locale/id/content/first-order-logic/syntax-and-semantics/{syntax,intro-syntax,first-order-languages,terms-formulas,unique-readability,main-operator,subformulas,formation-sequences,free-vars-sentences,substitution}.tex`  
**Replay:** `locale/id/qa_fol_syntax_batch_replay.ps1`  
**Replay SHA-256:** `80cd54f89f97be67be928703b0f8e2b7fec2d3058d85b9caf6db0dd1c71a3a81`

## Independent disposition

The live post-review Indonesian bytes for OLP-0149–OLP-0158 pass exact
source binding, structural replay, normalized mathematical replay, and
independent file-body semantic review. The replay resolves every closure row
to its immutable Git blob at the frozen commit, checks the normalized source
hash recorded in the 722-row closure manifest, and freezes every final target
SHA-256.

The replay compares the complete ordered LaTeX command sequence; 113 matched
environment pairs (226 ordered `begin`/`end` tokens); labels, references,
citations, assets, and imports; semantic-token multisets; 90 tagged items and
47 tag conditionals; all 793 normalized math segments and the one math
environment; brace balance; nine localized `\olfileid[id]` occurrences; and
the one valid, non-locale-overloaded `\olchapter` occurrence. It admits only
the ten path-scoped source/localization correction classes below, covering
twelve exact source occurrences.

No semantic omission, reversal, mathematical-token corruption, structural
loss, or unresolved reader-facing Indonesian defect remains detected in this
bounded tranche. The determinate upstream defects repaired in the Indonesian
target are preserved below for a later concise upstream issue; they are not
silently forgotten.

## Frozen bindings

| ID | Source path | Git blob | Manifest source SHA-256 | Final target SHA-256 |
|---|---|---|---|---|
| OLP-0149 | `content/first-order-logic/syntax-and-semantics/syntax.tex` | `26a53094f9884a8442f11a57571e9e59b7145386` | `75c0e56b3d2f9557e39b9006855f371e6c8f04e8ef9817affd70a793613930ab` | `3a1ddcbdb6a08b225561818d7d61ee0853cac79a96de7ee10eaf07950cf2c24b` |
| OLP-0150 | `content/first-order-logic/syntax-and-semantics/intro-syntax.tex` | `948a77a1d2c7c7c944a7032850481a1ac7862029` | `ba7dcce5f1e3340374ff693a1c22c5bf4ccb0c2709cd8c6d50474d4982f7cdfc` | `f438ff0f7e92c69dda03862c7bce61f5b71d0cc62fd7143bca6c387a2a036643` |
| OLP-0151 | `content/first-order-logic/syntax-and-semantics/first-order-languages.tex` | `35b5b1b562963cf6a36d58eeaa0d3c5376137001` | `582ea4b3b243fe2ee4eb627630172f77f014d4f7d7c93cd13fdb2bb70844c447` | `59ff47a62429b9a6d07104553b0ceb95a2309be466e24a6b9769364f86a0a7a7` |
| OLP-0152 | `content/first-order-logic/syntax-and-semantics/terms-formulas.tex` | `4e417155eb1b810453718bd957d96842c783b1ed` | `0b607ce2324ca66b23b164684f4f35b127107b903bbbd567eb25e94c2ce70210` | `56f2e81f01718dc932dc7ba8557b5743b6cc79ae3e12bf032ac8aace71e5ccc2` |
| OLP-0153 | `content/first-order-logic/syntax-and-semantics/unique-readability.tex` | `d9ecd7279fbe9254217503b7ca6d136661cafe79` | `f2ad2961312808ef6c8dedc884c9f8e00a2be9ef993cfb7be748a9d253d84e66` | `5bffef343bfb7d2c56e36af080d2ee3e0aaa4ea87fa61ce958ebb44da0aeb9a3` |
| OLP-0154 | `content/first-order-logic/syntax-and-semantics/main-operator.tex` | `a95d176157271c9cb68b61e42a1e2a23fca8bc30` | `1bc4cc76cc670fdb1069ca53312d13dfcf2ea8444adbb3d9ef4b8d31a5da41fc` | `9f302914484f2c2d59a093a507dffd2f5e502891acbfe312ec015c1b534acb8c` |
| OLP-0155 | `content/first-order-logic/syntax-and-semantics/subformulas.tex` | `ff11944f28c23dbbfc68531c3eaaff330b068f7c` | `4c43825e4c236e55d25092ff1f5b68ed38a3f1e9ae8ed12fc2e14f3a03fc6c77` | `94efc916c1448422d783ad000d60b28e418d0391c6957956a748659fb0e0e5f7` |
| OLP-0156 | `content/first-order-logic/syntax-and-semantics/formation-sequences.tex` | `64cc604fb5c222c25c3ceaa4bcfe7ba977dde6e8` | `dc1735bb077f5086c6fd6e2f968591415a9cba90b65bc0a3d412742cc62bc6ff` | `7c19a366726bc2944dc1d8458eddfc2f9ac432e71a9d8a837e03e1703834c972` |
| OLP-0157 | `content/first-order-logic/syntax-and-semantics/free-vars-sentences.tex` | `04b436c68f8d0965f763a39fd2dab3ea4494429c` | `ea6bea6e587867742143e68dd69a2674fc1544ffaae27236ba1f517fe516bf1f` | `1203b1fa75bba061ac7e92e496603bbb1b08c5c26182a0130cedc015f0c7f2ae` |
| OLP-0158 | `content/first-order-logic/syntax-and-semantics/substitution.tex` | `6a197db01cc1d8f9c87b5ce1ea0b9a64f6053f6b` | `19393c28f5f036da9c43ce10bfb5f1b2f330dca8cb2ad950d98eab5b1b7e83b2` | `474eda8d54af76d7bb262ea6211d114a0c2b17897b4629c42b050922ec5fcaf3` |

## Replay result

```text
STRUCTURAL_TOTALS commands=1430 environments=226 semantic_tokens=256 labels=20 references=16 citations=2 assets=0 imports=9 tagged_items=90 tag_conditionals=47 math_skeletons=793 math_environments=1 localized_file_ids=9 chapter_ids=1
CORRECTION_TOTALS classes=10 source_occurrences=12 target_assertions=10 target_review_assertions=4
BINDING_DIGESTS source_set_sha256=99908dd2f6e32d8cb2f018dd47c943123219cc93805a03015f3a8753941c0598 target_set_sha256=660c13dfbe7a039f2c4190c4eb857eedeb7a14f941bf80bf47e7ab96676439e9
FOL_SYNTAX_BATCH_REPLAY_OK files=10 checks=293 upstream=9620cc73f9c8e0ad003c514a5d3748f29611c4c0 closure=OLP-0149..OLP-0158
```

## Admitted source and localization corrections

1. `first-order-languages.tex`: repairs the malformed nested `\iftag`
   closure around the defined truth symbol, preserving the intended final
   punctuation inside the outer conditional branch.
2. `terms-formulas.tex`: removes the unmatched closing parenthesis in the
   `defIf` expansion `$\lnot !A \lor !B)$`.
3. `main-operator.tex`: moves the closing parenthesis inside math mode in the
   conjunction, disjunction, and conditional rows of the main-operator table
   (three exact occurrences).
4. `formation-sequences.tex`: changes both occurrences of the erroneous
   zero-based `m_0,\dotsc,m_k` indexing to the `k` arguments
   `m_1,\dotsc,m_k`.
5. The same file states the strong-induction measure in terms of the final
   index, rather than calling final index `m` a sequence length.
6. The same file changes two undeclared `\Frm[L_0]` occurrences to the
   controlling language `\Frm[L]`.
7. The same file replaces semantic-equivalence `\equiv` with syntactic
   identity `\ident` in the formation-sequence case split.
8. The same file localizes source `sub-!!{formula}` as the explicit Indonesian
   token `!!{subformula}`. This is the one language-specific token exception:
   retaining the source hyphen would render the rejected `sub-formula` rather
   than Indonesian `subformula`.

The source also has three ordinary editorial defects that are naturally absent
from the Indonesian prose: `intro-syntax.tex` has “will chose”;
`unique-readability.tex` has “intepretation”; and
`first-order-languages.tex` has a duplicated comma after “falsum.” These are
bound by positive Indonesian assertions and retained as upstream issue notes.

## Preserved upstream findings for later issue drafting

The future upstream note can remain short and source-path-specific:

1. `first-order-languages.tex`: malformed nested `\iftag` closure for
   `defTrue`, plus the duplicated comma in the list of names for `\lfalse`.
2. `terms-formulas.tex`: unmatched `)` in the `defIf` abbreviation.
3. `main-operator.tex`: the closing parenthesis lies outside math mode in
   three table examples.
4. `formation-sequences.tex`: a `k`-ary function is supplied `k+1` arguments
   by `m_0,\dotsc,m_k`; the induction prose conflates sequence length with
   final index; two occurrences use undeclared `L_0`; and the case split uses
   semantic `\equiv` where the surrounding definition requires syntactic
   `\ident`.
5. `intro-syntax.tex`: “will chose” should be “will choose.”
6. `unique-readability.tex`: “intepretation” should be “interpretation.”

## Parent-owned build prerequisites

The replay positively checks three definitions in
`locale/id/open-logic-config.sty`: the Indonesian `subformula` token, the
Indonesian `free for` token, and the localized reader surfaces of `\indcase`
(`atomik` and `latihan`). Their current file SHA-256 is
`3e3215e07c82e69014b34e78ede16777d6ea53450619088b9ffa92b892f5add0`.
They are parent-owned locale/build prerequisites, not deviations in the ten
translated content files.

## Scope note

This receipt covers frozen-byte source binding, deterministic structural and
math replay, and independent semantic review. The parent workflow owns the
bounded driver, TeX build, extraction, visual QA, closure-manifest admission,
checkpoint packaging, and Git operations. This review task did not edit
translation content, locale configuration, drivers, manifests, PDFs,
documentation outside this receipt, or Git state.
