// Title page for the spiral-bound booklet
#import "preamble.typ": *

#let title-page-content() = [
  #v(3cm)

  #align(center)[
    #text(size: 28pt, weight: "bold", fill: blue-dark)[
      Israel Wartime \
      Readiness Checklist
    ]

    #v(0.5cm)
    #line(length: 60%, stroke: 2pt + blue-accent)
    #v(0.5cm)

    #text(size: 14pt, fill: grey-text)[
      Field Guide & Printable Checklists — V4
    ]

    #v(0.3cm)
    #text(size: 11pt, fill: grey-text, style: "italic")[
      Based on Home Front Command (Pikud HaOref) guidance
    ]
  ]

  #v(2cm)

  #block(
    width: 100%,
    inset: 14pt,
    fill: grey-light,
    radius: 6pt,
    stroke: 1pt + grey-border,
  )[
    #text(size: 10pt, weight: "bold", fill: blue-dark)[How to use this booklet:]
    #v(6pt)
    #set text(size: 9.5pt)
    - *Two-person drill:* one person reads each call aloud, the other responds. Alternate roles each time.
    - *Solo:* read each call aloud, then answer it yourself.
    - *Flip to any checklist* using the coloured tab bars at the bottom of each page.
    - *Post individual sheets* on bathroom mirror, bedroom door, fridge, and front door.
    - *The high-vis strip below* makes this booklet findable in the dark or in a pile. Keep it by the front door.
  ]

  #v(1fr)

  // High-vis tape area
  #block(
    width: 100%,
    inset: 2pt,
  )[
    #text(size: 8pt, fill: grey-text, style: "italic")[Affix high-visibility reflective tape here ↓]
    #v(4pt)
    #block(
      width: 100%,
      height: 2cm,
      stroke: 2pt + orange-warm,
      radius: 4pt,
      inset: 0pt,
      fill: white,
    )[]
    #v(4pt)
    #text(size: 7.5pt, fill: grey-text)[
      Use 3M reflective tape, fluorescent gaffer tape, or any high-vis material. This strip makes the booklet visible under torchlight and easy to grab in an emergency.
    ]
  ]

  #v(0.5cm)
  #line(length: 100%, stroke: 0.5pt + grey-border)
  #v(3pt)
  #text(size: 7pt, fill: grey-text)[
    danielrosehill.com · github.com/danielrosehill/Israel-Civilian-Readiness-Guide
    #h(1fr)
    #datetime.today().display("[day]/[month]/[year]")
  ]
]

#set page(..standalone-page)
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)
#title-page-content()
