# Open Logic Bahasa Indonesia closure measurement receipt

Date: 2026-08-12  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Repository: `C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic`

## Result

The complete English-content closure is **722 tracked TeX files**, all included.
No English content file is excluded. The manifest contains 53 columns and one
row per file, with stable ID, exact path and SHA-256, source measurements,
inclusion class, ordered import and incoming-import dependencies, asset
locators, structural object counts, exact target path/hash/status, four QA
fields, review metadata, and next action.

- Canonical complete-reader reachable: 642 files.
- Retained but not reachable from that reader: 80 files.
- Retained non-reader partition: 59 `content/proof-theory/**` files and 21
  other tracked English content files.
- Current translated target files: 8.
- Current missing target files: 714.
- Current QA-populated translated rows: 8.
- Unresolved uncommented `\olimport` edges: 0.

The manifest's source totals are 3,051,826 bytes, 76,179 physical lines,
367,178 approximate alphabetic tokens, 5,466 explicit environments, 725
resolved import edges, and 17 explicit asset/input locators. These are
deterministic structural measurements and scheduling locators, not claims of
semantic equivalence or finished reader builds.

## Inclusion and stable-order rule

The source population is exactly the result of:

```text
git ls-tree -r --name-only 9620cc73f9c8e0ad003c514a5d3748f29611c4c0 -- content
filter: path ends in .tex
```

This includes every tracked English TeX file below `content/`, including
draft, alternative, and currently unimported files. It excludes top-level
drivers, style/configuration files, locale trees, bibliography files, and
binary assets from the *content-file row population*; their relationships are
recorded as dependencies where a content file names them. There is no
rights-, quality-, reachability-, or localization-based source exclusion.

Stable order is:

1. ordered depth-first first visit beginning with
   `content/open-logic-about.tex` and then `content/content.tex`;
2. recurse through uncommented `\olimport` edges in exact source order;
3. append all still-unvisited tracked English content files in ordinal
   normalized-path order.

This yields OLP-0001 = `content/open-logic-about.tex`, canonical order 1;
OLP-0642 = `content/reference/fraktur-alphabet/fraktur-alphabet.tex`, canonical
order 642; and OLP-0643 through OLP-0722 as retained non-reader files. The
first global continuation cursor after the admitted OLP-0001 translation is
OLP-0002, `content/content.tex`.

## Exact resolution of 692 versus 722

The 692 figure is reproducible, but it measures a different repository tree:
the official Portuguese localization repository
<https://github.com/OpenLogicProject/OpenLogic-pt.git> at commit
`51c227190f56bae45d19a85747fc031de430bd3c` contains exactly 692
`content/**/*.tex` files. Against the frozen English population there are 684
shared paths, 38 English-only paths, and 8 Portuguese-only paths; therefore
`684 + 38 = 722` and `684 + 8 = 692`. The net difference is 30 files. The
Portuguese count is architecture/history evidence, not an English-closure
inclusion rule.

English-only paths (38):

```text
content/proof-theory/natural-deduction/grafting.tex
content/proof-theory/natural-deduction/introduction.tex
content/proof-theory/natural-deduction/natural-deduction.tex
content/proof-theory/natural-deduction/quantifiers.tex
content/proof-theory/natural-deduction/rules-N1.tex
content/proof-theory/natural-deduction/rules-N2.tex
content/proof-theory/natural-deduction/rules-proofs.tex
content/proof-theory/natural-deduction/sequents.tex
content/proof-theory/natural-deduction/translation-G2i.tex
content/proof-theory/natural-deduction/translation-N2i.tex
content/proof-theory/normalization/introduction.tex
content/proof-theory/normalization/normalization-thm.tex
content/proof-theory/normalization/normalization.tex
content/proof-theory/normalization/permutations.tex
content/proof-theory/normalization/reductions.tex
content/proof-theory/normalization/segments.tex
content/proof-theory/normalization/translations.tex
content/proof-theory/proof-search/completeness.tex
content/proof-theory/proof-search/introduction.tex
content/proof-theory/proof-search/proof-search.tex
content/proof-theory/proof-search/rules-Tc.tex
content/proof-theory/proof-search/search-algorithm.tex
content/proof-theory/proof-search/tableaux.tex
content/proof-theory/propositions-as-types/introduction.tex
content/proof-theory/propositions-as-types/normalization.tex
content/proof-theory/propositions-as-types/proof-terms.tex
content/proof-theory/propositions-as-types/proofs-to-terms.tex
content/proof-theory/propositions-as-types/propositions-as-types.tex
content/proof-theory/propositions-as-types/reduction.tex
content/proof-theory/propositions-as-types/rules-tN2.tex
content/proof-theory/propositions-as-types/rules-tN3.tex
content/proof-theory/propositions-as-types/sequent-natural-deduction.tex
content/proof-theory/propositions-as-types/terms-to-proofs.tex
content/proof-theory/propositions-as-types/type-preservation.tex
content/proof-theory/propositions-as-types/types.tex
content/proof-theory/sequent-calculus/rules-G1i.tex
content/proof-theory/sequent-calculus/rules-G3i.tex
content/proof-theory/sequent-calculus/rules-mG3i.tex
```

Portuguese-only paths (8):

```text
content/intuitionistic-logic/propositions-as-types/introduction.tex
content/intuitionistic-logic/propositions-as-types/normalization.tex
content/intuitionistic-logic/propositions-as-types/proof-terms.tex
content/intuitionistic-logic/propositions-as-types/proofs-to-terms.tex
content/intuitionistic-logic/propositions-as-types/propositions-as-types.tex
content/intuitionistic-logic/propositions-as-types/reduction.tex
content/intuitionistic-logic/propositions-as-types/sequent-natural-deduction.tex
content/intuitionistic-logic/propositions-as-types/terms-to-proofs.tex
```

## Reproduction and integrity

Run from any PowerShell working directory:

```powershell
& 'C:\Users\Floris\Documents\interlanguage\04_mirrors\id\_control\generate_openlogic_closure_manifest.ps1'
```

The generator hard-fails unless the local authority commit, 722-file source
count, 642/80 reachability partition, and 59/21 non-reader partition all match.
It strips TeX comments without treating an escaped percent sign as a comment,
resolves import paths relative to their source files, and writes UTF-8 without
a byte-order mark. The title and token fields are explicitly locator-grade;
the exact source path and SHA-256 remain controlling.

- Generator SHA-256:
  `70b1edef69c3274bc7256bd9b31fb9158dc3a478b898216ac3a20b597ae313f3`
- Manifest SHA-256:
  `e2d18a32d54426d7ffecc27f10da17410ffd35dad775563856691bf43e33bd08`
