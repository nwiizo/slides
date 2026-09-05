---
name: cognitive-rhythm-writing
description: Design, diagnose, or revise the cognitive rhythm of a Marp presentation by sequencing observation, question, explanation, evidence, contrast, and decision. Use when a technically correct deck feels flat, dense, monotonous, rushed, full of mechanical transitions, or weak in pacing and payoff even though its argument is already sound.
---

# Cognitive Rhythm Writing for Slides

Treat rhythm as a change in the audience’s cognitive task, not as a quota of short slides, questions, jokes, or visual variety. Preserve the argument while making attention shifts legible in live delivery.

## Purpose and boundary

- `$review-slide-flow` owns logical prerequisites and promise fulfillment.
- `$review-slide-comprehension` owns jargon, local projected load, and recovery after missed context.
- `$review-slide-narrative` owns audience transformation, empathy, and emotional payoff.
- `$trim-slide-redundancy` owns deletion and time-value decisions.
- This skill owns the sequence and duration of cognitive modes, density waves, section entry, question tension, and the division of labor between slide and speaker.

Report findings before edits unless the user explicitly asks for changes. Never use pacing to hide weak logic, unsupported facts, or missing context.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the complete deck, applicable slide-writing rules, and rendered output when visual density matters. Infer the audience, duration, delivery format, central claim, and non-negotiable facts. Number slides by rendered order.

Do not generate or revise the talk title unless explicitly requested.

## Required references

- For creation, restructuring, or section redesign, read [patterns.md](references/patterns.md).
- For diagnosis, editing, or a final rhythm pass, read [audit.md](references/audit.md).
- For edits that alter more than one section, read both and rerun the audit after rendering.

## Core model

- Use cognitive modes such as orient, observe, question, explain, test, contrast, decide, apply, reflect, and pause. Select only modes earned by the material; do not repeat a fixed cycle.
- Keep at least one real unresolved question, tested assumption, or promised demonstration active from the opening into the body. Give it an explicit payoff or remove it.
- Build rhythm from verified events, data, code, diagrams, trade-offs, counterexamples, and speaker-provided decisions. Do not manufacture suspense, confusion, or personal hesitation.
- A sparse slide must still change audience knowledge, expectation, or decision. Empty space alone is not a pause.
- A dense slide is acceptable when sustained comparison or close reading is the task; a run of dense slides requires a change in task or a recovery point.

## Workflow

1. Freeze the talk contract: audience, duration, central question, answer, intended decision, and facts or voice that must not change.
2. Build a mode map by slide or short range. Record the audience task, projected density, speaking burden, and open question at each point.
3. Inventory rhythm material already present: concrete observation, code result, diagram, surprise, constraint, alternative, test, and decision. Leave a section plain when the material does not support tension.
4. Build a question ledger. Pair every question, assumption, and promise with its payoff; remove artificial or unrecoverable openings.
5. Find long runs of the same mode, density, or speaking pattern. Diagnose whether the cause is repetition, missing evidence, misplaced theory, progress narration, or an absent decision.
6. Repair with the smallest content-grounded change: reorder a concrete before its theory, land a list in a decision, change speaker/slide roles, insert a verified test or counterexample, or preserve a functional pause.
7. Apply [audit.md](references/audit.md). Recheck facts, causality, qualifications, Marp structure, duration, and transitions around every changed range.

## Guardrails

- Do not add rhetorical questions, one-line slides, confessions, or transitions merely to create variation.
- Do not alternate assertion and doubt mechanically.
- Do not narrate the deck’s machinery with “next,” “we have seen,” or “now let us”; state the new situation or decision instead when one exists.
- Do not split dense content into contextless fragments or shrink away necessary qualification.
- Do not invent audience reactions, incidents, quotes, metrics, speaker feelings, or uncertainty.

## Output

Lead with high-impact rhythm failures. For each include slide evidence, current mode, intended audience shift, why it stalls or rushes, and the smallest repair. Then provide the mode map, density wave, question/payoff ledger, speaker-versus-slide role changes, recovery points, and protected sequences. After edits, report rendered/build evidence and any remaining factual, logical, or duration risk.
