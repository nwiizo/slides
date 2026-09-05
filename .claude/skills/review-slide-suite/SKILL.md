---
name: review-slide-suite
description: Coordinate and synthesize multiple specialist reviews of a Marp presentation into one coherent edit strategy. Use when a deck needs flow, comprehension, claim depth, fact checking, adversarial pressure-testing, narrative, cognitive rhythm, redundancy, wit, and copy polish together, or when specialist recommendations conflict over adding, cutting, moving, or rewriting slides.
---

# Review Slide Suite

Produce one prioritized decision set, not concatenated specialist reports. Preserve the talk’s central promise, factual integrity, duration, and speaker voice while resolving conflicts between specialist lenses.

## Select reviews

Use only the lenses relevant to the request:

- `$review-slide-flow`: prerequisites, reasoning, promises, order.
- `$logical-flow-check`: title-to-body logic, claim support, visual reading order, local questions.
- `$review-slide-comprehension`: first-listen understanding, projected load, jargon, recovery.
- `$deepen-slide-claims`: mechanism, evidence, scope, decision consequence.
- `$fact-check-slides`: external facts, versions, figures, quotations, attribution.
- `$logic-proofreading`: contradictions, realism, risky advice, causal and editorial consistency.
- `$review-slide-adversarial`: counterarguments, hidden assumptions, failure conditions, hostile Q&A.
- `$review-slide-narrative`: audience transformation, beats, payoff.
- `$cognitive-rhythm-writing`: cognitive modes, density waves, question tension, speaker/slide roles.
- `$trim-slide-redundancy`: time value, repetition, cuts, merges.
- `$review-slide-wit`: purpose, voice, context collapse, safety.
- `$polish-slide-copy`: projected wording after structural, factual, and voice decisions are stable.

Use fact checking when external premises carry the argument or wording may be stale. Add release verification after edits, not as a substitute for review.

## Default order

1. Establish audience, duration, central question, and answer.
2. Review flow and promises before polishing individual slides.
3. Check local slide logic before treating a gap as a comprehension or wording problem.
4. Test first-listen comprehension before treating missing context as redundant.
5. Test load-bearing claims and verify material external premises before making them memorable.
6. Proofread the stabilized claims for contradictions, realism, unsafe advice, and consistency.
7. Pressure-test the claims and their supported boundaries.
8. Review narrative once the argument survives substantive objections.
9. Review cognitive rhythm after the narrative functions and real sources of tension are known.
10. Trim redundancy after required reasoning, context, defenses, payoffs, and functional pauses are known.
11. Review wit after substantive objections are resolved so clever phrasing cannot hide weak logic.
12. Polish projected wording after structure, claims, facts, duration, and speaker voice are stable.

Change the order only when the user’s request clearly targets one lens.

## Synthesis workflow

1. Normalize every finding to: evidence, audience impact, proposed action, benefit, cost, confidence, and source lens.
2. Merge findings that diagnose the same underlying break. Keep the strongest evidence and list the contributing lenses.
3. Resolve conflicts with these rules:
   - factual accuracy and source support outrank elegance;
   - a grounded adversarial finding outranks rhetorical strength, but a speculative attack does not;
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
