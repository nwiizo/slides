---
name: prepare-slide-release
description: Validate and prepare Marp slides for public release. Use before publishing or pushing changes that affect slide Markdown, themes, images, PDFs, README links, brand packs, or build configuration, especially when clean-clone reproducibility and source-to-artifact consistency matter.
---

# Prepare Slide Release

Require fresh evidence that the public source and artifacts agree. Do not publish because files merely exist.

## Preconditions

Read `AGENTS.md`, `CLAUDE.md`, the target slide, and the applicable template build rules. Identify which Markdown files changed and which already have a public sibling PDF.

The checked-in `brands/{brand}/` pack is a runtime dependency. `vendor/` is an update source and must not be required for an ordinary build.

## Workflow

1. Run `npm ci` in a clean checkout or when dependencies are absent or the lockfile changed. Treat `package-lock.json` as input; release validation must not update it.
2. Inspect changed Markdown references. Themes must exist in `brands/{brand}/themes/`, brand images in `brands/{brand}/assets/images/`, and talk images in `assets/images/{year}/`.
3. Build changed decks with `npm run build:html -- <markdown> -o <html>`. Treat theme lookup warnings and missing local resources as failures even when the command exits zero.
4. Inspect representative output for the expected theme marker and local image references. For visual changes, render or open the output and inspect it.
5. For every changed Markdown file that has a published PDF, regenerate it in place with `npm run build:pdf -- <markdown> -o <pdf>`. Generate a new PDF when the user intends the deck to be public.
6. Confirm every public PDF is linked from README and has a matching Markdown source.
7. Compare the VCS diff with the chosen base. A changed public Markdown file without a changed sibling PDF is a release blocker.
8. Test a clean clone or clean worktree without relying on untracked files or an initialized `vendor/` directory. Install dependencies and rebuild representative 2025 and 2026 decks.
9. Review VCS status and diffs. HTML remains untracked; PDFs remain tracked.
10. Only then commit or publish.

## Failure handling

- Missing brand image: restore or correct the stable `brands/{brand}/assets/images/` reference; do not point into `vendor/` as a shortcut.
- Known incomplete deck: document the missing original asset, but treat it as a blocker for releasing that deck until the asset is restored or the slide is redesigned.
- Unknown theme: confirm `@theme` metadata and `.marprc.yml` `themeSet` before changing front matter.
- Stale PDF: rebuild from its matching Markdown; never rename an old PDF to satisfy the check.
- Clean-clone-only failure: find the implicit local dependency and make it explicit or remove it.
- Large PDF: report size and GitHub limits before introducing Git LFS or release automation.

## Output

Report each command, exit status, decks built, generated PDFs, asset/theme check counts, clean-clone result, and remaining blockers. Separate warnings from failures.

Never claim a release is ready without fresh command output from the current revision.
