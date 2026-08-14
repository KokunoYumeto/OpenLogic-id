# Independent semantic review — Open Logic Sets, Bahasa Indonesia

Date: 2026-08-12  
Authority: Open Logic commit `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`  
Target: `openlogic/locale/id`, reader locale `id-ID`  
Disposition: **conditional reject for unconditional admission**. There is no P1 loss of mathematical meaning or active content, but the two P2 items below should be resolved before this batch is admitted without qualification. The P3 item may remain tracked for later locale-wide cleanup.

Severity used here: P1 = meaning/content/structure blocker; P2 = correction or explicit adverse decision required before admission; P3 = nonblocking register/polish issue.

## Findings

### P2 — the name of `\Nat` conflicts with the supplied Indonesian exact-set convention

- Target `locale/id/content/sets-functions-relations/sets/important-sets.tex:17-18` calls `\{0,1,2,3,\ldots\}` *himpunan bilangan asli*, and lines 42-44 call `\{0,1\}` “dua bilangan asli pertama.”
- The supplied native comparators make the opposite lexical distinction: `qa/ut_struktur_aljabar.txt:121-123` calls `\{0,1,2,3,\ldots\}` *bilangan cacah* and `\{1,2,3,4,\ldots\}` *bilangan asli*; `qa/ui_himpunan_1_2020.txt:60` likewise gives `N=\{1,2,3,4,\ldots\}` for *bilangan asli*.
- The displayed formula prevents an actual membership ambiguity, and the English source itself chooses the convention `0\in\Nat`; nevertheless, the Indonesian labels currently contradict both supplied native sources and make “dua ... pertama” especially liable to be read as `1,2`.
- Before admission, either state explicitly that this text uses *bilangan asli* with `0` included (and preferably describe `\Bin` as “dua anggota pertama `\Nat`”), or adopt *bilangan cacah* consistently for this exact set. Record the decision in the terminology/adverse ledger; it is currently absent there.

### P2 — an English lexical accent command is incorrectly preserved as a structural invariant

- Target `locale/id/content/sets-functions-relations/sets/russells-paradox.tex:91,97` contains `na\"if`; the current PDF therefore renders the Indonesian word as French-looking `naïf` (the first occurrence is visible on PDF page 10; the second is conditional on the cumulative-part label).
- The target's own `TERMINOLOGY_AND_ADVERSE_LEDGER.csv:20` identifies normal Indonesian `naif` as preferred. The upstream `\"` is part of the English spelling `naïve`, not a mathematical or structural command that should survive translation.
- Correct both target occurrences to `naif`. The structural replay should permit this lexical command change (or compare structure after removing translated prose); its present command-sequence PASS rewards preservation of source-language orthography and would reject the correct Indonesian spelling.

### P3 — `Seksi` is a weak scholarly-register choice for an automatic section reference

- `locale/id/open-logic-locale.sty:42,66,84` maps `section` to `Seksi`; the compiled chapter consequently says `Dalam Seksi 1.1` for the reference generated from `unions-and-intersections.tex:13`.
- Across the supplied UI/UT/UIN/UNY comparator text set, an exact word scan found 0 instances of `seksi` and 225 of `bagian`; the UIN exact-sense book itself uses such prose as `Dalam bagian sebelumnya` (`qa/uinkhas_konsep_dasar_matematika.txt:3081`).
- Prefer `Bagian` (or `Subbab` if the eventual hierarchy policy requires it). This does not alter logic and need not block this bounded batch if retained as an explicit locale-wide register item.

## Passed checks

- I read all eight frozen English files in `content/sets-functions-relations/sets` and all seven current localized content files in full, together with the localized driver, include templates, locale/config styles, structural replay, status/build records, and terminology ledger. Apart from the items above, the Indonesian prose is semantically complete, accurate, internally consistent, and appropriate in university-textbook register.
- Active chapter completeness passes. Frozen `sets.tex:10-20` imports exactly six sections, and the localized `sets.tex:10-20` preserves the same six imports in the same order. The directory's eighth English file, `proofs-about-sets.tex`, has no target, but its own lines 12-15 say it is superseded and removed from this chapter by default, and it is not imported. Its absence is therefore not an omission from the active Sets batch. Because the programme scope is the complete eligible Open Logic corpus, its ultimate disposition should still be recorded later as either excluded/superseded or scheduled as dormant optional content; this batch does not close the whole corpus.
- Independent structural replay passed all 63 checks across the seven source/target pairs: 781 commands, 146 environments, 81 localization tokens, 7 labels, 7 references, 3 assets, 6 imports, and 327 normalized math skeletons are preserved. The six content IDs differ only by the intended `[id]` locale argument. All displayed and inline formulas checked against the frozen source retain their operators, variables, delimiters, and order.
- The three asset calls and their captions are present: `union.tikz`, `intersection.tikz`, and `difference.tikz` in `unions-and-intersections.tex:25-29,69-74,169-174`. Cross-reference and label identities are preserved.
- The current 11-page PDF builds without fatal errors, undefined references, or multiply defined labels. Extracted reader text contains no residual English environment/reference labels (`Definition`, `Theorem`, `Example`, `Problem`, `Proposition`, `Chapter`, `Figure`, `Section`, `Proof`, `Remark`, `Page`) and no `??`/`Undefined` marker. Token forms including `!!{element}s` and `!!a{element}` expand to Indonesian `anggota` with no English article residue.
- The exact-sense terminology requested for ordered structures passes. Target `pairs-and-products.tex:15,52-53,59-64` uses `pasangan terurut`, `tupel-$n$ terurut`, and `hasil kali Kartesius`. These agree with the visually checked UIN KHAS PDF page 95 / printed page 87, whose heading is `Pasangan Terurut dan Hasil kali Kartesius` and whose Definition 7.1 uses `pasangan terurut`, `tupel-2`, and `Tupel-n`.
- Other central surfaces—`himpunan`, `anggota`, `himpunan bagian`, `himpunan bagian sejati`, `himpunan kuasa`, `gabungan`, `irisan`, `saling asing`, and `selisih himpunan`—match the supplied UI/UT comparator usage and are used consistently.

## Admission recommendation

Do not treat this as whole-project closure: it is Sets batch 1 only. For the bounded active Sets chapter, admit after resolving and replaying the two P2 items. If an adverse-evidence policy permits provisional admission, record the `\Nat` convention explicitly and retain the `naïf` rendering only as a time-bounded exception; neither should pass silently as final `id-ID` reader text.
