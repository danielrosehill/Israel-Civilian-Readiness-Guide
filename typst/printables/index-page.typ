// Index page for the spiral-bound booklet
#import "preamble.typ": *

#let index-page-content() = [
  #printable-header("Index", colour: blue-dark)

  #v(0.4cm)

  #table(
    columns: (auto, 2.5fr, auto),
    inset: 9pt,
    stroke: 0.5pt + grey-border,
    fill: (_, y) => if y == 0 { blue-dark } else if calc.odd(y) { grey-light } else { white },
    align: (center, left, center),
    text(fill: white, weight: "bold", size: 9pt)[PAGE],
    text(fill: white, weight: "bold", size: 9pt)[CHECKLIST],
    text(fill: white, weight: "bold", size: 9pt)[POST AT],

    // General Readiness
    table.cell(colspan: 3, fill: rgb("#0e7c47"), inset: 6pt)[
      #text(fill: white, weight: "bold", size: 10pt)[General Readiness]
    ],
    [], [Quick Readiness Check], [Fridge / front door],
    [], [Daytime At-Home Posture], [Fridge / home office],
    [], [Before Bed], [Bedroom door],
    [], [Night Alarm — 30-Second Drill], [Wall by bed],

    // Situational — Rockets & Missiles
    table.cell(colspan: 3, fill: rgb("#d35400"), inset: 6pt)[
      #text(fill: white, weight: "bold", size: 10pt)[Situational — Rockets & Missiles]
    ],
    [], [Before Showering], [Bathroom mirror],
    [], [Before Leaving Home], [Front door],
    [], [After Shelter — Reset], [Mamad / shelter],
    [], [Bathing a Baby], [Near baby bath],

    // Shabbat & Special
    table.cell(colspan: 3, fill: purple-shab, inset: 6pt)[
      #text(fill: white, weight: "bold", size: 10pt)[Shabbat & Special Situations]
    ],
    [], [Shabbat / Hag — Pre-Candle-Lighting], [Kitchen / dining],

    // Reference & Maintenance
    table.cell(colspan: 3, fill: blue-dark, inset: 6pt)[
      #text(fill: white, weight: "bold", size: 10pt)[Reference & Maintenance]
    ],
    [], [Emergency Numbers — Israel], [Fridge + mamad + go bag],
    [], [Situational Awareness — Standard Wartime], [Home office],
    [], [Situational Awareness — Extra Vigilant], [Home office],
    [], [Respiratory Protection], [With go bag],
    [], [During a Lull — Resupply & Maintenance], [Fridge / front door],

    // Specific Threat Protocols
    table.cell(colspan: 3, fill: red-alert, inset: 6pt)[
      #text(fill: white, weight: "bold", size: 10pt)[Specific Threat Protocols]
    ],
    [], [Terrorist Infiltration — Quick Reference], [Mamad / front door],
    [], [UAV / Drone Alert — Quick Reference], [Mamad / front door],
  )

  #v(0.4cm)

  #block(
    width: 100%,
    inset: 10pt,
    fill: grey-light,
    radius: 4pt,
  )[
    #text(size: 8.5pt, style: "italic")[
      Page numbers are filled in after printing and binding. Use the coloured header/footer bars to flip to any section quickly.
    ]
  ]
]

#set page(..standalone-page)
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)
#index-page-content()
