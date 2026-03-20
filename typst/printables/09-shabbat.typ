// Printable: Shabbat / Hag Preparation
#import "preamble.typ": *

#set page(paper: "a4", margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm))
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)

#printable-header("Shabbat / Hag — Pre-Candle-Lighting Checklist", colour: rgb("#8e44ad"))

#v(0.2cm)
#text(size: 9pt, style: "italic")[Complete before candle-lighting. When phones are off, sirens are your only alert.]
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

  icon-alert, [*TV / Channel 14* #critical], [#ci[PLAYING BEFORE SHABBAT] #linebreak() #ci(d: "Verify not muted")[VOLUME — AUDIBLE FROM BEDROOMS]],
  icon-radio, [*Emergency Radio* #critical], [#ci[FREQUENCY VERIFIED] #linebreak() #ci[VOLUME AT MAXIMUM] #linebreak() #ci[POWER — AC OR BATTERIES]],
  icon-bag, [*Go Bag*], [#ci[BY DOOR] #h(4pt) #ci[CONTENTS VERIFIED]],
  icon-bag, [*Shabbat Supplies*], [#ci(d: "Siddur, kiddush cup, snacks for shelter")[PACKED]],
  icon-shoe, [*Shoes* #critical], [#ci(d: "Not slippers")[CLOSED-TOE BY BED AND BY DOOR]],
  icon-shirt, [*Clothes*], [#ci(d: "Full outfit, not just pyjamas")[LAID OUT BY BED]],
  icon-key, [*Keys*], [#ci[BY FRONT DOOR]],
  [], [*Torch*], [#ci(d: "Pre-set on nightstand")[WITHIN ARM'S REACH]],
  [], [*Windows*], [#ci(d: "To hear outdoor sirens")[SLIGHTLY OPEN]],
)

#v(0.3cm)

#block(
  width: 100%,
  inset: 12pt,
  fill: rgb("#f3e5f5"),
  radius: 6pt,
  stroke: 1.5pt + rgb("#8e44ad"),
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#8e44ad"))[Pikuach Nefesh]
  #v(4pt)
  #text(size: 9.5pt)[
    Preservation of life overrides all Shabbat prohibitions. If a siren sounds, you *may and must* use your phone, carry items, and do whatever is needed to reach shelter safely. This is not a leniency — it is *halacha*.
  ]
]

#v(0.3cm)

#block(
  width: 100%,
  inset: 10pt,
  fill: red-light,
  radius: 6pt,
  stroke: 1pt + red-alert,
)[
  #text(size: 9.5pt, weight: "bold", fill: red-alert)[During Shabbat:]
  #text(size: 9pt)[ Keep windows open for sirens · TV/radio must stay audible · Know your shelter route in the dark · Stay in shelter 10 min or until all-clear on TV/radio]
]

#printable-footer()
