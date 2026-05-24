# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Ali Safaya's personal academic website. A **static site** — hand-written HTML/CSS, no build step, no framework, no package manager, no JS bundler. Adapted from [Jon Barron's website template](https://github.com/jonbarron/jonbarron_website) (credited in the footer of `index.html`).

## Deploy / preview

- **Deploy:** push to `master`. GitHub Pages serves the repo root directly. There is no build or CI step — what's committed is what's live.
- **Custom domain:** `asafaya.me` (set in `CNAME`). The repo is `alisafaya.github.io` but the canonical URL is `https://asafaya.me/`.
- **Preview locally:** open `index.html` in a browser, or `python3 -m http.server` from the repo root (use a server, not `file://`, so root-relative paths and the shared stylesheet resolve correctly).

## Layout conventions

- `index.html` — homepage: bio, research, publication entries, blog-post links.
- `blog/` — each post is a standalone `.html` file. Posts link back to the shared stylesheet via the relative path `../stylesheet.css` and reference assets as `../images/...`. The homepage uses `stylesheet.css` (same directory).
- `images/` — site figures; per-post assets go under `images/blog/<post-slug>/`.
- `data/` — CV PDFs, named `CV_YYYYMMDD.pdf`. "Update CV" means committing a new dated PDF and pointing the homepage CV link at it (the current link is hard-coded in `index.html`, e.g. `data/CV_20240327.pdf`).

## Styling

`stylesheet.css` is shared by the homepage and all blog posts. The template repurposes **custom HTML element names** as styled tags — when editing markup, reuse these rather than inventing classes:

- `<name>` — large name heading (32px)
- `<heading>` — section heading (22px)
- `<papertitle>` — bold publication title
- `span.highlight` — yellow highlight

Theme: background `#fcf3e8`, link blue `#1772d0`, hover orange `#f09228`, Lato font (loaded via `@font-face` from Google Fonts CDN). Layout is **table-based** (inline `style` attributes on nested `<table>`/`<td>`), matching the original template — follow that pattern for new content blocks instead of introducing flex/grid CSS. Blog posts add a small inline `<style>` block for `pre`/`code`.

## Analytics

Every page carries its own Google Analytics (`gtag.js`) snippet in `<head>` with a per-page measurement ID (homepage `G-E5JJ2L9JB2`, the token-redundancy post `G-E1SRN30XD1`). New pages should include the gtag snippet.
