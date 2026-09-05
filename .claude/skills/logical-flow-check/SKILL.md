---
name: logical-flow-check
description: Review the fine-grained logic inside Marp slides, including title-to-body alignment, claim-to-support steps, visual reading order, local question-answer pairs, and audience prerequisites. Use for local reasoning; use logic-proofreading for deck-wide contradictions, realism, risky advice, and causal consistency, and review-slide-flow for section order, slide sequencing, and promise fulfillment.
---

# Logical Flow Check

Expose the small reasoning steps that exist in the speaker’s head but are missing from the projected slide. Review first; edit only when the user asks for fixes.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the complete Marp Markdown, and the applicable slide-writing rules. Infer the intended audience, duration, and expected prior knowledge. Respect a user-specified section or slide range, but read enough surrounding slides to understand local context.

Number slides by rendered order. Use this skill for logic within one slide or a short run of slides. For section order, slide-to-slide sequencing across the deck, opening promises, and ending payoff, use `$review-slide-flow` as the primary review.

## Five axes

1. **Title and body alignment** — The title states the slide’s actual claim, and the body, diagram, or example supports that claim rather than a nearby one.
2. **Claim and support** — The audience can reconstruct why the evidence, comparison, or example justifies the punchline without silently adding a missing premise.
3. **Visual reading order** — Bullets, columns, arrows, tables, captions, and emphasis expose whether the relation is sequence, contrast, cause, decomposition, or result. Inspect rendered output when layout determines meaning.
4. **Local question and answer alignment** — A question slide is answered on the same or immediately following slide unless the delay is purposeful and clearly signaled.
5. **Audience synchronization** — Terms, actors, constraints, and examples appear before they carry a load-bearing inference for the intended audience.

Read [report-format.md](references/report-format.md) only when examples, a reusable report shape, or user-requested scoring would help.

## Workflow

1. State the deck’s thesis, intended audience, and the decision or understanding the talk should enable.
2. Write the intended claim of each reviewed slide in one sentence. Compare it with the title and punchline.
3. For each evidence-to-conclusion move, complete: “This support establishes ___, therefore the audience can conclude ___.” A weak completion exposes a missing premise or overstated conclusion.
4. Trace the visual reading order. Check whether position, arrows, labels, and emphasis express the same relation as the words.
5. Build local question and prerequisite ledgers. Search the full deck before marking an answer or definition missing.
6. Distinguish an actual logical gap from deliberate brevity, suspense, or material the speaker can safely supply aloud. Do not assume speaker narration can rescue a contradiction visible on screen.
7. Rank high-impact and recurring gaps ahead of isolated wording issues.

## Output

Lead with findings ordered by audience impact. For each finding include:

- location and minimal evidence;
- the conclusion the visible support establishes;
- the conclusion the slide asks the audience to accept;
- the missing premise or relation;
- the smallest repair, with sample wording when useful.

Then provide a compact local logic map, unanswered-question and missing-prerequisite ledgers, recurring patterns, and slides whose logic should not be disturbed. Use Critical, High, and Medium priorities. Do not calculate scores unless the user asks.

Do not demand visible prose for every spoken bridge or spell out premises the intended audience already shares. Preserve voice, useful ambiguity, and presentation-sized brevity when they do not block the inference.
