# Open Logic Bahasa Indonesia — Size of Sets independent review

Date: 2026-08-13  
Frozen English authority: `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Scope: `OLP-0027` through `OLP-0040`, fourteen content TeX files  
Target root: `C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id\content\sets-functions-relations\size-of-sets`

## Independent semantic replay

Two independent read-only AI reviews compared the complete fourteen-file
Indonesian batch with the frozen English files. Neither review found a
translation-introduced mathematical omission or material semantic error. Their
findings exposed exact defects in the frozen English text; every admitted
correction below is path-scoped in
`locale/id/qa_size_of_sets_batch_replay.ps1`, so unrelated source divergence
still fails.

1. `pairing.tex`: the formula `k(k+1)/2` sums the positive integers through
   `k`, not those `< k`; the Indonesian prose states the correct range.
2. `pairing.tex`: an arbitrary pairing function is injective, not necessarily
   onto all natural numbers; the exercise now uses its partial inverse on its
   range to determine an enumeration.
3. `pairing-alt.tex`: the second pair in the displayed enumeration is
   `\tuple{0,1}`, not the source's `\tuple{0,2}`, and the row progression is
   `\tuple{2,m}`, `\tuple{3,m}`, not a duplicated `\tuple{2,m}`.
4. `non-enumerability.tex`: the comparative editorial reference is to the
   alternative non-enumerability section `nen-alt`, not `enm-alt`.
5. `reduction.tex` and `reduction-alt.tex`: the constructed sequence is `s`;
   the source's subscript `k` is undefined.
6. `equinumerous-sets.tex`: surjectivity of `f` supplies `f(x)=y`; the source
   incorrectly says `g(x)=y`.
7. `comparing-size.tex`: the quantified element is arbitrary in `A`, not in the
   diagonal subset `\overline{A}`.
8. `non-enumerability-alt.tex`: the prose row and column indices were
   transposed, the source repeats the bit change `1` to `0` instead of changing
   `0` to `1` in the second clause, and the proof premise is made explicit.
9. `reduction-alt.tex`: its problem label is namespaced `red-alt`; the source
   duplicates the standard reduction label and otherwise makes a combined
   reader build multiply define it.

## Source and target binding

The source hashes below equal the corresponding rows in
`OPENLOGIC_CLOSURE_MANIFEST_20260812.csv`.

| ID | Source path | Source SHA-256 | Target SHA-256 |
|---|---|---|---|
| OLP-0027 | `content/sets-functions-relations/size-of-sets/size-of-sets-complete.tex` | `d2b1a2f68e99efc2e5fd9f15316db26d7f898bd61135213309f61d28a6f00a60` | `1a80b217dbdf86000e9af7c7bc68373c467e7e8d0a132c5e66609227aa5f545d` |
| OLP-0028 | `content/sets-functions-relations/size-of-sets/introduction.tex` | `e771bd78d2b9819350b17f333524e22ce44a26647916f5b864cb934e380c1fb9` | `13dd66ffd264d1ad81c2745b73ca6bca9c75c947d5f332432b4c4c8ed0b9a4b6` |
| OLP-0029 | `content/sets-functions-relations/size-of-sets/enumerability.tex` | `7657db317a07eef9cd5497ad88997483dd43c9f94f27d257abe857084886a2fe` | `3b2638788e397807dc477a926ad1139f5af04218a09eb6b0994a987dbe13a0b2` |
| OLP-0030 | `content/sets-functions-relations/size-of-sets/zig-zag.tex` | `18bf058d52e22b9dbc7a08af314b58c81f35dd4009c0ccf726a0d00aec391dee` | `fd5851dfe02c9538df727e6daf6a2aa17d36178ae82cf7061b46e24fd980b633` |
| OLP-0031 | `content/sets-functions-relations/size-of-sets/pairing.tex` | `345a39184e28af727e378d5b5883b5e7d2e1c27cd729329376d19426ddaed484` | `d7aea9647ae10becb86d5651c7c9ba55ecdbe6720adc38c020134ac4facb830e` |
| OLP-0032 | `content/sets-functions-relations/size-of-sets/pairing-alt.tex` | `fd523f5306e1fd0e5c03f4c572d244fb017d1c0be27939f180bc6867a214e425` | `c13b173b3d3c72de6cfd857e87a5eec9cc668f30972287944e74225c2fe52a62` |
| OLP-0033 | `content/sets-functions-relations/size-of-sets/non-enumerability.tex` | `a272a841f8c50bda6589aac40278b9bff7f8a1f5284730c7195423b09ac3ba2e` | `ccc4057685093e27c2d08028a06b5c117882ed32be5f1a6f858a62d34bd390ea` |
| OLP-0034 | `content/sets-functions-relations/size-of-sets/reduction.tex` | `33f0cbb35c8c1fa3ff0e4f44fa626fdc298d1c4612aeaafb41bcb920e5d18ac8` | `555fbda106c70b8dee471c63556f8fa9103638db219b103494ba9838e43a9cab` |
| OLP-0035 | `content/sets-functions-relations/size-of-sets/equinumerous-sets.tex` | `7b0444e3293b300b72b7a6d49638913a778f5131fd94650dd64a5f11040c91f2` | `467fa6243836abe5b0f69b5213ddcdd10cdc30084610c31d4c57fad36045b46f` |
| OLP-0036 | `content/sets-functions-relations/size-of-sets/comparing-size.tex` | `cb92c7e6df9529ced700d708ad8c6efda9a0d8c3f8e69d08bcb4d614c6f5041b` | `b3e812ee60fde9610bac160a4ba9404f21e659b5bc5d1b74e1468669d6d11529` |
| OLP-0037 | `content/sets-functions-relations/size-of-sets/schroder-bernstein.tex` | `7b99b3e032e24e425383734ce80ad9a5cc37d018c09205e02f37b927d50bb56a` | `891ac859a773db2b36a182e3693cbf1f0bb7db6eec73b25f34bda3856a2ac582` |
| OLP-0038 | `content/sets-functions-relations/size-of-sets/enumerability-alt.tex` | `8ad8d8941a5ca6d1b4cd2cc351fc16a912d00273783c0358838dd4fa51fb4627` | `546cb899f390683054552eea1a5b5fcea2066cb08aac57ded28072d5484d3781` |
| OLP-0039 | `content/sets-functions-relations/size-of-sets/non-enumerability-alt.tex` | `0c20a2c420fbf4dbd801bb97e37799b3c602ae33ef2b1dc85ff94e24208ca2bb` | `d12c78053dcba2fb7dae7fee0612e91f3ce2b4f90b81f7032d4900d0a0eb23d2` |
| OLP-0040 | `content/sets-functions-relations/size-of-sets/reduction-alt.tex` | `46381b85c0e9a1ab48cb9301518de91f073d649c3b1119325c1409f5a6c1d663` | `de945bf5b1abd68f93d1d0309edd61a284cd456296ca7962068148862d01598b` |

## QA disposition

- Deterministic replay: PASS, 14 files and 210 checks.
- Source words: 8,429; Indonesian words: 7,666, each file counted once
  with TeXcount 3.1.1 and no recursive imports.
- Combined clean build through Size of Sets: PASS, 61 pages, 436,633 bytes,
  SHA-256 `43644ca531e5e058bb0bf2ee2fec89c304e5387546055087e358fd303c888d71`.
- Build log: zero fatal errors, undefined references/citations, multiply defined
  labels, or missing glyphs. Twelve small box warnings remain; maximum 5.589 pt.
- Extracted text: 143,990 bytes; zero unresolved markers and zero English
  environment/reference labels. The only English sentinel words after Bab 4
  occur in preserved bibliography titles.
- Render: pages 35–61 were rendered at 144 dpi. All 27 pages were inspected in
  contact sheets; formula-, table-, correction-, and diagonal-heavy pages 36,
  38, 40, 41, 43–46, 51, and 54–57 were also inspected at original render
  resolution. No clipping, overlap, blank page, lost formula, broken glyph,
  damaged table, or margin loss was found.

Result: admitted as a real contiguous production batch. Coverage becomes
40/722; the next deterministic cursor is `OLP-0041`,
`content/sets-functions-relations/arithmetization/arithmetization.tex`.
