# OLP-0722 Indonesian local package receipt

Date: 2026-08-14  
State: **COMPLETE LOCAL FOUR-ASSET PACKAGE / INDEPENDENT REPLAY CLEAN**

## Release identity

- Product: complete Bahasa Indonesia edition of the frozen Open Logic Project
  corpus, OLP-0001--0722 (722/722 editable targets).
- Source authority: commit
  `9620cc73f9c8e0ad003c514a5d3748f29611c4c0`, tree
  `f67757bb9305b173634082ab4cefd5601a707a34`.
- Stable Indonesian concept DOI: `10.5281/zenodo.21932786`.
- Reserved exact version DOI: `10.5281/zenodo.21932787`, record `21932787`.
- Planned standalone tag: `id-olp-0722-20260814`.

## Exact public surface

| File | Bytes | SHA-256 |
|---|---:|---|
| `00_OPENLOGIC_id_COMPLETE_LINKED_READER_OLP-0722.pdf` | 5,591,857 | `FE6174AFFBB3174CEC813630E4D7608ACDAFA89FE044BFFC486B62E66E6A161C` |
| `01_OPENLOGIC_id_EDITABLE_SOURCES_OLP-0722.zip` | 1,579,549 | `DA9B31D93C95DACA31093FB0DF6D4BDE99BFFBB14A9671BF30AFD07DB2D92283` |
| `02_OPENLOGIC_id_EVIDENCE_AND_PROVENANCE_OLP-0722.zip` | 1,996,165 | `939F7A17D704A72D56860BE8E374AE9B5414D1C3FE2F93096E32E2F8E4789A2B` |
| `03_OPENLOGIC_id_SHA256_MANIFEST_OLP-0722.txt` | 401 | `EE6A023F0B5AA50E164289136284D48FC91E71D2B0C70BCACFBAC7B26D596695` |

## Independent package audit

- Output set: exactly four files, `PASS`.
- Reader: 1,116 pages; frozen byte identity, `PASS`.
- Editable-source ZIP: 748 files / 4,197,684 uncompressed bytes;
  747/747 internal manifest rows replay exactly; 722 translated content TeX
  targets; zero missing, extra, hash, byte, duplicate, case-duplicate,
  path-traversal, credential-name, or VCS-path errors.
- Evidence/provenance ZIP: 211 files / 9,876,686 uncompressed bytes;
  210/210 internal manifest rows replay exactly; zero missing, extra, hash,
  byte, duplicate, case-duplicate, path-traversal, credential-name, or VCS-path
  errors.
- Credential-content scan: no GitHub or Zenodo token form, bearer header,
  client secret, or credential file entered either archive.
- Unrelated OpenStax and canonical-registry trees were excluded from the
  Open Logic evidence archive; their original local data was not altered.

The outer SHA-256 manifest has three payload rows and replays the reader and
both ZIPs. Its own identity is recorded above. This receipt was created after
the four assets were sealed and is intentionally not recursively embedded in
either ZIP or the three-row manifest.

At this boundary the package is ready for GitHub and Zenodo publication. This
receipt itself does not claim that publication or public readback has occurred.
