# V3 Feedback — Session 1 Continued (20 March 2026)

## Outstanding Changes (Not Yet Applied)

### Structure
- **Shabbat/Hag** should be its own chapter (Chapter 6), not a subsection of Ch. 5
- **Quick Reference Cards**: Duplicate Daytime and Nighttime posture checklists right after the title page/TOC as a "Quick Reference" section (these are the most frequently used)
- **Heavy Furniture** and **Gas/Electricity shutoff** should be moved to a "Pre-Emergency Home Safety" appendix — they're not wartime-active checks
- **Boxes** around the "What to look for" / "What to avoid" lists in Go Bag section (5.1)
- **Shelter Behaviour** (5.3) needs bold formatting and icons throughout — currently plain bullet lists

### Flowchart (Decision Tree)
- **RED ALERT SOUNDS** node needs white text — currently red on red (invisible)
- **Y** and **N** labels instead of full "YES" / "NO" for compactness
- Labels still need bold green (Y) and bold red (N) colours

### Footer / Header
- Section pill in header — colour-coded per chapter (already updated in code)
- Page number in header pill (right side) AND in footer bottom-right (already updated)
- Footer: doc title, version, date, author (Daniel Rosehill + Claude Opus), beyahad small

### Checklist Formatting
- Fix `ci` function alignment — checkbox and description text not horizontally aligned
- Descriptions should visually nest under the response with a subtle downward arrow (↳) to show inheritance
- Self-care callout box needs line breaks between items (currently cramped)

### Footnotes
- For Terrorist Infiltration (5.12) and anywhere we follow HFC advice: add footnote "Based on Home Front Command protocol as of [today's date]"
- This establishes the guidance is time-stamped and should be re-verified

### Content Additions (Still To Do)
- **Appendix G: Go Bag Recommendations** — content drafted by subagent, needs Typst formatting
- **Appendix H: Emergency Pantry Staples (Israel)** — content drafted by subagent, needs Typst formatting
- **fal.ai graphics** — generate calming, multi-age illustrations once auth is fixed (nano-banana-2)

## Already Applied in This Session
- ✅ Restructured as Chapters 1-5 with page breaks
- ✅ Added Legend & Symbols page
- ✅ FontAwesome icons throughout all checklists
- ✅ Mascot intro (Herman + Corn with myweirdprompts.com backstory)
- ✅ Cover page with equal-sized mascots and proper titles
- ✅ `ci` function for bolded responses + italic descriptions
- ✅ Colour-coded section header pills
- ✅ Page number in blue pill badge
- ✅ Footer with doc info + beyahad
- ✅ Fletcher flowchart with green YES / red NO labels
- ✅ Hygiene: added shower + brush teeth
- ✅ `.mcp.json` for fal.ai with env var reference
- ✅ `.gitignore` for public repo safety
- ✅ CLAUDE.md with project docs
- ✅ Slash commands: /compile, /generate-graphic, /edit-content, /build-section, /iterate, /push
- ✅ Planning folder with design brief, toolchain status, mascot info
