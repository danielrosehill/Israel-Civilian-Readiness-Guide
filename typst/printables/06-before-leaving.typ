// Printable: Before Leaving Home
#import "preamble.typ": *

#set page(paper: "a4", margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm))
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)

#printable-header("Before Leaving Home", colour: rgb("#d35400"), icon-content: icon-door)

#v(0.2cm)
#text(size: 9pt, style: "italic")[Run every time you leave the house during wartime or escalation.]
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

  icon-bag, [*Go Bag* #critical], [#ci[TAKING WITH YOU]],
  icon-eye, [*News Check* #critical], [#ci(d: "Check HFC app and news for active alerts")[SITUATION SCANNED BEFORE DEPARTURE]],
  icon-shield, [*Shelters* #critical], [#ci(d: "At destination and along route")[NEAREST SHELTERS IDENTIFIED]],
  icon-clock, [*Time To Shelter*], [#ci[KNOWN FOR DESTINATION AREA]],
  icon-phone, [*Phone* #critical], [#ci[CHARGED] #h(4pt) #ci[HFC APP RUNNING] #h(4pt) #ci[LOCATION ON]],
  icon-car, [*Car Fuel*], [#ci[AT LEAST HALF A TANK]],
  icon-people, [*Household Notified*], [#ci[DESTINATION AND RETURN TIME COMMUNICATED]],
)

#v(0.5cm)

#block(
  width: 100%,
  inset: 12pt,
  fill: red-light,
  radius: 6pt,
  stroke: 1.5pt + red-alert,
)[
  #text(size: 10pt, weight: "bold", fill: red-alert)[⚠ If a siren sounds while driving:]
  #v(4pt)
  #set text(size: 10pt)
  + *Pull over* to the side of the road
  + *Exit the vehicle* and move away from it
  + *Enter the nearest building* or lie flat on the ground
  + *Protect your head* with your hands
  + *Wait 10 minutes* before returning to your vehicle
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
