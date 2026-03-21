Full release workflow: rebuild all outputs, create GitHub release, and deploy docs.

This is the combined release operation for the field guide. Execute all steps in order:

## 1. Compile Main PDF

```bash
typst compile --root . typst/guide.typ "output/Israel-Wartime-Readiness-Field-Guide-v4.pdf"
```

Report any compilation errors. If successful, report file size and page count.

## 2. Compile All Printables

Compile each printable individually, then combine:

```bash
for f in typst/printables/0*.typ; do
  name=$(basename "$f" .typ)
  typst compile --root . "$f" "output/printables/${name}.pdf"
done
```

Then compile the combined booklet and door-display PDFs:
```bash
typst compile --root . typst/combined.typ output/printables/All-Printables-Combined.pdf
typst compile --root . typst/door-display.typ output/printables/Door-Display-Checklists.pdf
```

Report any compilation errors.

## 3. Regenerate EPUB

The EPUB source is `output/guide-epub.md`. Make sure it reflects the latest content changes (the markdown content source is at `iterations/edits/v2/Israel Wartime Readiness Checklist.md`).

```bash
pandoc output/guide-epub.md -o output/Israel-Wartime-Readiness-Field-Guide-v4.epub
```

## 4. Commit and Push

Stage all changed output files and source files. Create a descriptive commit. Push to main.

Do NOT commit: .env files, API keys, or any secrets. This repo is public.

## 5. Create GitHub Release

Determine the next version by checking `gh release list`. Increment the minor version (e.g., v4.0 → v4.1).

Create the release with all output artifacts:

```bash
gh release create v<VERSION> \
  --title "V<VERSION>: <brief description>" \
  --notes "<release notes summarising changes>" \
  output/Israel-Wartime-Readiness-Field-Guide-v4.pdf \
  output/Israel-Wartime-Readiness-Field-Guide-v4.epub \
  output/printables/All-Printables-Combined.pdf \
  output/printables/Door-Display-Checklists.pdf \
  output/printables/01-paws-bed.pdf \
  output/printables/02-daytime-posture.pdf \
  output/printables/03-before-bed.pdf \
  output/printables/04-after-shelter.pdf \
  output/printables/05-before-shower.pdf \
  output/printables/06-before-leaving.pdf \
  output/printables/07-night-alarm.pdf \
  output/printables/08-emergency-numbers.pdf \
  output/printables/09-shabbat.pdf \
  output/printables/10-news-schedule.pdf \
  output/printables/11-respiratory-protection.pdf \
  output/printables/12-lull-resupply.pdf \
  output/printables/13-terrorist-infiltration.pdf \
  output/printables/14-uav-drone.pdf \
  output/printables/15-bathing-baby.pdf
```

## 6. Update Downloads Page

Update `docs/en/downloads.md` to point to the new release tag (replace old version tag in all download URLs).

## 7. Deploy Docs

The MkDocs site auto-deploys via GitHub Actions when `docs/**` or `mkdocs.yml` changes are pushed to main. The push in step 4 (or an additional push after step 6) will trigger deployment automatically.

Verify the workflow started:
```bash
gh run list --limit 3
```

## Summary

After all steps, report:
- PDF page count and file size
- Number of printables compiled
- EPUB file size
- Release URL
- Whether the docs deployment workflow was triggered
