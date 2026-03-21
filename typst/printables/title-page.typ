// Title page for the spiral-bound booklet
#import "preamble.typ": *

#let title-page-content() = [
  // Top colour bar
  #block(
    width: 100%,
    height: 8pt,
    fill: blue-dark,
    radius: (bottom: 2pt),
  )[]

  #v(1.5cm)

  // Beyahad banner
  #align(center)[
    #image("../../images/other/beyahad.png", width: 8cm)
  ]

  #v(1cm)

  // Title
  #align(center)[
    #block(
      width: 85%,
      inset: (x: 20pt, y: 16pt),
      fill: blue-dark,
      radius: 6pt,
    )[
      #text(size: 24pt, weight: "bold", fill: white)[
        Israel Wartime \
        Readiness Checklist
      ]
      #v(6pt)
      #text(size: 12pt, fill: blue-light)[
        Field Guide & Printable Checklists — V4
      ]
    ]
  ]

  #v(0.6cm)

  #align(center)[
    #text(size: 11pt, fill: grey-text, style: "italic")[
      Based on Home Front Command (Pikud HaOref) guidance
    ]
  ]

  #v(0.8cm)

  // How to use
  #block(
    width: 100%,
    inset: 14pt,
    fill: blue-light,
    radius: 6pt,
    stroke: 1.5pt + blue-accent,
  )[
    #text(size: 11pt, weight: "bold", fill: blue-dark)[How to use this booklet:]
    #v(6pt)
    #set text(size: 9.5pt)
    - *Two-person drill:* one person reads each call aloud, the other responds. Alternate roles each time.
    - *Solo:* read each call aloud, then answer it yourself.
    - *Flip to any checklist* using the coloured tab bars at the top and bottom of each page.
    - *Post individual sheets* on bathroom mirror, bedroom door, fridge, and front door.
    - *The high-vis strip below* makes this booklet findable in the dark. Keep it by the front door.
  ]

  #v(1fr)

  // High-vis tape area
  #text(size: 8pt, fill: grey-text, style: "italic")[Affix high-visibility reflective tape here ↓]
  #v(4pt)
  #block(
    width: 100%,
    height: 2cm,
    stroke: 2.5pt + orange-warm,
    radius: 4pt,
    fill: white,
  )[]
  #v(4pt)
  #text(size: 7.5pt, fill: grey-text)[
    Use 3M reflective tape, fluorescent gaffer tape, or any high-vis material. This strip makes the booklet visible under torchlight.
  ]

  #v(0.5cm)

  // Bottom bar
  #block(
    width: 100%,
    inset: (x: 12pt, y: 6pt),
    fill: blue-dark,
    radius: 3pt,
  )[
    #text(size: 7pt, fill: white)[
      danielrosehill.com · github.com/danielrosehill/Israel-Civilian-Readiness-Guide
      #h(1fr)
      #datetime.today().display("[day]/[month]/[year]")
    ]
  ]
]

#set page(..standalone-page)
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)
#title-page-content()
