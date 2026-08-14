# Independent review — Open Logic id-ID OLP-0098--OLP-0111

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Scope: the complete fourteen-file chapter under
`content/first-order-logic/tableaux/`.

## Review result

Independent read-only AI semantic replay compared every final live source and
target pair. PASS: all fourteen targets preserve every paragraph, theorem,
proposition, problem, formula sequence, tableau, proof, sign, quantifier, side
condition, and reference after the exact source-correction dispositions below.
No reader-facing English, omission, introduced polarity/scope drift, material
register defect, or unresolved finding remains. The internal forest option
`not line numbering` is invariant code, not reader-facing English.

The deterministic replay passes 238 checks. It binds all source and target
hashes, 346 environment markers, 22 labels, 16 references, 13 imports, 587
mathematical skeletons, 51 formal tableau/proof blocks, and 24 positive/rejected
correction assertions; citations and assets are both zero.

## Exact final targets

| ID | Target | Bytes | SHA-256 |
|---|---|---:|---|
| OLP-0098 | `tableaux.tex` | 941 | `ab4171790819781dc0567587291c55d9d209a92233ac331275affa219a31eb9c` |
| OLP-0099 | `rules-and-proofs.tex` | 2,805 | `a66f529cfa1590d3b3c0cbb7e53bc5755bec6660d3d3e998ae22a1a9dea4eac8` |
| OLP-0100 | `propositional-rules.tex` | 2,373 | `3b5b2e713b3cc62ebc14b5f2290d89a84856c5ab46fda1155bd8d516a9b26984` |
| OLP-0101 | `quantifier-rules.tex` | 4,033 | `be2618d388ebfe18896cc68dd01e6c6053cdb389f0c9f30d27157d0a97b65d3b` |
| OLP-0102 | `derivations.tex` | 4,139 | `e5aaf511b84c09ec03f4c02c1f1c911c21fe72725dbea43c9c724f534b532516` |
| OLP-0103 | `proving-things.tex` | 18,631 | `f79e9535dd985bf948ef84154dba9de10e33bc8baa585cd098a981a0ccbe13fe` |
| OLP-0104 | `proving-things-quant.tex` | 13,733 | `62e3146a2ac1dd03cdb6b6b1e533d9bf192176c9aeadf231c960066b07f6b01c` |
| OLP-0105 | `proof-theoretic-notions.tex` | 6,047 | `30666351ff3c8a7b063d6c067d1e4fb9fde62b1ee8b9902e9043553167533f6c` |
| OLP-0106 | `provability-consistency.tex` | 6,363 | `bdc3328b70caee7c0f136cf32594d26af46cc3971230a0189756b50d804a425d` |
| OLP-0107 | `provability-propositional.tex` | 6,367 | `b93f566ed89a7177d7e565379e3d32b0d8eb1dd28e47e6a4446b5b27292c1863` |
| OLP-0108 | `provability-quantifiers.tex` | 3,175 | `af33d5f2bd6122254ff289f3843f25d33b50df927960fd8bc52d8c9e31d54d84` |
| OLP-0109 | `soundness.tex` | 11,862 | `57c4bec87ff1c14c1d93c790c823cbfa1208b14ec37c29e69921c4378c11efaa` |
| OLP-0110 | `identity.tex` | 3,556 | `426cb8468be193ddad85b6f4d1673a65219b7b6d7a5328873a10ef766f816d98` |
| OLP-0111 | `soundness-identity.tex` | 1,926 | `fd4ed83f68e90a6ad533a383341835970fb4b2c7ffae7b01ebe03c90690eb718` |

## Exact dispositions

- OLP-0098: editorial scope corrected from natural deduction to tableaux.
- OLP-0099: three surfaces distinguish first-order structures from
  propositional valuations.
- OLP-0100: no material source defect.
- OLP-0101: closed-term restriction made explicit; mixed quantifier-rule labels
  normalized without changing the rule.
- OLP-0102: bare `A` repaired to the required signed formula.
- OLP-0103: packed signed assumptions split into the two actual assumptions.
- OLP-0104: line reference corrected from 1 and 3 to 1 and 4.
- OLP-0105: PL/FOL carrier corrected; malformed finite-subset braces repaired;
  compactness witness explicitly typed as a subset of Gamma.
- OLP-0106: `C_n/C_m`, truth-sign premise, and `n+1/n+2` drift repaired, with
  two local prose defects corrected.
- OLP-0107: eight malformed two-argument signed-formula calls repaired.
- OLP-0108: redundant punctuation/copula removed without changing proofs.
- OLP-0109: premise-relative soundness and semantic carrier restored; five
  inconsistent `B/A` occurrences normalized to the theorem's `A`.
- OLP-0110: symmetry prerequisite corrected to `A(s_1)` and transitivity
  instance to `s_1,s_2`.
- OLP-0111: generic sign specialized to true; three dropped signed-formula
  qualifiers restored.

Human/native review is not claimed and is not an admission gate. Later review
may supply correction evidence against these exact frozen bytes.
