Compile the Typst source to PDF.

1. Run: `typst compile typst/guide.typ "output/Israel-Wartime-Readiness-Field-Guide-v3.pdf"`
2. Report any compilation errors
3. If successful, report the file size and page count (`typst query typst/guide.typ '<page>' --field none | wc -l` or check with `pdfinfo`)
4. Open the PDF with `xdg-open` for review
