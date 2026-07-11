---
name: review-slide-suite
description: Coordinate and synthesize multiple specialist reviews of a Marp presentation into one coherent edit strategy. Use when a deck needs flow, claim depth, narrative, redundancy, and wit reviews together, or when specialist recommendations conflict over adding, cutting, moving, or rewriting slides.
---

# Review Slide Suite

Produce one prioritized decision set, not five concatenated reports. Preserve the talk’s central promise, factual integrity, duration, and speaker voice while resolving conflicts between specialist lenses.

## Select reviews

Use only the lenses relevant to the request:

- `$review-slide-flow`: prerequisites, reasoning, promises, order.
- `$deepen-slide-claims`: mechanism, evidence, scope, decision consequence.
- `$review-slide-narrative`: audience transformation, beats, payoff.
- `$trim-slide-redundancy`: time value, repetition, cuts, merges.
- `$review-slide-wit`: purpose, voice, context collapse, safety.

Add fact checking before rewriting externally verifiable claims. Add release verification after edits, not as a substitute for review.

## Default order

1. Establish audience, duration, central question, and answer.
2. Review flow and promises before polishing individual slides.
3. Test load-bearing claims before making them memorable.
4. Review narrative once the argument is stable.
5. Trim redundancy after required reasoning and payoffs are known.
6. Review wit last so clever phrasing cannot hide weak logic.

Change the order only when the user’s request clearly targets one lens.

## Synthesis workflow

1. Normalize every finding to: evidence, audience impact, proposed action, benefit, cost, confidence, and source lens.
2. Merge findings that diagnose the same underlying break. Keep the strongest evidence and list the contributing lenses.
3. Resolve conflicts with these rules:
   - factual accuracy and source support outrank elegance;
   - an unanswered central promise outranks slide-count targets;
   - missing reasoning outranks requests to add a transition;
   - comprehension and accessibility outrank aggressive compression;
   - a verified speaker voice outranks invented narrative or humor;
   - duration is a hard constraint, so every addition must name its offsetting cut or time cost.
4. Distinguish compatible changes from alternatives. Do not recommend both moving and deleting the same slide.
5. Build a dependency-aware edit sequence. Structural edits come before wording, layout, and PDF regeneration.
6. Protect strong moments explicitly so later passes do not flatten them.

## Output

Lead with one integrated backlog:

| Priority | Slides | Root problem | Evidence | Decision | Benefit | Cost/risk | Lenses |
|---|---|---|---|---|---|---|---|

Then provide:

1. **Talk contract** — audience, duration, central question, answer, promises.
2. **Conflict decisions** — competing recommendations and why one won.
3. **Edit sequence** — ordered, independently verifiable batches.
4. **Protected elements** — claims, examples, pauses, voice, or callbacks to retain.
5. **Validation plan** — what to re-review and rebuild after each batch.

Keep specialist detail available by reference, but do not repeat full subreports. If evidence is insufficient, ask a focused speaker question or mark the decision conditional.

Do not edit unless requested. When editing is requested, apply one coherent batch at a time and re-run only the lenses affected by that batch.
