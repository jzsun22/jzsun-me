# Repository Guidelines

## Project Structure & Module Organization
This repository is a static portfolio site. Primary source files live in `public/`, with one HTML file per page such as `public/index.html`, `public/projects.html`, and project case studies. Shared styling lives in `public/style.css`. Images, icons, animations, and downloadable files are organized under `public/assets/` by type, for example `public/assets/images/`, `public/assets/icons/`, and `public/assets/files/`. Root-level docs such as `DESIGN.md`, `PRODUCT.md`, and `DESIGN.json` capture product and design context. `build.sh` is the only build-time script.

## Build, Test, and Development Commands
Run `npm install` once to install local dev dependencies.

- `bash build.sh`: replaces `<!-- Last Published: BUILDDATE -->` in each HTML file with the latest git-backed publish timestamp.
- `python3 -m http.server 8000 --directory public`: serves the site locally at `http://localhost:8000`.
- `git diff -- public/style.css public/*.html`: quick review of content and styling changes before commit.

There is no framework build step; pages are edited directly in `public/`.

## Coding Style & Naming Conventions
Use 2-space indentation in HTML and CSS to match the existing files. Keep semantic HTML, descriptive `aria-*` labels, and section comments where they improve scanability. Follow the current naming style: lowercase file names with hyphens (`music-sentiment.html`), and BEM-like CSS classes such as `nav__link` and `featured-work__column`. Reuse shared tokens and variables in `:root` before adding new colors, spacing, or typography rules.

## Testing Guidelines
There is no automated test suite yet. Validate changes by serving `public/` locally and checking the edited pages in desktop and mobile widths. For every HTML change, verify navigation links, asset paths, metadata, and any updated images. If you touch `build.sh`, run it once and confirm only the expected timestamp placeholders change.

## Commit & Pull Request Guidelines
Recent commits use short, imperative subjects such as `Refactor build script to use UNIX timestamp...` and `Update personal description and keywords in index.html`. Keep commits focused and descriptive. Pull requests should include a concise summary, affected pages or assets, screenshots for visible UI changes, and links to any related notes or issues. Mention if `build.sh` was run so timestamp-only diffs are easy to review.
