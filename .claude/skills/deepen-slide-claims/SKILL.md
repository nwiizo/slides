---
name: deepen-slide-claims
description: Test and deepen the load-bearing claims in a Marp presentation. Use when punchlines feel generic, causal claims are unsupported, conclusions overreach their evidence, trade-offs or boundary conditions are missing, or the audience cannot tell how an insight should change a decision.
---

# Deepen Slide Claims

Turn slogans into bounded, defensible insights. Depth comes from mechanism, tension, scope, and consequence—not from longer prose, stronger adjectives, or invented certainty.

## Inputs

Read the full deck and, when available, `vendor/3shake-marp-templates/.claude/rules/slide-writing.md`. Infer the audience and decision context. Treat source citations as evidence only after checking what they actually support; use fact-checking separately when verification is required.

Number slides by rendered order. Quote only enough text to identify a claim.

## Workflow

1. Extract the 3–7 load-bearing claims: statements that the conclusion would fail without. Ignore routine definitions and navigation text.
2. Reconstruct the argument for each claim using this ladder:
   - **observation** — what is seen;
   - **pattern** — what repeats;
   - **mechanism** — what produces the pattern;
   - **boundary** — when it holds or fails;
   - **decision consequence** — what choice changes.
3. Mark missing rungs. Do not force every claim to reach every rung; identify what the claim needs for its role.
4. Run four adversarial tests:
   - plausible counterexample;
   - alternative mechanism producing the same observation;
   - scope shift across team size, maturity, incentives, or system constraints;
   - evidence that would falsify the claim.
5. Separate normative claims (“should”) from descriptive claims (“does”). A recommendation must name the objective and accepted cost.
6. Check whether evidence matches claim strength. Anecdotes establish possibility, not prevalence; correlation does not establish mechanism; authority does not remove boundary conditions.
7. Rewrite only the weakest load-bearing claims. Preserve uncertainty with language such as “when,” “tends to,” or “under these constraints.”

## Deepening patterns

- Generic importance → name the failure mechanism: “Communication matters” becomes “When ownership crosses team boundaries without a feedback loop, local optimization hides integration failure until release.”
- Unqualified advice → name the objective and cost: “Standardize” becomes “Standardize the paths where variance creates operational risk; preserve variance where discovery value exceeds coordination cost.”
- Binary opposition → expose the optimization target: “Monolith vs. microservices” becomes a choice among change coupling, operational overhead, and organizational boundaries.
- Universal claim → add a boundary: identify the size, maturity, reversibility, or failure-cost range where it changes.
- Abstract insight → change a decision: name what the audience should inspect, stop, choose, or measure differently.

Never fabricate an experience, metric, source, causal link, or speaker opinion. If evidence is absent, present a candidate rewrite as a hypothesis and label what must be verified.

## Output

Lead with findings in impact order. For each finding include:

- slide and exact claim;
- role in the talk;
- missing rung or failed adversarial test;
- risk to audience understanding or trust;
- a bounded rewrite;
- evidence or speaker knowledge needed to support that rewrite.

Then provide a claim table:

| Claim | Observation | Mechanism | Boundary | Decision consequence | Status |
|---|---|---|---|---|---|

Use `supported`, `needs evidence`, `overstated`, or `generic` for status. Finish with the strongest existing claim and explain why it works, so later edits do not flatten it.

Do not use numeric depth scores unless requested. Do not make every sentence provocative; a talk needs clear connective tissue around a few sharp claims.

## Related skills

- `$review-slide-flow` to verify that the audience can reach the claim.
- `$review-slide-narrative` to connect a sound claim to audience stakes.
- `$review-slide-wit` to sharpen phrasing without distorting the claim.
