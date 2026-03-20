// Printable: PAWS BED Quick Smoke Test
#import "preamble.typ": *

#set page(paper: "a4", margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm))
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)

#printable-header("PAWS BED — Quick Smoke Test", colour: rgb("#0e7c47"))

#v(0.2cm)
#text(size: 9pt, style: "italic")[Daily during wartime · Weekly during elevated tension · Monthly during routine. Under 2 minutes.]
#v(0.3cm)

#block(
  width: 100%,
  radius: 6pt,
  clip: true,
  stroke: 1.5pt + blue-accent,
)[
  #table(
    columns: (auto, auto, 1fr),
    inset: 10pt,
    stroke: 0.5pt + grey-border,
    fill: (_, y) => if y == 0 { blue-dark } else if calc.odd(y) { blue-light } else { white },
    align: (center, left, left),
    text(fill: white, weight: "bold")[LETTER],
    text(fill: white, weight: "bold")[CHECK],
    text(fill: white, weight: "bold")[VERIFY],
    text(size: 20pt, weight: "bold", fill: blue-dark)[P], [#icon-phone *Phone*], [#ci[ON · CHARGED · HFC APP RUNNING · CORRECT AREA]],
    text(size: 20pt, weight: "bold", fill: blue-dark)[A], [#icon-alert *Alerts*], [#ci[WIRELESS ALERTS ENABLED · DND OVERRIDE VERIFIED]],
    text(size: 20pt, weight: "bold", fill: blue-dark)[W], [#icon-water *Water*], [#ci[72-HOUR SUPPLY ACCESSIBLE · NOT EXPIRED]],
    text(size: 20pt, weight: "bold", fill: blue-dark)[S], [#icon-shield *Shelter*], [#ci[NEAREST 3 SHELTERS KNOWN · ROUTES WALKABLE]],
    text(size: 20pt, weight: "bold", fill: blue-dark)[B], [#icon-bag *Bag*], [#ci[BY DOOR · ZIPPED · CONTENTS VERIFIED]],
    text(size: 20pt, weight: "bold", fill: blue-dark)[E], [#icon-door *Exit*], [#ci[HALLWAY CLEAR · DOOR UNLOCKABLE QUICKLY]],
    text(size: 20pt, weight: "bold", fill: blue-dark)[D], [#icon-people *Dependents*], [#ci[ALL HOUSEHOLD MEMBERS PRESENT OR ACCOUNTED FOR]],
  )
]

#v(0.4cm)

#block(
  width: 100%,
  inset: 14pt,
  fill: blue-light,
  radius: 8pt,
  stroke: 1.5pt + blue-accent,
)[
  #align(center)[
    #text(size: 18pt, weight: "bold", fill: blue-dark)[Mnemonic: PAWS BED]
    #v(4pt)
    #text(size: 13pt, fill: grey-text, style: "italic")["Check your PAWS before BED"]
  ]
]

#v(0.3cm)

#block(
  width: 100%,
  inset: 10pt,
  fill: grey-light,
  radius: 4pt,
)[
  #text(size: 9pt)[
    *Date:* #h(3cm) #box(width: 4cm, stroke: (bottom: 0.5pt + grey-text))[] #h(1cm)
    *Completed by:* #h(0.5cm) #box(width: 4cm, stroke: (bottom: 0.5pt + grey-text))[]
  ]
]

#printable-footer()
