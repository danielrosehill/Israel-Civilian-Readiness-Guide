# Israel Wartime Readiness Field Guide

## Project Overview

A comprehensive civilian preparedness field guide for wartime in Israel, based on Home Front Command (Pikud HaOref) guidance. The primary deliverable is a **professionally designed, printable A4 PDF** built with **Typst**.

## Key Decisions

- **Typesetting**: Typst (not LaTeX, not pandoc)
- **Font**: Atkinson Hyperlegible (installed at `~/.local/share/fonts/`)
- **Flowcharts**: Fletcher package for Typst
- **Icons**: FontAwesome package for Typst
- **Graphics generation**: fal.ai via MCP (project `.mcp.json`), Nano Banana
- **Page size**: A4, print-optimised
- **Mascots**: Herman (donkey, safety/critical items) and Corn (sloth, wellness/comfort)

## Directory Structure

```
docs/                   — Website source (MkDocs, 7 languages)
typst/                  — Typst source files (guide.typ + modules)
output/                 — Compiled PDF output + printable checklists
images/avatars/         — Herman and Corn mascot images
images/other/           — beyahad.png banner
assets/generated/       — AI-generated graphics
archive/                — Historical drafts, planning docs, review notes
```

## Build Commands

```bash
# Compile PDF
typst compile typst/guide.typ output/Israel-Wartime-Readiness-Field-Guide-v3.pdf

# Watch mode (auto-recompile on changes)
typst watch typst/guide.typ output/Israel-Wartime-Readiness-Field-Guide-v3.pdf

# Open PDF after compile
xdg-open output/Israel-Wartime-Readiness-Field-Guide-v3.pdf
```

## Typst Packages Available

- `fletcher` (0.5.7) — Flowcharts and diagrams
- `cetz` — Canvas/drawing (fletcher dependency)
- `fontawesome` (0.5.0) — Icons
- `oxifmt` — String formatting

## Design Guidelines

- **Beyahad banner** (`images/other/beyahad.png`) as page footer
- **Avatars** used as section companions to reduce intimidation factor
- **Colour scheme**: Blue/white/grey (Israeli flag theme)
- **Checkboxes**: Properly styled, not raw Unicode
- **Decision trees**: Visual flowcharts via Fletcher (not ASCII art)
- **Callout boxes** for tips, warnings, critical items
- **Colour-coded sections**: Red for critical/wartime, blue for preparation, green for wellness

## Content Source

Website content lives in `docs/en/`. The Typst PDF source is `typst/guide.typ`.

## HFC Guidelines (Ground Truth)

Official HFC (Pikud HaOref) guidelines are maintained in a separate repository:
https://github.com/danielrosehill/Pikud-Haoref-Guidelines-0326

The `/qc` slash command cross-references the field guide against these guidelines automatically.

## Repo Visibility

This repo is **public**. Never commit API keys or secrets. The `.mcp.json` uses `${FAL_KEY}` env var reference.
