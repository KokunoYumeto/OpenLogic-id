# Open Logic upstream-findings reporting protocol

Date adopted: 2026-08-13  
Frozen source authority: `OpenLogicProject/OpenLogic@9620cc73f9c8e0ad003c514a5d3748f29611c4c0`

## Controlling user instruction

Translation-to-source disagreements must never be silently lost. During the
complete Bahasa Indonesia translation, every suspected upstream mathematical,
logical, editorial, structural, or reader-facing defect is recorded against
the exact frozen source path and locator, together with the original form, the
Indonesian edition's disposition, the reason, the smallest defensible proposed
upstream change, confidence, and independent replay status.

After the complete 722-file Indonesian closure is translated and admitted,
prepare one concise, human-readable upstream GitHub issue. It must:

1. say that the complete Indonesian edition exists and link to its maintained
   branch or release, without asking upstream to merge the full translation;
2. say that the work was performed at the user's direction by **OpenAI 5.6
   Sol, Ultra mode** (**OpenAI's current flagship model for complex work**);
3. list only credible, upstream-actionable findings, grouped so maintainers can
   review them quickly;
4. give each finding an exact frozen source path/line or stable object locator,
   a one-sentence explanation, and a minimal bounded diff or replacement;
5. distinguish certain contradictions/typos from interpretive questions and
   invite the authors to accept, reject, or refine each suggestion;
6. avoid a raw adverse-ledger dump, automated-certification language,
   endorsement implications, and any request to merge the Indonesian branch.

No issue is opened before whole-corpus closure unless the user explicitly
changes that timing. The final issue is an upstream courtesy report, not an
authority request and not a publication gate.

## Evidence sources

- `locale/id/TERMINOLOGY_AND_ADVERSE_LEDGER.csv`
- every `OPENLOGIC_*_INDEPENDENT_REVIEW_*.md` receipt in this control directory
- every batch replay script and its path-scoped correction assertions
- the frozen source file itself at the commit above
- the final target file and its admitted SHA-256

The eventual issue draft must be regenerated from these exact artifacts after
the 722-file closure, not from a compaction summary or model recollection.
