---
name: review-slide-narrative
description: Review the narrative and audience-empathy design of a Marp presentation. Use when a technically correct talk feels flat, the opening lacks stakes, examples do not connect to the audience, tension or agency disappears, the ending lacks payoff, or proposed storytelling risks inventing personal experiences.
---

# Review Slide Narrative

Model how the audience’s attention, uncertainty, and agency change across the talk. Strengthen narrative without forcing a hero’s journey, confessional anecdote, or artificial drama onto technical material.

## Inputs

Read the complete deck and, if present, `vendor/3shake-marp-templates/.claude/rules/slide-writing.md`. Infer the audience’s prior knowledge, current pain, and desired capability. State assumptions when the event description or talk duration is absent.

Number slides by rendered order and cite evidence by slide and title.

## Workflow

1. Describe the audience before and after the talk using three dimensions: what they believe, what they feel able to do, and what decision they would make.
2. Diagnose the opening five minutes:
   - whose problem is visible;
   - why it matters now;
   - what uncertainty remains open;
   - what the talk promises to resolve.
3. Build a beat map. Label each meaningful segment as orientation, recognition, tension, complication, discovery, test, choice, resolution, or aftertaste.
4. Track the audience’s cognitive-emotional state. Useful states include curiosity, recognition, doubt, surprise, relief, confidence, and agency. Do not infer emotion merely from dark backgrounds or dramatic wording.
5. Locate the pivot where the audience’s model changes. If there is no pivot, determine whether the talk is intentionally instructional; instructional talks may use progressive capability instead of dramatic reversal.
6. Check examples for empathy: the situation must be specific enough to recognize and broad enough to transfer. Explain the bridge from example to audience.
7. Test the ending: it should resolve the opening tension, restate the changed model, and leave a usable question or choice. Do not add a generic action-items slide.
8. Propose the least invasive change that repairs the weakest beat.

## Guardrails

- Never invent a failure story, vulnerability, customer quote, or personal emotion for the speaker.
- Do not equate empathy with sentimentality. Naming a familiar constraint or trade-off can create stronger recognition than autobiography.
- Do not require constant emotional intensity. Contrast and breathing room make pivotal moments legible.
- Do not sacrifice technical accuracy for a clean story. Preserve unresolved uncertainty when the evidence is unresolved.
- Do not rewrite the speaker into a generic inspirational voice.

## Output

Lead with the highest-impact narrative breaks. Each finding must contain evidence, the audience state before the break, the intended next state, why the transition fails, and a minimal repair.

Then include:

1. **Audience transformation** — before → after across belief, capability, and decision.
2. **Beat map** — slide ranges, narrative function, audience state, and open question.
3. **Opening diagnosis** — stakes, relevance, promise, and unresolved tension.
4. **Pivot and payoff** — whether each exists and whether the ending earns it.
5. **Protected moments** — concrete passages whose voice or emotional restraint should remain.

Offer exact wording only when the deck provides enough factual and personal material. Otherwise ask a targeted speaker question or provide a clearly labeled structural placeholder.

Use scores only when requested; a precise beat map is more actionable than an averaged empathy score.

## Related skills

- `$review-slide-flow` for causal and prerequisite gaps.
- `$deepen-slide-claims` when the pivot rests on a generic insight.
- `$trim-slide-redundancy` when pacing is slowed by repeated setup.
