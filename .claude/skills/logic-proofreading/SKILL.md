---
name: logic-proofreading
description: Review a Marp presentation for contradictions, unrealistic numbers or timing, risky advice, overgeneralization, causal leaps, and deck-wide editorial inconsistencies. Use when the audience must be able to trust the claims; use logical-flow-check for fine-grained reasoning inside a slide, review-slide-flow for ordering, and fact-check-slides for external verification.
---

# Logic Proofreading

Find claims that can make a careful audience stop trusting a presentation. Review first; edit only when the user asks for fixes.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the complete Marp Markdown, and the applicable slide-writing rules. Infer the intended audience, duration, central question, and speaker stance from the deck, event information, and available speaker notes. State assumptions only when they affect a finding.

Number slides by rendered order and cite findings as `slide N, “Title”`. Compare projected copy, diagrams, captions, examples, transitions, and the ending; include speaker notes only when they are part of the target.

## Review lenses

1. **Internal contradiction** — Compare slide titles, punchlines, examples, qualifications, recommendations, and the summary. Flag A/not-A conflicts and endings that discard limits stated earlier.
2. **Realism of time and numbers** — Test whether exercise times, rollout periods, response windows, quantities, and operational expectations are plausible for the stated audience, prerequisites, and resources.
3. **Risky advice** — Identify guidance that could cause harm when followed literally, especially in security, health, legal, financial, personnel, or low-psychological-safety contexts. Name the assumption or safeguard that would make it reasonable.
4. **Overgeneralization and selection bias** — Distinguish personal experience or successful cases from claims about prevalence, inevitability, or all teams and environments.
5. **Causality** — Flag correlation presented as mechanism, single-cause explanations for multi-cause outcomes, and recommendations whose premises do not support the conclusion.
6. **Stance and tone consistency** — Check whether the material claims empathy or neutrality while blaming people, and whether the speaker’s role or degree of certainty changes without explanation.
7. **Deck consistency** — Check repeated facts, terminology, actors, figure labels, agenda and section names, cross-references, and modal strength. Report wording only when it changes meaning or creates a contradiction.

Do not treat deliberate contrast, slide-sized rhetorical compression, or a clearly labeled hypothesis as an error. External verification belongs to `$fact-check-slides`; mark facts that need verification without pretending they have been checked.

## Workflow

1. State the central thesis, main promise, and material recommendations.
2. Extract absolute, quantitative, causal, and prescriptive claims from titles, body copy, diagrams, and captions.
3. Compare those claims across the full deck, especially opening promises, repeated examples, section conclusions, and the ending.
4. Apply the seven lenses in this priority: safety, central contradiction, realism, causal support, generalization, stance consistency, then deck consistency.
5. Rank only issues that materially affect safety, trust, or coherence.
6. Suggest the smallest repair that preserves the author’s intended claim. When the claim may be valid under narrower conditions, prefer adding the boundary over deleting it.

## Output

Put findings first in impact order:

- **Critical** — unsafe advice or a contradiction that breaks the central argument.
- **High** — a claim likely to mislead the intended audience or materially weaken trust.
- **Medium** — a local inconsistency worth correcting before publication.

For each finding include the location, minimal quotation, issue type, why it matters, smallest repair, and any fact that still needs verification. Then list checked lenses with no material findings and finish with a short overall assessment plus strengths that later edits should preserve.

Do not add low-value copyediting notes merely to fill every category. Use `$review-slide-flow` for deck order and promise fulfillment, `$logical-flow-check` for missing steps inside a slide, `$deepen-slide-claims` for mechanism or boundary depth, and `$polish-slide-copy` for wording after the logical issue is resolved.
