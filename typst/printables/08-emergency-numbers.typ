// Printable: Emergency Numbers
#import "preamble.typ": *

#let emergency-numbers-content() = [
  #printable-header("Emergency Numbers — Israel", colour: red-alert, icon-content: icon-alert)
  #v(0.3cm)

  #block(width: 100%, radius: 6pt, clip: true, stroke: 2pt + red-alert)[
    #table(
      columns: (auto, 1fr, 1.5fr),
      inset: 9pt,
      stroke: 0.5pt + grey-border,
      fill: (_, y) => if y == 0 { red-alert } else if calc.odd(y) { red-light } else { white },
      align: (center, left, left),
      text(fill: white, weight: "bold", size: 9pt)[NUMBER],
      text(fill: white, weight: "bold", size: 9pt)[SERVICE],
      text(fill: white, weight: "bold", size: 9pt)[NOTES],
      text(weight: "bold", size: 16pt)[100], [*Israel Police*], [Security incidents, unexploded ordnance],
      text(weight: "bold", size: 16pt)[101], [*Magen David Adom*], [Injuries, medical emergencies],
      text(weight: "bold", size: 16pt)[102], [*Fire & Rescue*], [Fires, trapped persons, structural collapse],
      text(weight: "bold", size: 16pt)[103], [*Electric Corp.*], [Power outages, electrical hazards],
      text(weight: "bold", size: 16pt)[104], [*Home Front Command*], [Guidelines, alerts, emergency info],
      text(weight: "bold", size: 16pt)[110], [*Police Info*], [Road blocks, police information],
    )
  ]
  #v(0.3cm)
  #table(
    columns: (auto, 1fr),
    inset: 8pt,
    stroke: 0.5pt + grey-border,
    fill: (_, y) => if y == 0 { blue-dark } else if calc.odd(y) { green-light } else { white },
    align: (center, left),
    text(fill: white, weight: "bold", size: 9pt)[NUMBER],
    text(fill: white, weight: "bold", size: 9pt)[SUPPORT & WELFARE],
    text(weight: "bold")[118], [Welfare Ministry — Information and assistance],
    text(weight: "bold")[1201], [ERAN — Emotional first aid hotline],
    text(weight: "bold")[\*8840], [Senior Citizens — Ministry of Social Equality],
    text(weight: "bold")[105], [Missing persons hotline],
    text(weight: "bold")[1-800-363-363], [NATAL — Trauma support],
    text(weight: "bold")[03-6919765], [NAAN — Youth crisis line],
  )
  #v(0.4cm)
  #block(width: 100%, inset: 10pt, fill: grey-light, radius: 6pt)[
    #text(size: 9pt, weight: "bold")[Personal Emergency Contacts:]
    #v(4pt)
    #grid(
      columns: (1fr, 1fr), column-gutter: 12pt, row-gutter: 8pt,
      [Name: #box(width: 5cm, stroke: (bottom: 0.5pt + grey-text))[]],
      [Phone: #box(width: 5cm, stroke: (bottom: 0.5pt + grey-text))[]],
      [Name: #box(width: 5cm, stroke: (bottom: 0.5pt + grey-text))[]],
      [Phone: #box(width: 5cm, stroke: (bottom: 0.5pt + grey-text))[]],
      [Name: #box(width: 5cm, stroke: (bottom: 0.5pt + grey-text))[]],
      [Phone: #box(width: 5cm, stroke: (bottom: 0.5pt + grey-text))[]],
    )
  ]
  #v(0.2cm)
  #align(center, text(size: 9pt, weight: "bold", fill: red-alert)[
    PRINT THIS PAGE. Post on fridge, in mamad, and in go bag. Do NOT rely on phone alone.
  ])
]

#set page(..standalone-page)
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)
#emergency-numbers-content()
#printable-footer()
