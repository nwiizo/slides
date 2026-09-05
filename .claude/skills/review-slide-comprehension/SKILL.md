---
name: review-slide-comprehension
description: Review whether an intended audience can understand a Marp presentation on first listen. Use when a deck may assume too much background, overload projected text, introduce jargon or diagrams too quickly, compete with the speaker, or make it hard to recover after a missed slide.
---

# Review Slide Comprehension

Evaluate the deck as a time-bound audiovisual experience, not as a document a careful reader can reread. Find the smallest repairs that restore audience orientation and agency.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the complete deck, and applicable slide-writing rules. Infer the audience, event, duration, and expected prior knowledge from the deck and nearby documentation. State assumptions that materially affect the result.

Number slides by rendered order. When layout or legibility matters, inspect rendered HTML or images; Markdown text alone cannot prove visual comprehension.

## Workflow

1. Describe the intended audience in terms of what they already know, what vocabulary they use, and what decision or capability they need after the talk.
2. Run a first-view test on the title and opening: identify the subject, stakes, promise, and assumed context available before the audience commits attention.
3. Build a prerequisite ledger for terms, acronyms, actors, symbols, diagrams, code, and prior conclusions. Verify that each is introduced before it carries reasoning.
4. Give every slide one listening task. Flag slides that require reading one argument while the speaker must explain a different one.
5. Check local load: number of independent ideas, unfamiliar terms, cross-references, visual decoding steps, and clauses that must be held in working memory.
6. Check cognitive rhythm across sections. Alternate explanation, concrete evidence, comparison, decision, and breathing room only where the subject supports the shift; do not add rhetorical questions or sparse slides as decoration.
7. Test recovery. Imagine the audience misses one slide or one definition; find the next place they can reorient without losing the rest of the talk.
8. Check examples and diagrams for transfer: labels, direction, scale, legend, highlighted relationship, and the bridge from the example to the audience’s situation.
9. Ask the plain questions a capable newcomer would ask. Search the whole deck before treating a missing answer as a defect.
10. Rank only issues that affect understanding, retention, or action. Distinguish missing context from material intentionally excluded by the talk contract.

## Finding labels

- **BLOCKED** — a required concept or relation cannot be reconstructed in real time.
- **OVERLOADED** — the content may be correct but exceeds the slide’s listening or visual budget.
- **AMBIGUOUS** — wording, reference, diagram, or terminology supports multiple material readings.
- **RECOVERY GAP** — one missed moment makes later slides inaccessible.
- **WORKS** — the slide provides enough context and a clear task without overexplaining.

## Guardrails

- Do not equate beginner-friendly with removing technical precision.
- Do not demand a definition for vocabulary the stated audience can reasonably know.
- Do not solve overload by shrinking text, narrating every bullet, or adding repeated summaries.
- Do not infer comprehension from visual polish or emotion from dramatic styling.
- Report findings first; edit only when the user asks.

## Output

Lead with the highest-impact findings. For each, include slide evidence, audience assumption, failed listening task, consequence, and minimal repair. Then provide the prerequisite ledger, load map, recovery points, plain audience questions, and protected slides that already work.

Use `$review-slide-flow` for missing reasoning, `$trim-slide-redundancy` for safe cuts, and `$polish-slide-copy` only after the comprehension repair is chosen.
