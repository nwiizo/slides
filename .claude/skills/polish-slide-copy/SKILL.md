---
name: polish-slide-copy
description: Refine slide headings, labels, bullets, captions, transitions, and punchlines in a Marp presentation without changing its argument. Use when the deck structure and claims are stable but projected wording is verbose, ambiguous, inconsistent, hard to say aloud, overly generic, or likely to overflow its layout.
---

# Polish Slide Copy

Make each visible word earn projection space while preserving evidence, uncertainty, speaker voice, and Marp structure. Polish is a final language pass, not a substitute for fixing flow or unsupported claims.

## Inputs

Read `AGENTS.md`, `CLAUDE.md`, the complete deck, and the applicable slide-writing rules. Fix the talk contract and identify claims, quotations, terminology, callbacks, and deliberate pauses that must not be flattened.

Use Review mode unless the user asks for edits. In Edit mode, preserve front matter, slide separators, comments, HTML structure, style attributes, paths, citations, and alt text unless a requested fix requires changing them.

## Workflow

1. Check titles and headings. Name the slide’s topic, question, or bounded claim; remove empty navigation language without turning every title into a slogan.
2. Check terminology and notation. Introduce acronyms, keep concept names stable, distinguish actors and actions, and preserve official names and figure captions.
3. Check precision. Clarify vague referents, comparison axes, causal mechanisms, scope, conditions, and the objective behind recommendations.
4. Check projected copy. Remove filler, duplicated summaries, decorative intensifiers, and labels the layout already communicates. Keep context required after a brief glance or missed sentence.
5. Check spoken delivery. Read important lines aloud; repair stacked clauses, tongue-twisting noun chains, monotonous sentence shapes, and text that forces the speaker to narrate every bullet.
6. Check lists, tables, captions, and diagrams for parallel structure and consistent units. Do not compress distinct ideas into a compact but misleading label.
7. Check punchlines and transitions. Preserve earned uncertainty and trade-offs; use rhetorical force only where the preceding evidence supports it.
8. Check visual fit using rendered output when available. Split at a change of idea before shrinking below repository limits, and avoid “fixing” overflow by deleting necessary qualifications.
9. After edits, search for accidental changes to URLs, asset paths, source captions, front matter, and Marp comments. Build the target and regenerate a tracked sibling PDF when repository rules require it.

## Guardrails

- Do not add facts, examples, jokes, metaphors, or speaker experiences during copy polish.
- Do not change the talk title unless the user explicitly requests it.
- Do not erase inference markers such as “may,” “under these conditions,” or “in this case” when they carry epistemic meaning.
- Do not standardize every slide into the same sentence pattern or bullet count.
- Do not replace precise technical language with broad labels merely to shorten it.
- Route structural gaps to `$review-slide-flow`, unsupported claims to `$deepen-slide-claims`, and safe removals to `$trim-slide-redundancy`.

## Output

Lead with the highest-impact language problems and protected wording. For each proposed change include the slide, original wording, revision, reason, and any meaning or layout risk. After edits, summarize the classes of changes, builds performed, and unresolved visual, factual, or voice-sensitive items.
