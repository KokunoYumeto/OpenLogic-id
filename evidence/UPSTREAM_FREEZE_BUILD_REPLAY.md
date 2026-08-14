# Upstream freeze and build replay - 2026-08-12

## Scope and disposition

This is an independent, read-only replay of the official upstream trees used by the Bahasa Indonesia lane:

- OpenStax `osbooks-prealgebra-bundle`
- Open Logic Project `OpenLogic`

The upstream repositories were not edited. Baseline commands ran from separate system-temporary directories. No commit, push, network contact, translation build, or publication action was performed.

Result in one sentence: OpenStax XML and repository-graph integrity pass locally, but the repository does not contain a schema or a reproducible full-book renderer; OpenLogic documents an exact LaTeX route, but the isolated Sets-chapter baseline currently stops before PDF generation because the local MiKTeX dependency set cannot resolve `fixmath.sty`.

## Frozen authority

| Corpus | Official remote | Frozen commit | Git tree | Commit date/subject | Worktree state relevant to replay |
|---|---|---|---|---|---|
| OpenStax | `https://github.com/openstax/osbooks-prealgebra-bundle.git` | `38cae454e644abf9f0a623e876994553881597c9` | `7907e4c81d43de1c3b6da173f0eb273c01dc5b55` | `2026-06-29T23:52:34Z`, `errata 29593` | Clean at replay time. |
| OpenLogic | `https://github.com/OpenLogicProject/OpenLogic.git` | `9620cc73f9c8e0ad003c514a5d3748f29611c4c0` | `f67757bb9305b173634082ab4cefd5601a707a34` | `2026-07-12T10:36:14-06:00`, `better links to set-theory` | Official tracked tree unchanged. The shared worktree later acquired untracked `locale/id/` translation files; they are not part of this commit or upstream baseline. |

OpenLogic's initialized documentation submodule/gitlink was read at `b46686df0e06f302a7b75a74b379c802f7c7b565`; its checkout was clean.

## License exactness

### OpenStax

- Repository `README.md` and all three collection metadata records declare **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International**, URL `http://creativecommons.org/licenses/by-nc-sa/4.0/`.
- `LICENSE` is the CC BY-NC-SA 4.0 International legal code.
- `LICENSE` SHA-256: `AB1A44BBBA58252630134574D7B2534813339240EB645825FFCC2487DBE8114A`.
- This license permits adaptation and sharing only under its attribution, noncommercial, and share-alike conditions. A successful technical build would not remove those conditions.

### OpenLogic

- Repository `README.md`, `LICENSE.md`, and `doc/License.md` declare **Creative Commons Attribution 4.0 International** for the Open Logic Text.
- `LICENSE.md` SHA-256: `1094A30E124027CB4CFF48D932F1A8673D1386682A475A0EDC811F2162241FEC`.
- A translation is Adapted Material under the included legal code and must preserve the required attribution and license/source information. The current Sets sources call three tracked TikZ diagrams; no separate rights claim was found in those chapter calls, but release review must still preserve repository attribution and notices.

## File and unit inventory

### OpenStax frozen tree

- 13,738 tracked files.
- 240 module directories and 240 `modules/<id>/index.cnxml` files.
- 3 collection files and 240 total collection module references, all unique across the three books:

| Collection | Module refs | Subcollections | Collection SHA-256 |
|---|---:|---:|---|
| `prealgebra-2e.collection.xml` | 75 | 11 | `02CDB5F1517A9ABAF21B176DFB70C98F6398F74494848500C9097B631DB10B13` |
| `elementary-algebra-2e.collection.xml` | 82 | 10 | `F27C4C24AD42814DBE29430EF5B27A98C1521DD5AFE8FB9E67AD8B46A488ED14` |
| `intermediate-algebra-2e.collection.xml` | 83 | 12 | `ED13D605F98D2D20047089F46300C418AD6FFF72E2E16B010CEC5179934777EF` |

- 13,484 tracked media files.
- Every module is referenced by exactly one of the three collections; no collection references a missing module.

### OpenLogic frozen tree and Sets chapter

- 793 tracked entries, including 729 `.tex` files and 18 `.sty` files.
- The upstream `content/sets-functions-relations/sets/` directory contains 8 TeX files, 29,446 bytes, and 793 physical lines.
- The `sets.tex` chapter aggregator imports 6 section files: `basics`, `subsets`, `important-sets`, `unions-and-intersections`, `pairs-and-products`, and `russells-paradox`.
- Therefore the actual upstream Sets chapter is 7 compiled content units: 1 aggregator plus 6 sections.
- `proofs-about-sets.tex` is present in the directory but is not imported by `sets.tex`; it must not be silently counted as part of this chapter build.
- `unions-and-intersections.tex` calls 3 tracked TikZ assets: `union.tikz`, `intersection.tikz`, and `difference.tikz`.
- Upstream `sets.tex` SHA-256: `EEA34D38BB52811468A0025D348457A0F4D3F44AAE4B7CABB28551D6328E2785`.

At observation time the shared OpenLogic worktree also contained 13 untracked localized files under `locale/id/`: 11 TeX files and 2 style files, 36,047 bytes. Those consist of a `sets-id.tex` driver, 7 localized chapter content files, 3 localized include templates, and 2 locale/config style files. They were inspected only to identify the intended command; they were not frozen, edited, or built in this replay.

## Official workflow and configuration evidence

### OpenStax

The frozen repository contains no `Makefile`, package manifest, build script, test script, CI workflow, XSD, RNG, RNC, DTD, or Schematron grammar.

The documented official workspace surface is:

- `README.md`: GitHub Codespaces launch and links to the three OpenStax reader pages.
- `.devcontainer/devcontainer.json`: `mcr.microsoft.com/devcontainers/base:debian-12` with VS Code extensions `openstax.editor` and `redhat.vscode-xml`.
- `.gitpod.yml`: the same two extensions and port `27149` exposed publicly.
- `.vscode/settings.json`: associates `*.cnxml` with XML and configures the Red Hat XML server.

This is an editor/devcontainer declaration, not a full collection-rendering contract. No official local CLI invocation for producing a reader edition or PDF can be recovered from this repository alone.

### OpenLogic

The following official files were read:

- `README.md`
- `Makefile`
- `.github/workflows/build.yml`
- `doc/Compiling-OLT.md`
- `doc/Open-Logic-Quick-Start-Guide.md`
- `doc/Configuration-File.md`
- `doc/Selective-Processing.md`
- `doc/License.md`
- `locale/LOCALIZATION.md`
- `open-logic-locale.sty`
- `sty/open-logic.sty`
- `courses/sample/open-logic-sample.tex` and its config/Makefile

They establish the following official routes:

- Any section, chapter, or part can be compiled with `pdflatex`; multiple passes plus BibTeX may be needed.
- The documented automated route is `latexmk -pdf open-logic-debug`.
- The repository Makefile's pattern is `latexmk -pdf -dvi- -ps- -cd <file>.tex`.
- GitHub Actions runs `xu-cheng/latex-action@v2` on `open-logic-debug.tex`.
- A localization lives under `locale/<langid>/`, defines `\ollangid` and `\ollanguage`, supplies localized include/config/locale files, marks translated source units with the language id, and is selected automatically by `\olimport`.

## Installed local tools

| Tool | State |
|---|---|
| Git | 2.52.0.windows.1 |
| Python | 3.13.9; `lxml` 6.1.1; `defusedxml` 0.7.1 |
| `xmllint` | Present, libxml 2.12.10 |
| Java | OpenJDK 21.0.11 |
| Node/npm/pnpm | 22.17.0 / 10.9.2 / 11.16.0 |
| MiKTeX | 26.5 |
| `latexmk` | 4.88 |
| pdfLaTeX | MiKTeX-pdfTeX 4.27 |
| XeLaTeX / LuaLaTeX | Present |
| BibTeX / Biber | Present; Biber 2.21 |
| Pandoc | 3.9.0.2 |
| Perl | 5.42.2 |
| Indonesian Babel support | Present: `babel-indonesian.tex`, `indonesian.ldf`, and `bahasa.ldf` |
| Docker / Podman / VS Code CLI / GNU Make / Jing | Not present on PATH |

The direct OpenLogic dependencies inspected are present except for the transitive `fixmath.sty` requirement of `isomath.sty`. `import.sty` version 6.2 exists in the MiKTeX tree, but the first build could not resolve it; a subsequent lookup made it discoverable. This indicates that the local MiKTeX file-name database/package registration was initially inconsistent. No package-install command was intentionally run during this replay.

## Isolated replay evidence

Temporary replay root used:

`C:\Users\Floris\AppData\Local\Temp\interlanguage_upstream_replay_20260812_ee34865eabe74f099c3cb7fe0e96badc`

### OpenStax XML well-formedness

Working directory: the separate `openstax` temporary directory. Inputs were absolute read-only paths into the frozen source tree.

Exact PowerShell command shape executed:

```powershell
$repo = 'C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openstax-prealgebra'
$files = @()
$files += Get-ChildItem -LiteralPath (Join-Path $repo 'modules') -Recurse -Filter 'index.cnxml' -File
$files += Get-ChildItem -LiteralPath (Join-Path $repo 'collections') -Filter '*.collection.xml' -File
$files += Get-ChildItem -LiteralPath (Join-Path $repo 'META-INF') -Filter '*.xml' -File
foreach ($file in $files) {
    & xmllint --nonet --noout $file.FullName
    if ($LASTEXITCODE -ne 0) { throw "XML parse failure: $($file.FullName)" }
}
```

Outcome: **244/244 passed** - 240 CNXML modules, 3 collections, and `META-INF/books.xml`. `--nonet` prevented network retrieval.

A deliberate grammar-validity probe was also run:

```powershell
xmllint --nonet --valid --noout modules\m81241\index.cnxml
```

Outcome: exit 4, `Validation failed: no DTD found`. This is expected from the frozen files because they declare no DTD and the repository bundles no XML grammar. The 244-file pass is therefore well-formedness, not CNXML schema certification.

### OpenStax collection, module, link, and resource closure

An inline Python 3.13 / lxml 6.1.1 replay parsed with entity resolution disabled, network disabled, recovery disabled, and `huge_tree=True`. It asserted:

1. every module parses;
2. `md:content-id` matches its module directory;
3. content IDs, UUIDs, and element IDs are nonblank/unique in their applicable scope;
4. every collection module reference resolves;
5. every module occurs in the declared collection set;
6. every local `src` resource resolves relative to the module;
7. every cross-module `document` reference resolves; and
8. every referenced `target-id` exists in the target module.

Exact result:

```text
modules parsed:                 240
module parse/identity errors:     0
unique nonblank content IDs:    240
unique nonblank UUIDs:          240
duplicate IDs within modules:     0
collection refs / unique refs:  240 / 240
missing collection modules:       0
modules absent from collections:  0
local resource src refs:      11,009
missing local resources:           0
cross-module document refs:       808
missing referenced modules:         0
missing target IDs:                 0
process exit:                        0
```

This proves repository closure for the checked edges. It does not prove CNXML schema conformance, mathematical correctness, image semantics, accessibility quality, or successful full-book rendering.

### OpenStax full collection build

**Not available from the frozen repository.** No full-book builder or exact builder version is declared, and Docker, Podman, and the VS Code CLI are absent locally. It would be false to invent a command or call the structural replay a collection build.

### OpenLogic upstream Sets-chapter baseline

The official tracked OpenLogic tree was cloned locally into two independent temporary copies at the frozen commit. The source repository remained unchanged.

Exact command, run from the temporary clone's `content\sets-functions-relations\sets` directory:

```powershell
$env:MIKTEX_ENABLE_INSTALLER = '0'
latexmk -pdf -dvi- -ps- -interaction=nonstopmode `
  '-pdflatex=pdflatex -disable-installer %O %S' sets.tex
```

The installer was explicitly disabled so the replay would reveal the installed toolchain rather than silently changing it.

Attempt 1:

- `latexmk` exit 12.
- `pdflatex` could not resolve `import.sty` through MiKTeX at that moment.
- No PDF was created.

After dependency inventory made the physically present `import.sty` version 6.2 discoverable, a fresh temporary clone was used for Attempt 2:

- `latexmk` exit 12.
- The build loaded `subfiles`, `import`, `memoir`, Babel, AMS packages, and the OpenLogic style chain.
- It then stopped at `! LaTeX Error: File 'fixmath.sty' not found.` while loading `isomath.sty` version 0.6.1.
- Fatal markers: missing `fixmath.sty`, emergency stop, fatal error.
- No PDF was created; PDF page count, text extraction, render, and visual QA are therefore not applicable.
- The temporary clone's tracked state remained clean.

This is a toolchain failure, not evidence of a defect in the Sets source.

## Exact next commands

### OpenStax: safe local validation

Continue using the successful `xmllint --nonet --noout` pass plus the lxml closure replay above after every CNXML or collection change. Treat it as structural validation only.

### OpenStax: full rendered collection

The safest route is to obtain and freeze an official OpenStax renderer/container and its exact dependency lock from the corpus owner, then run it against commit `38cae454e644abf9f0a623e876994553881597c9` in an isolated output directory. The repository's Codespaces/devcontainer configuration can supply the documented OpenStax editing surface, but it is not evidence of a reader/PDF build. Do not promote a build command until the renderer name, version/digest, invocation, and expected artifacts are source-bound.

### OpenLogic: upstream Sets baseline after dependency repair

Repair the isolated TeX environment so `kpsewhich fixmath.sty` returns a file, refresh MiKTeX's file-name database if needed, and rerun with automatic installation disabled:

```powershell
Set-Location '<isolated-openlogic-clone>\content\sets-functions-relations\sets'
$env:MIKTEX_ENABLE_INSTALLER = '0'
kpsewhich fixmath.sty
latexmk -pdf -dvi- -ps- -interaction=nonstopmode `
  '-pdflatex=pdflatex -disable-installer %O %S' sets.tex
```

Success must mean exit 0 plus an emitted `sets.pdf`. It must then be checked with `pdfinfo`, rendered with `pdftoppm`, and visually inspected; a compiler exit alone is insufficient.

### OpenLogic: current localized Sets driver

The current untracked driver declares `\ollangid{id}`, routes `\olimport` to `locale/id/content`, loads Babel Indonesian, and imports the localized `sets` chapter. Once the upstream baseline succeeds, the exact localized command is:

```powershell
Set-Location 'C:\Users\Floris\Documents\interlanguage\04_mirrors\id\openlogic\locale\id'
$env:MIKTEX_ENABLE_INSTALLER = '0'
latexmk -pdf -dvi- -ps- -interaction=nonstopmode `
  '-pdflatex=pdflatex -disable-installer %O %S' sets-id.tex
```

That command was **not run here** because the authorization for this replay was upstream-only and the localized files are active, untracked work owned by another production worker. Before release, freeze their commit or hashes, verify all 7 expected localized content units, run the same log/PDF/render checks, and preserve the CC BY 4.0 attribution.

## Readiness and blockers

| Target | Current state | Blocking condition | Safest disposition |
|---|---|---|---|
| OpenStax individual CNXML modules | Structurally usable | No bundled schema; no semantic validator | Admit the 244-file well-formedness and graph checks only. |
| OpenStax three full collections | Graph-closed, not built | No declared renderer/build lock; devcontainer runtime unavailable locally | Freeze an official renderer before producing or claiming a reader build. |
| OpenLogic upstream Sets chapter | Exact build route known; build failed before PDF | Missing `fixmath.sty`; initial MiKTeX lookup inconsistency for `import.sty` | Repair/freeze TeX environment, then rerun in a clean isolated clone. |
| OpenLogic localized Indonesian Sets chapter | Exact driver route identifiable; not replayed | Active untracked translation files plus same unproven TeX dependency chain | Build only after upstream baseline passes and localized state is frozen. |

## Integrity statement

- No source repository file was edited by this replay.
- OpenStax remained clean at the frozen commit.
- OpenLogic's official tracked tree remained unchanged; the untracked `locale/id/` directory belongs to concurrent translation work and was not touched.
- No PDF was emitted by the OpenLogic baseline, so no page-count or visual-quality claim is made.
- No commit, push, publication action, or outreach occurred.
