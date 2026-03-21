// Printable: Respiratory Protection
#import "preamble.typ": *

#let respiratory-content() = [
  #printable-header("Respiratory Protection", colour: rgb("#d35400"), icon-content: icon-mask)
  #v(0.2cm)
  #text(size: 9pt, style: "italic")[Dust from a ballistic impact can fill any shelter in seconds. An N95 weighs almost nothing — keep one per person in your go bag.]
  #v(0.4cm)

  #block(width: 100%, inset: (x: 14pt, y: 10pt), fill: blue-dark, radius: (top: 4pt))[
    #text(size: 12pt, weight: "bold", fill: white)[Go Bag Minimum — N95 Masks]
  ]
  #block(width: 100%, stroke: 1.5pt + blue-dark, radius: (bottom: 4pt), inset: 12pt)[
    #table(
      columns: (1fr, 2.5fr),
      inset: 8pt,
      stroke: 0.5pt + grey-border,
      fill: (_, y) => if calc.odd(y) { grey-light } else { white },
      align: (left, left),
      [*What*], [N95 respirator mask (NIOSH-rated)],
      [*Quantity*], [One per person, sealed in ziplock bag],
      [*Why*], [Ballistic impacts fill shelters with concrete dust, glass particles, and debris. An N95 filters 95% of airborne particulates. Lightweight, flat, costs almost nothing.],
      [*Brands*], [3M 8210, 3M 9205+, or any NIOSH N95. Avoid KN95 knock-offs without certification.],
      [*Fit*], [Must seal around nose and chin. Pinch the nose clip. If glasses fog, it's not sealed.],
      [*Replace*], [After each use, or if the bag seal is broken. Check expiry date.],
      [*Children*], [Child-sized N95s exist (3M 1860S or Kimberly-Clark child size). Stock separately.],
    )
  ]

  #v(0.5cm)

  #block(width: 100%, inset: (x: 14pt, y: 10pt), fill: red-alert, radius: (top: 4pt))[
    #text(size: 12pt, weight: "bold", fill: white)[Enhanced Protection — Half-Face Respirator]
  ]
  #block(width: 100%, stroke: 1.5pt + red-alert, radius: (bottom: 4pt), inset: 12pt)[
    #text(size: 9.5pt)[For chemical, radiological, or prolonged smoke/dust exposure, a commercial half-face respirator with appropriate filters provides meaningful protection beyond an N95.]
    #v(8pt)

    #table(
      columns: (1fr, 2.5fr),
      inset: 8pt,
      stroke: 0.5pt + grey-border,
      fill: (_, y) => if calc.odd(y) { red-light } else { white },
      align: (left, left),
      [*Respirator*], [3M 6200 (medium) or 6300 (large) half-face respirator],
      [*CBRN filters*], [3M 60926 multi-gas/vapour P100 cartridge (OV/AG/FM/CD/HF/HS/HC/P100). Broadest commercial protection.],
      [*Particulate only*], [3M 2097 P100 filters — for dust, smoke, and radiological particulate. Lighter than multi-gas cartridges.],
      [*Spare filters*], [Keep 2 extra sets sealed. Filters last ~5 years sealed.],
      [*Limitations*], [Does not protect eyes. For full CBRN, a full-face respirator (e.g. 3M 6800) is superior. A half-face is practical backup for civilians.],
    )
  ]

  #v(0.4cm)

  #block(width: 100%, inset: 12pt, fill: blue-light, radius: 6pt, stroke: 1pt + blue-accent)[
    #text(size: 10pt, weight: "bold", fill: blue-dark)[Checklist — Respiratory Readiness]
    #v(6pt)
    #cr-line("N95 in Go Bag?", [*ONE PER PERSON*, sealed])
    #linebreak() #cr-line("N95 Expiry?", [*NOT EXPIRED*])
    #linebreak() #cr-line("Half-Face Respirator?", [*ACCESSIBLE*], d: "if you have one")
    #linebreak() #cr-line("Filter Seal?", [*INTACT*, not opened])
    #linebreak() #cr-line("Filter Expiry?", [date *CHECKED*])
    #linebreak() #cr-line("Fit Practised?", [*YES*, under 15 seconds to don])
    #linebreak() #cr-line("Children's Masks?", [*SIZED* and *PRACTISED*])
  ]
]

#set page(..standalone-page)
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)
#respiratory-content()
#printable-footer()
