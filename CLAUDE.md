# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Turkish translation fork of [datawhalechina/Hello-Agents](https://github.com/datawhalechina/Hello-Agents) — a 16-chapter AI agent education tutorial. Turkish is the primary language. Chinese and English originals are preserved but not the focus.

## Repository structure

```
docs/                        # Docsify documentation site (the main reading experience)
  README.md                  # Docsify homepage — Turkish
  _sidebar.md                # Turkish navigation (auto-loaded by Docsify)
  _sidebar_en.md             # English navigation (legacy, kept for reference)
  index.html                 # Docsify config — lang=tr, pagination in Turkish
  Bölüm0-Ön-Söz.md          # Turkish Preface (fully translated)
  chapterN/
    BölümN-*.md              # Turkish file — the translation target
    Chapter-N-*.md           # English source — use this as translation source
    第N章*.md                 # Chinese original — ignore for translation work

site/                        # Hugo static site (secondary, not priority right now)
  hugo.toml                  # Turkish config, Book theme, baseURL for GitHub Pages
  content/
    _index.md                # Turkish homepage
    on-soz.md                # Turkish Preface
    bolumN/_index.md         # Turkish chapters (bolum1 fully translated, 2-16 stubs)
  themes/hugo-book/          # Git submodule

.github/workflows/hugo.yml   # Deploys Hugo site → GitHub Pages on push to main
Makefile                     # Local preview and build via Podman
```

## Translation work

**Priority: `docs/` directory.** The Docsify site in `docs/` is the live reading experience; the Hugo site in `site/` is a future goal.

**Translation convention:**
- Source: `docs/chapterN/Chapter-N-EnglishTitle.md`
- Output: `docs/chapterN/BölümN-TurkishTitle.md` (stubs exist for chapters 2-16)
- Translate all prose to Turkish
- Keep code blocks unchanged; translate only `# inline comments` inside them
- Translate `<p>Figure N.N...` captions and `alt="..."` attributes in `<img>` tags
- Leave all URLs unchanged
- Keep heading hierarchy (`##`, `###`) intact

**Status:**
- ✅ Fully translated: README.md, `_sidebar.md`, Preface, Chapter 1
- 🔜 Stubs only (awaiting translation): Chapters 2-16

## Local preview

No Hugo binary required — uses Podman:

```bash
make serve    # Hugo site at http://localhost:1313 (includes draft chapters)
make build    # Static build into site/public/
```

The `:Z` SELinux flag is already in the Makefile (required on Fedora).

For the Docsify site, open `docs/index.html` directly in a browser or use any static file server from the `docs/` directory.

## Deployment

Pushing to `main` triggers `.github/workflows/hugo.yml` which builds the Hugo site and deploys to GitHub Pages at `https://ertodebana.github.io/hello-agents-tr/`.

**Prerequisite:** GitHub repo Settings → Pages → Source must be set to **GitHub Actions**.

The theme (`site/themes/hugo-book`) is a git submodule. Always clone with `--recurse-submodules` or run `git submodule update --init --recursive` after cloning.

## Key config notes

- `site/hugo.toml` sets `markup.goldmark.renderer.unsafe = true` — this is required because chapters use raw `<div align="center"><img .../></div>` blocks that Goldmark strips by default.
- `site/content/bolumN/_index.md` files with `draft: true` are visible locally with `--buildDrafts` but excluded from production builds.
- `/site` was previously gitignored (Python MkDocs convention). It was changed to `site/public/` and `site/resources/` so the Hugo project is tracked.
