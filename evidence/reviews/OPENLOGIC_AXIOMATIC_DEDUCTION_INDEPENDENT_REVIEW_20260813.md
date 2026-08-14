# Open Logic Bahasa Indonesia — independent review: axiomatic deduction

**Date:** 2026-08-13  
**Disposition:** **PASS**  
**Bounded closure:** OLP-0112–OLP-0125 (14 files)  
**Frozen upstream commit:** `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
**Target directory:** `locale/id/content/first-order-logic/axiomatic-deduction`  
**Replay:** `locale/id/qa_axiomatic_deduction_batch_replay.ps1`  
**Replay SHA-256:** `209236fdb345a8c26efc629ccbfa7ce9c28946a7b40c139032a219b0727671da`

## Final independent disposition

The Indonesian OLP-0112–OLP-0125 target is independently accepted. I
replayed all fourteen units against the exact frozen Git objects and the
closure manifest, then reread all 103 reader-facing paragraph blocks against
the English authority. The review found no unresolved semantic omission,
reversal, quantifier-scope error, proof-rule error, terminology risk, or
untranslated English reader prose in this bounded batch.

Each target uses the localized `[id]` form for every `\olfileid` and
`\olchapter`. Unescaped braces balance. Ordered environment, label, reference,
citation, asset, and import sequences replay. Normalized command, semantic
token, math, math-environment, and formal-derivation structures replay after
only the exact source corrections enumerated below are admitted. The replay
also asserts the exact positive Indonesian correction and rejects the exact
source-defective form for every correction class.

The closure manifest intentionally still describes these targets as missing
and has blank target hashes; that manifest state was outside this bounded
writer task. The replay therefore binds the manifest's immutable closure ID,
order, commit, source path, source SHA-256, reachability, and target path, while
freezing the independently observed final target SHA-256 values below.

## Frozen source and target bindings

| ID | File | Git blob | Manifest source SHA-256 | Final target SHA-256 |
|---|---|---|---|---|
| OLP-0112 | `axiomatic-deduction.tex` | `daf6bdb930f3d83932f77b38e7a815773bd2f86a` | `ba510c171a8d19895307b36b2b06d3f64970bc5d926cfad52412da2a0727db20` | `f6b51089ffaa91997438e89c7f77d8c03842414183a1440c26d123fdc3acedc4` |
| OLP-0113 | `rules-and-proofs.tex` | `29cce9257ebb2a6bc649a00ceaaf0b40b8a47711` | `c630189af9db5f45a849e5d1b6362895bf575dd6d2236a169eb5e0fdba9ed439` | `b7bf7c025b50ba0176e40eb26306e512423c367cda2dc7fa8c4c9fa33b4c4988` |
| OLP-0114 | `axioms-rules-propositional.tex` | `c9e0eb0ce86616c6bc79ccd639271fb2237e2375` | `8d19f7612edbb87db30f052b75e8208638a5c68570ef05faf6332111fbbc69fe` | `a968d3270917509fb86700d86f252da796a932332858bb8a085296dfa7fe95d0` |
| OLP-0115 | `axioms-rules-quantifiers.tex` | `046dd4b36ea2a6c8bd6145953326e79d4d1fe66e` | `e860523ec9605b17fb155fccbb22e644837c26de84ab11439422af805a26e2b3` | `00fd11687f1f6bc10d4a00b5276c35e8aee05f66ea0a9019f09501623b718cc1` |
| OLP-0116 | `proving-things.tex` | `d3dcd56749dc7876722075559cf9ec66aba64d5a` | `ac5dc1913eb14bc8d0ba0adb9d45d08b0882f02c4d7f152b654fc153f61fb1a7` | `5c885977e1c8b31d2c7472951ba0c56294f11a51948d0471e19e18032e0255fb` |
| OLP-0117 | `proving-things-quant.tex` | `bea1d636ade4b4942457df3bf3fdd616f4331f57` | `afb6d653daa62d083e07ff556fdde130783b2643fdd23270e1ae0e1ec0140767` | `72885fc0cd43f42a70bedf6fdf01a488e974c233f6326ab2df53148b7651b664` |
| OLP-0118 | `proof-theoretic-notions.tex` | `d36ce9e4798829c23718d13fa30550aeaf922c29` | `d5cd7ef578090b935af9013ba65f020ea8c043b95ec17ed9a758a01129bbf859` | `0cde205089a80ce92a16b6396501e9686ad28d3e65f620586cc907918fced36f` |
| OLP-0119 | `deduction-theorem.tex` | `2e2ee0130e335a105b941daf8a84c107df7bbb2d` | `f74129e7541a9452530ebc0ab630c8763cd0d4177532baf43cd249c635642cd4` | `102ce64d4034f6b914cc93b843e7c73c3354b0b8d3fba25a70be0ffa4b49b78b` |
| OLP-0120 | `deduction-theorem-quantifiers.tex` | `48e057a3e5478ab3b50d0b6bec4c50fcc55dc0ed` | `0da5dfe61f218d9ef0820e07f1e6c0d71ef4e912d010e83e7484690bdd9af1e7` | `cd80372bb1abdbf88fe8ef34268239258484559adeeb5735f5c2b445c2472030` |
| OLP-0121 | `provability-consistency.tex` | `5de407f30a432c84bc0c76df20c611d279c5475c` | `069b652fa3cf1c8e7719ae95d355398b866c9ecf42ff747b755ddbf5fd3b6eef` | `9a5f29d51ddc4b455c8ea911c67935363ec1c612d72301ffdd159161abcf38bc` |
| OLP-0122 | `provability-propositional.tex` | `94086f3bf11b4866fe9e205ba3ca7e26fb34ab0b` | `4dd07507288e361d9d65dcbb7c3de67f4e3c83e9853b6d9032dcc9cba3cef187` | `0c6bedbe66b584de12a4421c1474ba80d838d9687f98eb2a4ce2e907bcd17a2a` |
| OLP-0123 | `provability-quantifiers.tex` | `2e60b409e16a4e2b301144df1fbe593e21004104` | `a0c03c490e2874b9946b5ff3942c8a4ba73696d13cca2b30e84a19d17dfb3066` | `311b6f11ef04d8bbfc27d3ad00e5173c8aefa12c493ac6760d22d5f5d54f21f6` |
| OLP-0124 | `soundness.tex` | `ff619e701406a54781ce042a21c1a6f993e5c482` | `a3a783ae2add6b2420527ad65c82eb6a5e0c02ac8a44e3b34b757bc27985c1cf` | `14c64cb630ca31848cf3f9bb6a891feb1e32da8b9100fc797a5ad3701bbe19fa` |
| OLP-0125 | `identity.tex` | `82635689d664a0147bd2df4a54dc0ebe9cae7c3a` | `424d98f16806276deeb9cc0c5e0d1f70d25dd2026f0fe25f03d65d1cde1d69e1` | `374b7ce8182cf8a6d0a8dc2c7708d23ff989adc2768b360f678ba003066a337f` |

The replay additionally freezes the SHA-256 of the raw content returned by
`git cat-file blob` for every listed object; this distinguishes exact Git
object bytes from the manifest's worktree-normalized SHA-256 values.

## Replay result

The final replay completed successfully:

```text
STRUCTURAL_TOTALS commands=1540 environments=250 semantic_tokens=142 labels=54 references=88 citations=0 assets=0 imports=13 math_skeletons=482 math_environments=6 formal_structures=5 localized_file_ids=21 localized_chapter_ids=2
CORRECTION_TOTALS classes=27 source_occurrences=29 positive=27 rejected=27
BINDING_DIGESTS source_set_sha256=8e7416b0860fe43fd7116585561c82291d904c0c64e4f65f5997825bb5fd2825 target_set_sha256=188ab8a93cbb307cb5ddc959c98da6e943789dba38cac07138dfadff591c19ba
AXIOMATIC_DEDUCTION_BATCH_REPLAY_OK files=14 checks=384 upstream=9620cc73f9c8e0ad003c514a5d3748f29611c4c0 closure=OLP-0112..OLP-0125
```

## Upstream-actionable findings

The following are defects or scope ambiguities in the frozen English source,
not Indonesian translation defects. The Indonesian target corrects the
defects where a determinate correction is available, and the replay binds each
correction to an exact positive/rejected pair.

- `rules-and-proofs.tex:40`: `A_i` lacks the formula marker (`!A_i`).
- `proving-things.tex:19–20`: “Our only rule is MP” is false in the FOL
  rendering, where the quantified rule is also available.
- `axioms-rules-quantifiers.tex:24–29`: both QR clauses omit the generalized
  matrix `A(x)` from the freshness condition.
- `proof-theoretic-notions.tex:19`: the PL branch defines semantic notions via
  valuations, not structures; the prose needs a tagged branch.
- `proof-theoretic-notions.tex:82–83`: `B_i` lacks the formula marker, and
  “the same rule” is too narrow because the copied step may instead have been
  justified as an axiom or premise.
- `proof-theoretic-notions.tex:127`: the compactness proof incorrectly says
  every inferred FOL step follows by modus ponens; it must allow every rule of
  inference, including QR.
- `deduction-theorem.tex:66–72`: the base case omits `B` before the membership
  sign and calls `A \lif B` a sentence where only formula status is warranted.
- `deduction-theorem.tex:77–79`: the FOL proof's parenthetical exhausts the
  non-MP cases without treating QR. The quantified case belongs in the next
  section and should be routed there explicitly.
- `deduction-theorem.tex:106–107`: the first displayed derivability fact is
  missing a closing formula parenthesis.
- `deduction-theorem-quantifiers.tex:31`: QR freshness omits `D(x)`.
- `deduction-theorem-quantifiers.tex:44`: the displayed formula is missing a
  closing parenthesis.
- `deduction-theorem-quantifiers.tex:48`: the final conclusion says
  `Γ ⊢ B`, but the theorem requires `Γ ⊢ A → B`.
- `provability-propositional.tex:33`: the second conjunction projection must
  cite `ax:land2`, not cite `ax:land1` twice.
- `provability-propositional.tex:50`: the negation step must cite `ax:lnot2`,
  not `ax:lnot1`.
- `provability-propositional.tex:58`: “ponsens” is a typo for “ponens.”
- `provability-quantifiers.tex:28–31`: the QR step omits `A(x)` from its stated
  freshness premises, and the final truth-axiom/modus-ponens step is
  incorrectly labeled as another use of the deduction theorem.
- `provability-quantifiers.tex:37–39`: quantified axiom instantiation requires
  `t` to be a closed term; the proposition omits that restriction.
- `soundness.tex:60–72`: the stated induction is on derivation length, but the
  decrease argument counts inference-justified steps. The measure must be made
  consistent.
- `soundness.tex:80–82,97`: formula markers are missing from occurrences of
  `B(x)` and `B(c)`.
- `soundness.tex:92–97`: the proof says the satisfaction condition holds only
  for members of `Γ`, but the relevant carrier is `Γ ∪ {C}`.
- `soundness.tex:87–105`: the QR soundness argument silently assumes that all
  premises in `Γ ∪ {C}` are sentences, although the earlier derivability
  definition allows formulas. Upstream should either state a sentence-only
  scope or make the soundness proof assignment-relative. This is a source
  scope ambiguity; the Indonesian target faithfully preserves the explicit
  sentence assumption rather than inventing a new theorem statement.
- `identity.tex:2`: the chapter comment says `axiomatic-proofs`; the actual
  chapter is `axiomatic-deduction`.
- `identity.tex:39,43–44`: both derived identity propositions instantiate
  closed-term axiom schemas, but omit the corresponding closed-term
  restrictions.

No additional upstream-actionable issue was found in OLP-0112–OLP-0125.

## Scope note

This receipt records the independent source/target and structural/semantic
disposition only. The requested writer did not edit translations, locale
documentation, ledger, closure manifest, build driver, PDF, or Git state, and
did not invoke a build. Build/render evidence is owned by the parent workflow
and is not required for the replay PASS recorded here.
