# Potential upstream corrections found during the Indonesian translation

The [complete Indonesian edition](https://github.com/KokunoYumeto/OpenLogic-id)
was produced from
`OpenLogicProject/OpenLogic@9620cc73f9c8e0ad003c514a5d3748f29611c4c0`.
While translating and replaying all 722 content files, we found the bounded
items below. This is a courtesy report, not a request to merge the Indonesian
translation. Please accept, reject, or refine any suggestion as appropriate.

The work was performed at the direction of Floris by **OpenAI 5.6 Sol, Ultra
mode** (**OpenAI's current flagship model for complex work**).

## High-confidence corrections

| Frozen source locator | Why it looks wrong | Minimal proposed change |
|---|---|---|
| `content/sets-functions-relations/arithmetization/rationals.tex:54` | The prose reverses the subtraction used immediately below to characterize `r <= s`. | `r - s` -> `s - r` |
| `content/sets-functions-relations/relations/trees.tex:94` | The branch definition uses undefined carrier `X`; the tree carrier is `A`. | `X \setminus B` -> `A \setminus B` |
| `content/sets-functions-relations/relations/relations-as-sets.tex:98-100` | The example defines `\Id{A}` but then uses undefined `I` three times. | Replace the three `I` occurrences with `\Id{\Nat}`. |
| `content/sets-functions-relations/functions/function-basics.tex:70` | “Positive square root” excludes the value at `0`, although this reader has `0 in Nat`. | `positive square root` -> `principal nonnegative square root` |
| `content/sets-functions-relations/functions/inverses.tex:63-74` | An injection from the empty set to nonempty `B` has no left inverse, and the proof cannot choose `a in A`. | Add `A \ne \emptyset` to the proposition and proof premise. |
| `content/sets-functions-relations/size-of-sets/pairing-alt.tex:21,39` | Both prose tuples contradict the displayed enumeration. | `(0,2)` -> `(0,1)`; second `(2,m)` -> `(3,m)`. |
| `content/sets-functions-relations/size-of-sets/equinumerous-sets.tex:75,91` | The relevant surjection/bijection is `f`; `g` is undefined or denotes the enumeration. | Both `g(x)=y` -> `f(x)=y`. |
| `content/sets-functions-relations/infinite/card-sb.tex:52` | The nested `\cardeq` is malformed and does not state the helper proposition used by the proof. | `\cardeq{\cardeq{A}{B}}{C}` -> `\cardeq{B}{C}` |
| `content/first-order-logic/axiomatic-deduction/deduction-theorem-quantifiers.tex:48` | The proof has derived the deduction-theorem conclusion, not merely `Gamma |- B`. | `\Gamma \Proves !B` -> `\Gamma \Proves !A \lif !B` |
| `content/first-order-logic/beyond/second-order-logic.tex:56,142`; `higher-order-logic.tex:87` | Three tokens conflict with the preceding atomic-formula definition, the declared postfix-successor signature, and the lambda binder type. | `\Obj{R}` -> `\Atom{R}`; `s(x)=s(y)` -> `x'=y'`; binder `\sigma` -> `\tau`. |
| `content/model-theory/basics/isomorphism.tex:89,96` | The right-hand term must be interpreted in `M'`, and the next calculation lacks the outer closing parenthesis. | `\Assign{f}{M}` -> `\Assign{f}{M'}`; add `)` before `\notag`. |
| `content/model-theory/interpolation/separation.tex:75` | The preceding sentence names conjunction `H`; `\delta` is unrelated and undefined. | `\lnot \delta` -> `\lnot !H` |
| `content/computability/computability-theory/russells-paradox.tex:16` | Russell's contradiction is `S in S iff S notin S`, not a statement about undefined `X`. | `X \notin S` -> `S \notin S` |
| `content/turing-machines/machines-computations/representing-tms.tex:88`; `undecidability/representing-tms.tex:114,145`; `undecidability/trakhtenbrot.tex:182` | Each local form conflicts with the displayed configuration, free variables, changed tape square, or finite-domain bound. | `state one` -> `state q_0`; `sentences` -> `formulas`; `A(x,y)` -> `A(x',y)` in the left-move clause; `max(k,len(w))` -> `max(k+1,len(w))`. |

## Three questions rather than asserted errors

1. `content/sets-functions-relations/infinite/dedekind-algebra.tex:41-65`:
   `A` is unbound and “any function” appears broader than the closure proof.
   Would an explicit carrier and endofunction `f:A->A`, with `o in A`, match
   the intended formulation?
2. `content/model-theory/basics/isomorphism.tex:125-127`: invariance under every
   automorphism fails for arbitrary parameter-definable sets. Should
   “definable” be “parameter-free definable,” or should automorphisms be
   required to fix the parameters?
3. `content/first-order-logic/beyond/intuitionistic-logic.tex:66-72`: the
   calculation proves `a^b=2` but not that `b=log_3(4)` is irrational. A short
   addition could note that rational `b=p/q` would give `3^p=4^q`, contrary to
   unique prime factorization.

## Explicitly excluded after replay

The report intentionally excludes valid project syntax (`!!^{...}`,
`!!{denumerable}s`, `!{}`, `\Sat/`), the iterated-binder ellipsis, the
second-order “not free” comprehension condition, the S5 universal-frame
presentation, valid empty-partial-isomorphism conventions, Indonesian-only
register choices, and findings later retracted by independent replay.

The full path-scoped evidence, dispositions, and retractions are preserved in
the release evidence archive and the repository's independent-review receipts.
