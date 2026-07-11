---
name: review-slide-wit
description: Review humor, satire, irony, metaphor, and rhetorical wit in a Marp presentation for purpose, precision, speaker voice, audience fit, and context-collapse safety. Use when a talk contains jokes or playful phrasing, needs sharper memorable language, risks punching down or being misread in screenshots, or should remain serious without forced humor.
---

# Review Slide Wit

Treat wit as a delivery mechanism for insight, not a quota. A serious deck can pass with no jokes. Improve only moments where humor or rhetorical compression serves comprehension, tension release, memory, or honest self-critique.

## Inputs

Read the full deck and, if present, `vendor/3shake-marp-templates/.claude/rules/slide-writing.md`. Infer event type, audience, speaker role, employer attribution, recording policy, and whether humor is already part of the speaker’s voice. State uncertain assumptions.

Number slides by rendered order. Review the surrounding setup and payoff, not isolated lines only.

## Workflow

1. Inventory deliberate and accidental humor: self-deprecation, irony, contrast, understatement, exaggeration, analogy, callback, parody, wordplay, and visual juxtaposition.
2. For each moment, name its job: open attention, translate complexity, release tension, expose contradiction, build solidarity, sharpen a claim, or create recall.
3. Test precision. The setup must be understandable, the target identifiable, and the insight still valid when the joke is removed.
4. Test voice. Compare diction and confidence with the rest of the deck; flag lines that sound imported, performative, or AI-polished.
5. Test direction of force:
   - safest: speaker’s own verified behavior, shared constraints, systems, incentives, powerful institutions;
   - high risk: named individuals, vulnerable groups, protected attributes, trauma, illness, disability, or people with less power.
6. Run context-collapse tests: projected live, clipped as one screenshot, quoted without tone, recorded, translated, and associated with the employer.
7. Check placement and dosage. Humor before trust, during grief or failure impact, or immediately after a dense claim can undermine the intended emotion.
8. Recommend keep, cut, soften, sharpen, relocate, or replace. Provide alternatives with different risk/energy levels.

## Guardrails

- Never manufacture a personal failure, customer story, statistic, quote, or opinion for the speaker.
- Never add humor solely because a section lacks it.
- Do not treat “punching up” as automatic safety; claims still need accuracy and a relevant target.
- Avoid medicalized jokes, identity stereotypes, dehumanizing metaphors, and consent-dependent inside jokes.
- Do not hide a weak claim behind a clever sentence. Route it to `$deepen-slide-claims`.
- Prefer precise observation over decorative cleverness.

## Output

Start with safety- or trust-critical findings, then high-value opportunities.

For every finding include:

- slide, line, and surrounding context;
- intended function and likely audience reading;
- mechanism of the humor or wit;
- voice fit;
- live-room risk and screenshot risk separately;
- recommendation with rationale.

For rewrites, provide up to three variants:

- **plain** — no joke, preserves the insight;
- **light** — low-risk warmth or compression;
- **sharp** — stronger wit, only when evidence and speaker voice support it.

Label any fact, personal detail, or permission the speaker must confirm. Finish with a placement map showing where levity should rise, fall, or remain absent. Explicitly state when no additional humor is the strongest choice.

Use numeric scores only if requested. Safety is not an average: one critical context-collapse risk remains critical even when the rest of the deck is strong.

## Related skills

- `$deepen-slide-claims` for the insight beneath the line.
- `$review-slide-narrative` for timing, tension, and callbacks.
- `$trim-slide-redundancy` for repeated jokes or overextended bits.
- `$review-slide-flow` when humor interrupts the argument.
