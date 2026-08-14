# Open Logic Bahasa Indonesia — independent review: first-order semantics

**Date:** 2026-08-13  
**Disposition:** **PASS — no unresolved Indonesian semantic findings**  
**Bounded closure:** OLP-0159–OLP-0166 (8 files)  
**Frozen upstream commit:** `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
**Target paths:** `locale/id/content/first-order-logic/syntax-and-semantics/{semantics,intro-semantics,structures,covered-structures,satisfaction,assignments,extensionality,semantic-notions}.tex`  
**Replay:** `locale/id/qa_fol_semantics_batch_replay.ps1`  
**Replay SHA-256:** `affe4ae38757ccd6863e1b897bbaaa47cb66f946ffda57c4ec886a4afd251852`

## Independent disposition

The final Indonesian bytes for OLP-0159–OLP-0166 pass immutable-source
binding, manifest/worktree binding, exact target-hash binding, deterministic
structural replay, normalized mathematical replay, an English-residue guard,
and independent line-by-line review of all prose and formulae.

The replay resolves every source path to its exact Git blob at the frozen
commit; verifies the normalized source hash in the closure manifest; compares
the complete ordered LaTeX command sequence; 216 ordered `begin`/`end`
tokens; semantic-token multisets; labels; references including `\cref` and
`\Cref`; citations, assets, imports, tagged items and tag conditionals; all
901 normalized inline/display math segments and ten nested/outer math
environment structures; brace balance; seven localized `\olfileid[id]`
occurrences; and the one valid, non-locale-overloaded chapter command.

No semantic omission, reversal, mathematical corruption, structural loss, or
untranslated reader-facing English remains detected. The exact source
corrections carried by the target are positively asserted and recorded below.
The only remaining upstream matters are low-priority clarification/cleanup
candidates; they do not constitute defects in the Indonesian target.

## Frozen bindings

| ID | Source path | Git blob | Manifest/worktree source SHA-256 | Final target SHA-256 |
|---|---|---|---|---|
| OLP-0159 | `content/first-order-logic/syntax-and-semantics/semantics.tex` | `569227c7b5f6b44230c0392194f568b9e70d3e51` | `d863c375746602be962b1b45545d8a51e72f9d0d9dca516f434152131b4107ec` | `a9bf46b0f32cb4633cb1fb3552e2e7a2e519dfe619124f2648a3c4ca1774ef12` |
| OLP-0160 | `content/first-order-logic/syntax-and-semantics/intro-semantics.tex` | `bac67ec61bc04d95d8202dde15e79f4a1bef8323` | `0bcf5a399c46716183aba26ed6d331abae45bdb63ed5bb26b3a7085b840e86e4` | `3c6bdbfc0a9020e7ab5a797fba8c6062f35b8efb9cec5cc62f5b1248a66c7933` |
| OLP-0161 | `content/first-order-logic/syntax-and-semantics/structures.tex` | `5ffecb882e223ddc1affe5fef81cf8cd3d5342c1` | `653be0fbc8ef1d61d9f39e7515bd1b1b1911f42147e0131a3235670e677cc241` | `a9f1fc465009a8b3e38e46bccc115197af6688184463c3e6e377282c6ecf38c5` |
| OLP-0162 | `content/first-order-logic/syntax-and-semantics/covered-structures.tex` | `7205721e991a8d175bdccb9e615367f8571e3758` | `47b8c3e2f2455d6fdefbf11157cae904e95c858545997fd9b22e7a2a8a1948d7` | `45bfc051d07a91c2d5bc4f03b080265ff092e243fd7b56ce235b47b7ee5b181b` |
| OLP-0163 | `content/first-order-logic/syntax-and-semantics/satisfaction.tex` | `1f505fb63513659faa8075b0d19509226c950950` | `e44b0bea8c5d130077516bc8d757f46d4b337517aab77049841581313820fd32` | `38a4d1b51e3406b30c68c0ac32f2be1189322331406958d97132feabd842ab00` |
| OLP-0164 | `content/first-order-logic/syntax-and-semantics/assignments.tex` | `ed2c6c103dc13dbc2a31a780c04389e7b58fa4ed` | `158d852e2ead50b060a48332cac8c72c475cfc206d3dab7aac24a01be3ff1771` | `808427c766665df2107766266569acb123ccf23bdd35f11a1744aede965fdaec` |
| OLP-0165 | `content/first-order-logic/syntax-and-semantics/extensionality.tex` | `f1d9999e344f16881e372e2019001ef27f1064d4` | `b96be00c844c1a06be3dc8c18e237fdb595ed60b18462b01bca43e6886d1da4d` | `71dc6cec748ff3d6365144e240f1b2d0d30d96a3937d64d86b3ee959466c2203` |
| OLP-0166 | `content/first-order-logic/syntax-and-semantics/semantic-notions.tex` | `29823842c73b388dd545f47a95cafe15cc1165a0` | `8b8740c064a3a876ff0cdf5dacd51bb8d3bbba87256fe49180de5f7c80fe08dd` | `0c44c2f78686776ff359618bdee857c21854501c1bbb6f63992ecbc9e66ba370` |

## Replay result

```text
STRUCTURAL_TOTALS commands=1894 environments=216 semantic_tokens=246 labels=17 references=22 citations=0 assets=0 imports=7 tagged_items=37 tag_conditionals=23 math_skeletons=901 math_environments=10 localized_file_ids=7 chapter_ids=1
CORRECTION_TOTALS source_classes=23 source_occurrences=26 structural_normalizations=18 target_assertions=23 target_review_assertions=1
BINDING_DIGESTS source_set_sha256=a62e0bdd463c6152371597c2bf87ff175466de13b5d99498e905854280f2140e target_set_sha256=5e84209b9795f16388bdfa609d6abcd16dcc20823204b5baceb2d2083f5221ad
FOL_SEMANTICS_BATCH_REPLAY_OK files=8 checks=259 upstream=9620cc73f9c8e0ad003c514a5d3748f29611c4c0 closure=OLP-0159..OLP-0166
```

The reference total is twenty `\olref`/`\Olref` occurrences plus two
`\cref`/`\Cref` occurrences. The replay's ten math-environment records count
outer and nested structures: five `align*`, two `multline*`, two `aligned`,
and one `cases`.

## Admitted source and review corrections

1. `intro-semantics.tex`: replaces the unary-only description “functions
   from the domain to itself” with the arity-neutral statement that function
   symbols receive operations on the domain. This is high-confidence: the
   surrounding language explicitly permits arbitrary finite arities.
2. `structures.tex`: repairs “a single-two place relation” as one two-place
   relation. This is high-confidence and purely lexical.
3. `covered-structures.tex`: removes the duplicate equals sign across the
   `multline*`/`aligned` break. This is high-confidence mathematical
   typography.
4. `satisfaction.tex`: pluralizes “basic notion” because two notions are
   named, and distinguishes the structure's constant values from the
   variable assignment's variable values. Both are high-confidence grammar
   and subject-attribution repairs.
5. The same file changes the quantified formula's immediate subformula from
   one that necessarily “has” a free variable to one that “may have” one.
   This is high-confidence: vacuous quantification is syntactically allowed.
6. The same file restores the omitted existential `\Sat{M}{!B(m)}` clause in
   the prose explanation. This is high-confidence and required for the
   existential/universal conditional alternatives to be parallel.
7. The same file removes the spurious assignment argument `[s]` from the
   interpreted relation `\Assign{R}{M}`. This is high-confidence type repair.
8. The same file repairs two malformed `defEx` negation parentheses and one
   stray comma inside an existential satisfaction formula. These three
   occurrences are high-confidence delimiter/punctuation defects.
9. The same file repairs `R(a,x)` to `R(x,a)` in the `defAll` antecedent
   analysis; restores the missing `m` in `$m=2$`; and changes the outer
   quantifier variable from `n` to `m`. These are high-confidence because the
   preceding formula and the nested assignment calculation fix the roles.
10. The same file replaces the invalid shared witness `n=4` with `n=4` when
    `m=1` and `n=1` when `m=2`. This is high-confidence from the displayed
    interpretation `R={(1,1),(1,2),(2,3),(2,4)}`.
11. `assignments.tex`: changes the first tuple component from `t_i` to `t_1`.
    This is high-confidence because the tuple is explicitly enumerated from
    `1` through `k`.
12. The same file defines `s_1'` from `s_1` and `s_2'` from `s_2`, rather
    than defining both from an undeclared `s`. This covers two corrected base
    assignments and is high-confidence from the proof's hypotheses.
13. The same file removes a duplicate `~$\Gamma$` in the definition of
    satisfaction of a set. This is high-confidence editorial cleanup.
14. The same file localizes source `sub-!!{formula}` as `!!{subformula}`,
    avoiding the rejected mixed-language rendering `sub-formula`. This is an
    exact Indonesian semantic-token exception.
15. `extensionality.tex`: corrects stale section metadata from
    `substitution` to `extensionality`, replaces “size of the domain” with the
    domain itself, and restricts the auxiliary term claim to terms occurring
    in the formula. These are high-confidence: cardinality alone is
    insufficient, and interpretations need agree only for symbols in the
    formula.
16. The same file removes the duplicate equals sign at a `multline*` break and
    adds the missing premise that `t'` is `!!{free for}` `x` in `!A` to the
    substitution lemma. Both are high-confidence; the latter is required to
    exclude variable capture.
17. `semantic-notions.tex`: adds the missing premise that `!A` has no free
    variables other than `x` in the fresh-constant exercise. This is
    high-confidence because the conclusion uses sentence satisfaction.
18. Independent Indonesian review repaired the biconditional proof's
    exclusive alternatives in `assignments.tex`: the two conjunctions are
    joined by ordinary `atau`, not the inclusive “baik ... maupun ...”. The
    replay asserts both corrected occurrences and the absence of the rejected
    construction.

The 23 replay classes separate related assertions by path and defect type;
the conceptual list above groups closely related defects for readability.

## Preserved upstream clarification candidates

These are deliberately not silently converted into target changes:

1. **Medium confidence — `assignments.tex`, final semantics-without-variable-
   assignments problem:** the source should say explicitly that the constants
   `c,c_1,...,c_n` used for reassignment are fresh and mutually distinct (and
   that the displayed iterated expansion is read with those fresh symbols).
   The current text only says `c_i` are not in `!A`; this is plausibly
   understood from context but merits clarification.
2. **Low confidence — `semantic-notions.tex`, `prop:quant-terms`:** the opening
   `Let \Struct{M} be a structure` is harmless but unused in the proposition
   statement itself, since entailment already quantifies over structures and
   the proof later introduces the relevant model. It is cleanup, not a
   semantic error.

Retracted audit candidates are not findings: repeated local label names are
valid under the Open Logic file-ID namespace; closed-term values correctly
omit `[s]`; the domain-variant phrasing and the hereditary-finite construction
are coherent in context.

## Scope note

This receipt covers frozen-byte source/target binding, deterministic
structural and mathematical replay, an untranslated-prose guard, explicit
correction assertions, and independent semantic review. This QA task did not
edit translations, locale configuration, drivers, the closure manifest,
build products, PDFs, project documentation outside this receipt, or Git
state. Build, extraction, rendering, manifest admission, and Git operations
remain parent-owned.
