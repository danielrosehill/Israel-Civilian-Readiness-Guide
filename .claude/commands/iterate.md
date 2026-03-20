Run a full iteration cycle on the field guide PDF.

This is the main workflow command. Steps:

1. Read the current content source (`iterations/edits/v2/Israel Wartime Readiness Checklist.md`)
2. Read the current Typst source (`typst/guide.typ` and any modules)
3. Apply any requested changes (from $ARGUMENTS, or review for improvements if none specified)
4. Compile with `typst compile typst/guide.typ "output/Israel-Wartime-Readiness-Field-Guide-v3.pdf"`
5. Fix any compilation errors
6. Report: page count, file size, what changed
7. Open PDF for review

If $ARGUMENTS is empty, review the current state and suggest improvements.

User request: $ARGUMENTS
