---
name: draft-slide-deck
description: Design, draft, or restructure a Marp presentation from a talk brief, source material, or partial deck. Use when starting a new talk, turning notes or an article into slides, creating an outline, fitting a deck to an audience and duration, or repairing a draft whose structure is not yet stable.
---

# Draft Slide Deck

Turn source material into a talk the intended audience can follow in real time. Optimize for a clear promise and useful decision, not for covering every available fact.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the applicable template rules, and any existing deck completely. Gather the event, audience, duration, language, desired outcome, speaker evidence, and allowed assets. Infer missing context when safe; label assumptions that change the structure.

Use `.claude/skills/` as the skill source, registered theme names in front matter, and stable paths under `brands/{brand}/`, `assets/shared/`, or `assets/images/{year}/`. Never make a slide depend on a `vendor/` path.

## Choose a mode

- **Outline** — return the talk contract, section plan, slide jobs, and evidence gaps without writing a deck.
- **Draft** — create a new Marp Markdown deck from verified inputs and explicit placeholders.
- **Restructure** — preserve supported claims and speaker voice while replacing a weak outline or sequence.

## Workflow

1. Write the talk contract: audience situation, prior knowledge, central question, answer, promised capability or decision, why now, duration, and exclusions.
2. Inventory the available material. Separate verified facts, speaker-provided experience, examples, visuals, and code from claims or assets that still need evidence.
3. Set a time budget by section. Reserve time for orientation, explanation, examples, pauses, and the ending; do not derive quality from a fixed slides-per-minute ratio.
4. Select the smallest structure that earns the promise. Move from known constraints to a problem, mechanism, options, decision, and application when that sequence fits; do not force it onto a reference or hands-on talk.
5. Create a slide ledger. Give every slide one primary job such as orient, define, argue, evidence, exemplify, contrast, transition, recap, or close. Record its evidence, expected speaking burden, and relation to the previous slide.
6. Draft slide titles as useful topics, questions, or bounded claims. Keep projected copy scannable while preserving the context the speaker cannot safely leave implicit.
7. Use diagrams, tables, or images only when they reduce explanation cost. Mark missing visuals as explicit placeholders; never fabricate a metric, quote, experience, screenshot, or source.
8. Apply the repository density rules. Split at a change of idea before shrinking text below the allowed limit, and do not create a thin slide whose only purpose is carrying leftover detail.
9. Resolve the opening promise in the ending. The summary may restate the decision and boundary but must not introduce a new thesis.
10. Check Marp syntax, theme, asset paths, citations, slide adjacency, and unresolved placeholders. Build the target when the task includes file edits and the repository rules require it.

## Guardrails

- Adapt articles or notes to live delivery; do not paste paragraphs into slides.
- Do not generate or revise the talk title unless explicitly requested; preserve the user’s title or use a visible placeholder.
- Preserve uncertainty, counterexamples, and accepted costs that bound a recommendation.
- Do not invent personal stories or rewrite the speaker into a generic inspirational voice.
- Do not add agenda, transition, or action-item slides mechanically.
- Prefer a coherent partial draft with a verification queue over polished unsupported content.

## Output

For outline work, provide the talk contract, time budget, section map, slide ledger, and evidence or asset queue. For file edits, summarize structural decisions, assumptions, placeholders, and builds performed. Recommend `$review-slide-flow` after the structure is stable and `$fact-check-slides` before externally verifiable claims are finalized.
