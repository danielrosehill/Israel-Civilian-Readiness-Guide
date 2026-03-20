// Printable: Before Bed Checklist
#import "preamble.typ": *

#set page(paper: "a4", margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm))
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)

#printable-header("Before Bed Checklist", colour: blue-dark, icon-content: icon-moon)

#v(0.2cm)
#text(size: 9pt, style: "italic")[Run every night. Everything here exists so a 3am siren is survivable on autopilot.]
#v(0.3cm)

#table(
  columns: (auto, 1fr, 2fr),
  inset: 9pt,
  stroke: 0.5pt + grey-border,
  fill: (_, y) => if y == 0 { blue-dark } else if calc.odd(y) { grey-light } else { white },
  align: (center, left, left),
  [],
  text(fill: white, weight: "bold", size: 9pt)[ITEM],
  text(fill: white, weight: "bold", size: 9pt)[CHECK],

  icon-eye, [*News Check*], [#ci(d: "Assess if safe to sleep at home")[SITUATION SCANNED]],
  icon-phone, [*Phone* #critical], [#ci[CHARGING OR CHARGED] #linebreak() #ci(d: "DND/silent OK")[NOT IN AIRPLANE MODE] #linebreak() #ci[LOCATION SERVICES ON] #linebreak() #ci[HFC APP — OVERRIDE PERMISSIONS]],
  icon-shirt, [*Clothes* #critical], [#ci(d: "Full outfit ready in seconds")[LAID OUT BY BED]],
  icon-shoe, [*Footwear* #critical], [#ci(d: "Ready to step into")[CLOSED-TOE SHOES BY BED]],
  [], [*Torch*], [#ci(d: "On nightstand, not in go bag")[WITHIN ARM'S REACH]],
  [], [*Glasses*], [#ci(d: "Same spot every night")[BY BED]],
  icon-key, [*Keys*], [#ci(d: "By bed or on hook by front door")[ACCESSIBLE]],
  icon-bag, [*Go Bag* #critical], [#ci[BY DOOR] #h(4pt) #ci[CONTENTS VERIFIED] #linebreak() #ci[POWER BANK ON CHARGE]],
  icon-door, [*Exit Route* #critical], [#ci(d: "Can navigate in the dark")[HALLWAY CLEAR] #linebreak() #ci[FRONT DOOR NOT DOUBLE-LOCKED]],
  icon-alert, [*Hearing* #critical], [#ci(d: "Must hear siren + phone alert")[NO EARPLUGS]],
  icon-baby, [*Dependents* #critical], [#ci[ALL ACCOUNTED FOR] #linebreak() #ci[BABY — CLOTHES BY BED, BABYWEAR BY DOOR]],
)

#v(0.2cm)

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
