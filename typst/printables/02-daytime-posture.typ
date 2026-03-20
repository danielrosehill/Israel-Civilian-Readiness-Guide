// Printable: Daytime At-Home Posture
#import "preamble.typ": *

#set page(paper: "a4", margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm))
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)

#printable-header("Daytime At-Home Posture", colour: rgb("#d35400"), icon-content: icon-sun)

#v(0.2cm)
#text(size: 9pt, style: "italic")[Run after waking and repeat after any disruption. Maintain this posture throughout the day.]
#v(0.3cm)

#table(
  columns: (auto, 1fr, 2fr),
  inset: 10pt,
  stroke: 0.5pt + grey-border,
  fill: (_, y) => if y == 0 { blue-dark } else if calc.odd(y) { grey-light } else { white },
  align: (center, left, left),
  [],
  text(fill: white, weight: "bold", size: 9pt)[ITEM],
  text(fill: white, weight: "bold", size: 9pt)[CHECK],

  icon-phone, [*Phone* #critical], [#ci(d: "Or within arm's reach")[ON PERSON] #linebreak() #ci[CHARGED OR CHARGING] #linebreak() #ci[HFC APP RUNNING]],
  icon-shirt, [*Dressed* #critical], [#ci[FULLY CLOTHED] #linebreak() #ci(d: "Not slippers, not barefoot")[CLOSED-TOE SHOES ON]],
  icon-key, [*Keys* #critical], [#ci[ON PERSON OR IN/BY DOOR]],
  icon-bag, [*Go Bag* #critical], [#ci[BY DOOR] #h(6pt) #ci[ZIPPED]],
  icon-door, [*Exit Route* #critical], [#ci[HALLWAY CLEAR] #linebreak() #ci[FRONT DOOR CAN BE OPENED QUICKLY]],
  icon-laptop, [*Browser Alert*], [#ci(d: "If working at desk")[RED ALERT EXTENSION ACTIVE]],
)

#v(0.4cm)

#block(
  width: 100%,
  inset: 12pt,
  fill: blue-light,
  radius: 6pt,
  stroke: 1pt + blue-accent,
)[
  #text(size: 10pt, weight: "bold", fill: blue-dark)[Working from home during wartime:]
  #v(4pt)
  #set text(size: 9pt)
  - Stay dressed and shoed — do not slip into pyjamas "just at the desk"
  - Headphones: use one ear only, or keep volume low enough to hear a siren
  - Save work frequently — you may need to abandon your desk mid-sentence
  - At the start of any call: _"I'm in an active alert zone. I may need to leave abruptly."_
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
