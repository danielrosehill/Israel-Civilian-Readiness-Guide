// Printable: Night Alarm Procedure
#import "preamble.typ": *

#set page(paper: "a4", margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm))
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)

#printable-header("Night Alarm — The 30-Second Drill", colour: red-alert, icon-content: icon-moon)

#v(0.2cm)
#text(size: 9pt, style: "italic")[Post this by your bed. Everything here exists so you don't have to think at 3am.]
#v(0.4cm)

#block(
  width: 100%,
  inset: 14pt,
  fill: red-light,
  radius: 8pt,
  stroke: 2pt + red-alert,
)[
  #text(size: 14pt, weight: "bold", fill: red-alert)[The First 5 Seconds]
  #v(6pt)
  #set text(size: 12pt)
  + *Siren or phone alert wakes you.* Do not process. Just move.
  + *Feet on floor → into shoes.* Same spot every night.
  + *Grab glasses* and *phone* from nightstand.
  + *Caffeine pill _(optional)_* — sip of water if bedside.
]

#v(0.3cm)

#block(
  width: 100%,
  inset: 14pt,
  fill: rgb("#fff8e1"),
  radius: 8pt,
  stroke: 2pt + orange-warm,
)[
  #text(size: 14pt, weight: "bold", fill: orange-warm)[The Next 10–20 Seconds]
  #v(6pt)
  #set text(size: 12pt)
  5. *Clothes:* Pull on whatever is laid out. Speed over appearance.
  6. *Grab torch* from nightstand if power is out.
  7. *Move to protected space* or front door.
]

#v(0.3cm)

#block(
  width: 100%,
  inset: 14pt,
  fill: blue-light,
  radius: 8pt,
  stroke: 2pt + blue-accent,
)[
  #text(size: 14pt, weight: "bold", fill: blue-dark)[For Parents]
  #v(6pt)
  #set text(size: 12pt)
  8. *One parent → child/children.* Other → go bag. _(Pre-assigned roles.)_
  9. *Carry baby in babywear* that's by the door. Do not stop to dress them.
]

#v(0.5cm)

#block(
  width: 100%,
  inset: 12pt,
  fill: grey-light,
  radius: 6pt,
  stroke: 1pt + grey-border,
)[
  #set text(size: 11pt, weight: "bold", fill: blue-dark)
  #align(center)[
    Do not think. Follow the procedure. \
    Do not check your phone. The siren means go. \
    It gets easier. After 2–3 nights, the routine becomes automatic.
  ]
]

#printable-footer()
