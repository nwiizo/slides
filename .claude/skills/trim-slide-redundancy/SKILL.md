---
name: trim-slide-redundancy
description: Find and safely remove redundancy in a Marp presentation while preserving comprehension, emphasis, pacing, and accessibility. Use when a deck is too long, repeats claims, examples, setup, code, or command output, contains thin or overloaded slides, needs a target duration, or requires evidence-based cut, merge, compress, and keep decisions.
---

# Trim Slide Redundancy

Reduce cognitive and time cost without deleting the repetition that helps a live audience orient, remember, or recover. Optimize value per minute, not slide count alone.

## Inputs

Read the complete deck and, when available, `vendor/3shake-marp-templates/.claude/rules/slide-writing.md`. Infer the intended audience and prior knowledge. Find the intended duration in the filename, front matter, event notes, or README. If unknown, report time-based conclusions as conditional.

Number slides by rendered order. Distinguish reusable title/company/closing slides from talk-specific content when estimating time.

Review first. Do not edit the deck unless the user asks for fixes.

## Workflow

1. State the talk’s central claim in one sentence. For each section, state how it advances that claim. A section with no clear contribution is a cut, appendix, or scope-split candidate; do not expand it merely to justify its presence. If two central claims compete, recommend narrowing or splitting the talk instead of treating length alone as the problem.
2. Give every slide one primary job: orient, define, argue, evidence, exemplify, contrast, transition, recap, or close.
3. Create a semantic inventory of claims, evidence, examples, and calls to action. Link repeated items across slides.
4. Classify each repetition:
   - **functional** — spaced recall, deliberate refrain, accessibility, or section reorientation;
   - **progressive** — repeated idea gains mechanism, boundary, evidence, or consequence;
   - **wasteful** — same audience value in substantially the same form.
5. Apply the removal test: if the slide disappears, what necessary understanding, emphasis, pacing, or accessibility is lost for this audience? If the answer is unclear, it is a cut candidate.
6. In technical decks, check repeated setup and install steps, obvious command output, full code listings where only a few lines changed, progress narration, symmetrical but thin slides, and repeated diagrams with no new highlighted relation. Prefer a focused diff, changed-line highlight, merge, or appendix move when it preserves the needed context.
7. Apply the merge test: do both slides remain legible at normal presentation density? Reject merges that create two messages, tiny text, or an unreadable table.
8. Apply the compression test to verbose sentences, repeated labels, and scaffolding that the layout already communicates.
9. Check overloaded slides separately. Redundancy review must not “solve” too much content by squeezing it into fewer slides.
10. Estimate timing as a range based on slide jobs and speaking burden. Treat seconds-per-slide averages as a warning signal, not a verdict.
11. Produce a conservative cut set first, then an optional aggressive set with explicit trade-offs.

## Decision labels

- **KEEP** — unique or functionally repeated value.
- **CUT** — removable without breaking comprehension or intent.
- **MERGE** — two slides share one message and fit legibly together.
- **COMPRESS** — keep the slide but reduce wording or visual duplication.
- **DEFER** — useful detail better placed in appendix or speaker notes.
- **SPLIT** — overloaded; reducing slide count would harm delivery.

Never assume a summary is redundant: compare its role to the opening promises. Never delete pauses or signposts merely because they are sparse; keep them when they change the audience’s task, restore orientation, or create a useful beat. Never use a fixed percentage reduction as a quality target.

## After cuts and merges

Re-read the complete deck after editing. Check for output blocks whose code or command was removed, captions or claims that point to a deleted example, “as shown earlier” references with no target, broken agenda and section labels, forward references created by moving slides, and conclusions that still count removed items. Rebuild the deck to catch overflow introduced by merges.

## Output

State the assumed audience and central claim, then put proposed actions before general commentary. For each action include slide locations, duplicated value, classification, expected benefit, loss/risk, and exact disposition.

Then include:

1. a repetition map grouped by claim or example;
2. conservative and aggressive cut sets;
3. before/after slide counts and timing ranges, with assumptions;
4. merge or rewrite examples only for the highest-impact cases;
5. items explicitly retained for pacing, recall, accessibility, or narrative payoff.

If asked to edit, apply the conservative set unless the user selects the aggressive trade-off. After editing, audit downstream references and re-check the transitions on both sides of every deletion.

## Related skills

- `$review-slide-flow` after cuts or reordering.
- `$deepen-slide-claims` when a thin slide should be strengthened rather than removed.
- `$review-slide-narrative` when repeated setup may be carrying emotional or contextual work.
- `$cognitive-rhythm-writing` when a sparse signpost or repeated line may be carrying pacing or reorientation.
- `$polish-slide-copy` when the slide should stay but its wording can be compressed.
