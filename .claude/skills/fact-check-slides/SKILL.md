---
name: fact-check-slides
description: Verify externally checkable claims, numbers, quotations, specifications, versions, diagrams, and source attributions in a Marp presentation. Use when preparing technical or public slides, checking whether citations support slide wording, validating time-sensitive claims, or building a source-backed correction queue.
---

# Fact-check Slides

Protect audience trust by matching claim strength to current primary evidence. A citation is not verification until its contents, version, scope, and attribution have been checked.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the complete deck, and any comments or speaker notes that affect a visible claim. Number slides by rendered order and inventory visible URLs, figure captions, quoted text, code, charts, screenshots, and claims embedded in images.

Use official documentation, standards, papers, datasets, release notes, or other primary sources. Browse for current evidence when the claim may have changed. If evidence cannot be accessed, mark the claim unverified and name the exact source or query needed; do not fill gaps from memory.

## Workflow

1. Extract a claim ledger. Include facts, quantities, dates, superlatives, causal statements, quotations, definitions, product behavior, compatibility, and claims implied by charts or diagrams.
2. Prioritize load-bearing, time-sensitive, safety-relevant, surprising, and screenshotable claims. Routine connective wording does not need a citation ledger.
3. Classify each item as external fact, speaker-provided experience, inference, recommendation, or rhetorical framing. Do not present experience or inference as independently verified fact.
4. Open the cited source and verify that it supports the exact wording, population, denominator, time window, version, and boundary used on the slide.
5. Check attribution: author and title, official figure caption or number, publication year, quote wording, and whether the deck relies on a secondary source or translated paraphrase.
6. Check technical material against the applicable version. Execute commands or examples when safe and relevant; compare shown output with actual output and record the environment.
7. Audit charts and numbers for units, axes, baseline, sample size, aggregation, omitted conditions, and whether a visual comparison exaggerates the evidence.
8. Check links and local citation placement. A source should remain identifiable in the projected slide or public PDF without depending on private notes.
9. Replace unsupported certainty with a bounded statement only when the evidence supports that repair. Do not weaken correct precise claims into vague prose.
10. Recheck the title, opening promise, punchlines, summary, and standalone screenshots after local corrections; these often preserve an outdated stronger claim.

## Status labels

Use `verified`, `incorrect`, `outdated`, `misleading`, `partially supported`, or `unverified`. Record an absolute verification date for time-sensitive material.

## Guardrails

- Prefer one direct primary source over many weak summaries.
- Do not treat search snippets, AI summaries, or citation counts as evidence.
- Do not fabricate a source, URL, test result, quote, or figure number.
- Separate factual corrections from disagreements about framing or recommendation.
- Report first and edit only when requested.

## Output

Lead with incorrect, outdated, or load-bearing unverified claims. For each claim provide the slide, exact wording, status, evidence, source link, scope or version, audience risk, and smallest supported correction. Finish with verified claims worth preserving, an unresolved verification queue, and commands or environments used for executable checks.

Route weak mechanisms or recommendations to `$deepen-slide-claims` and contested premises to `$review-slide-adversarial` after the factual ledger is stable.
