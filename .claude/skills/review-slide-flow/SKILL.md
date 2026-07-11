---
name: review-slide-flow
description: Review a Marp presentation’s logical flow from the audience’s point of view. Use when checking section order, slide-to-slide reasoning, unanswered questions, hidden prerequisites, promise fulfillment, transitions, or whether a proposed reordering will make a talk easier to follow.
---

# Review Slide Flow

Trace the reasoning an audience must reconstruct in real time. Find the smallest changes that restore continuity without adding decorative transition slides.

## Inputs

Read the target Markdown completely. If present, also read `vendor/3shake-marp-templates/.claude/rules/slide-writing.md`. Infer the intended audience, duration, and central question from the deck and nearby documentation. State uncertain assumptions; do not stop unless different assumptions would reverse the recommendation.

Number slides by rendered order and record each title. Refer to evidence as `slide N, “Title”` plus a short quotation or paraphrase.

## Workflow

1. Write the talk’s central question and proposed answer in one sentence each. If either cannot be stated, record that as a critical finding.
2. Build a promise ledger from the title, agenda, opening questions, and explicit “what you will learn” statements. Locate where each promise is answered or mark it open.
3. Partition the deck into sections by conceptual purpose, not visual separators. Give every section one job.
4. For each section boundary, identify the reasoning relation: consequence, contrast, decomposition, escalation, example, objection, synthesis, or application.
5. For each adjacent slide pair, complete: “Because the audience just learned ___, they are now ready to consider ___.” A weak or impossible completion exposes a gap.
6. Check prerequisites: terms, evidence, actors, constraints, and prior conclusions must appear before they are used.
7. Model the audience’s likely question after each major claim. Verify that the next slide answers it or deliberately postpones it with a clear reason.
8. Test the ending against the promise ledger. A summary must resolve the opening question without introducing a new thesis.
9. Rank only audience-visible breaks. Prefer reordering, retitling, or adding one bridge sentence before proposing a new slide.

## Diagnose the gap before fixing it

- **Missing reasoning**: a causal or inferential step is absent. Add the step or narrow the claim; a transition cannot repair it.
- **Wrong order**: the needed material exists later. Move it before adding content.
- **Hidden prerequisite**: define or exemplify at first use.
- **Unsignaled change of level**: connect instance↔pattern, technology↔organization, or problem↔solution explicitly.
- **Open promise**: answer it, explicitly defer it, or remove the promise.
- **Pacing pause**: a sparse transition is useful when it marks a genuine change in the audience’s task. Keep it sparse.

Do not demand a bridge between every pair. Repetition of “next, we will” can make sound logic feel mechanical. Do not confuse chronological order with causal explanation.

## Output

Put findings before summary and order them by impact.

For every critical or high finding include:

- location and evidence;
- the audience’s expected next step;
- what the deck supplies instead;
- the missing relation or prerequisite;
- the smallest repair;
- an alternative when the repair changes emphasis or length.

Then include:

1. a compact section map with the relation between sections;
2. the promise ledger (`fulfilled`, `partial`, `open`);
3. no more than three medium-priority local improvements;
4. explicit strengths that should not be disturbed.

Use scores only if the user asks. Never average away an unanswered central promise.

If asked to edit, preserve the author’s voice and claims. Show proposed structural changes first when they would move or delete more than one slide.

## Related skills

- `$deepen-slide-claims` for reasoning that is continuous but shallow.
- `$trim-slide-redundancy` when repairs risk adding repetition.
- `$review-slide-narrative` when logic works but attention or empathy does not.
