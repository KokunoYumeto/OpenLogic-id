# Open Logic id-ID Relations and Functions independent replay

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Reviewed target: `C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id`

## Scope and method

An independent read-only semantic replay compared every reader-facing sentence,
definition, example, proposition, proof, problem, caption, and terminology choice
in the nine Relations files (`OLP-0011` through `OLP-0019`) and seven Functions
files (`OLP-0020` through `OLP-0026`) with the frozen English files. The review
was followed by exact structural replay, a clean combined build, extracted-text
checks, and rendered-page inspection. English remains the semantic authority;
the exceptions below are explicit corrections of defects in that authority, not
silent drift.

## Findings and dispositions

| Unit | Finding | Disposition |
|---|---|---|
| `equivalence-relations.tex` | The English example incorrectly calls `a`, `b`, and `n` positive even though its own `[0]` class requires zero. | Indonesian says arbitrary natural `a,b` and positive integer `n`. |
| `trees.tex` | The English branch definition uses undefined `X \setminus B`. | Indonesian uses the declared carrier `A \setminus B`. |
| `trees.tex` | The English subtree example admits the empty prefix-closed set although the preceding tree definition requires a root. | Indonesian requires a nonempty prefix-closed subset. |
| `relations-as-sets.tex` | The English example defines `\Id{A}` but then uses undefined `I` in three formulas. | Indonesian uses `\Id{\Nat}` in all three formulas. |
| `orders.tex` | The English text uses `R^+` for reflexive closure, then later in the same chapter uses `R^+` for transitive closure. | The local reflexive closure is named `S = R \cup \Id{A}` throughout the proposition and proof. |
| `graphs.tex` | `sisi` is too generic for the ordered-pair members of a directed graph. | The definition uses `busur`, supported by the UNY directed-graph comparator at extracted-text lines 175--178; the generic opening may still use `sisi`. |
| `function-basics.tex` | “Positive square root” fails at `0`, while this corpus fixes `0 \in \Nat`. | Indonesian uses “akar kuadrat utama, yaitu akar kuadrat nonnegatif.” |
| `inverses.tex` | The claimed left inverse need not exist when the domain is empty and the codomain is nonempty; the proof then cannot select `a`. | The Indonesian proposition and proof state that the domain is nonempty before making the choice. |
| `function-kinds.tex` | A source-line break after `kadang-` produced an incorrect visible space. | The source now contains the contiguous word `kadang-kadang`. |

No other material semantic omission or mistranslation was found in these sixteen
content files. These corrections are encoded as exact, path-specific replay
exceptions. Any unrelated command, environment, label, reference, asset,
import, identifier, or mathematical-skeleton divergence still fails.

## QA disposition

- Relations replay: `RELATIONS_BATCH_REPLAY_OK files=11 checks=176`.
- Functions replay: `FUNCTIONS_BATCH_REPLAY_OK files=7 checks=105`.
- Combined build: exit 0, 36 pages.
- Final PDF: 312,855 bytes; SHA-256
  `98b32b34fa0df63609227fb2e9b4fc1f33b73ae4ec6285ebe57b86b4ed8c2807`.
- The final build has no undefined reference, undefined citation, missing glyph,
  underfull box, or Relations/Functions overfull box. Five previously inspected
  Sets overfull boxes remain, maximum 5.589 pt, with no visible loss.
- All 36 pages were inspected across the initial complete render; after the
  dispositions above, affected pages 13, 18--20, 26, and 28--32 were re-rendered
  at 180 dpi and inspected at original resolution. No clipping, overlap, broken
  glyph, lost formula, missing diagram, or unresolved reference was found.

