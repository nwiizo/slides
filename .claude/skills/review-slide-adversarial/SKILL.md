---
name: review-slide-adversarial
description: Pressure-test a Marp presentation from a fair but adversarial audience perspective. Use when a deck needs its central thesis, evidence, assumptions, trade-offs, counterexamples, hostile Q&A, or ship readiness challenged after ordinary review, especially before publication or a high-stakes talk.
---

# Adversarial Slide Review

Try to establish the strongest grounded reason the talk should not persuade its intended audience yet. Challenge the argument and decision, not the speaker or cosmetic details. Prefer one material objection over a list of weak complaints.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the complete deck, and the applicable slide-writing rules. Infer the audience, duration, event context, central question, proposed answer, and intended audience decision. State uncertain assumptions when they affect the review.

Number slides by rendered order. Cite evidence as `slide N, “Title”` plus a short quotation or paraphrase. Treat a citation as support only after checking what it actually says; route externally verifiable disputes to fact checking.

## Workflow

1. Write the talk contract: audience, central question, answer, promises, and intended decision.
2. Extract the 3–7 load-bearing claims whose failure would weaken that contract.
3. Steelman the strongest reasonable opposing position. Do not use an obviously weak or hostile caricature.
4. Attack each load-bearing claim with the relevant tests:
   - a plausible counterexample;
   - an alternative mechanism that explains the same observation;
   - a hidden prerequisite or scope change across audience, scale, maturity, incentives, or constraints;
   - evidence that is weaker than the wording it supports;
   - an unstated objective, accepted cost, or trade-off;
   - an adoption path that fails when the audience applies the advice;
   - a contradiction with another slide or an opening promise;
   - a hostile but fair audience question or screenshot-level misreading.
5. Run a presentation premortem: assume the talk failed to change the intended decision. Identify the most plausible argument-level cause, not delivery trivia.
6. Try to disprove every proposed finding:
   - search the whole deck for an existing answer or qualification;
   - verify that the quoted slide actually supports the interpretation;
   - distinguish a missing defense from an intentional scope boundary;
   - mark external claims for verification instead of treating memory as evidence;
   - remove or downgrade findings that survive only through speculation.
7. Rank the remaining findings and identify the claims that survived serious attack.

## Finding bar

Report a finding only when it can change audience trust, the central conclusion, or a decision the talk recommends. Every finding must answer:

1. What claim, promise, or assumption is under attack?
2. What concrete counterexample or failure scenario threatens it?
3. What in the deck makes the attack defensible?
4. What audience consequence follows?
5. What is the smallest repair or evidence needed?

Use these levels:

- **BLOCKER** — the central promise depends on a contradiction, unsupported leap, or materially false premise.
- **MATERIAL** — the issue can change the audience’s decision or trust and needs a repair or explicit risk acceptance.
- **QUESTION** — a credible hostile Q&A challenge remains, but the available evidence is insufficient to call it a defect.

Allow `SURVIVED` when no material finding remains. Never require a minimum number of findings. Do not promote severity merely because multiple simulated perspectives repeat the same claim.

## Guardrails

- Stay adversarial without becoming insulting, theatrical, or cynical.
- Attack the strongest version of the talk, not a straw man.
- Do not report style, naming, or layout preferences unless they materially distort the argument.
- Do not invent facts, audience reactions, incidents, quotes, speaker beliefs, or counterexamples.
- Do not confuse “not covered” with “wrong”; judge omitted material against the talk contract and time limit.
- Do not hide uncertainty behind forceful language. State inferences and keep confidence honest.
- Do not edit the deck unless the user asks for changes.

## Output

Lead with a terse verdict: `BLOCK`, `NEEDS DEFENSE`, or `SURVIVED`.

For each finding, provide:

- severity and confidence;
- slide, claim, and deck evidence;
- strongest attack and concrete failure scenario;
- audience or decision impact;
- existing defense, if any;
- smallest repair;
- fact or speaker knowledge that still needs verification.

Then provide:

1. **Attack ledger** — each load-bearing claim, strongest attack, existing defense, and outcome.
2. **Hostile Q&A** — no more than five fair questions the speaker should be able to answer.
3. **Survived attacks** — strong claims or boundaries later edits must preserve.
4. **Verification queue** — only disputed external facts or missing speaker knowledge.

Do not use an averaged quality score. A single grounded blocker must not disappear inside otherwise positive feedback.

## Related skills

- `$review-slide-flow` to repair prerequisites, order, and open promises before pressure-testing.
- `$deepen-slide-claims` to strengthen a claim whose mechanism or boundary is missing.
- `$review-slide-narrative` after the argument survives, to improve audience transformation and payoff.
- `$trim-slide-redundancy` after defenses are known, to avoid cutting necessary reasoning.
- `$review-slide-wit` after substantive objections are resolved, so memorable language cannot mask weak logic.
- `$review-slide-suite` to reconcile adversarial findings with other specialist recommendations.
