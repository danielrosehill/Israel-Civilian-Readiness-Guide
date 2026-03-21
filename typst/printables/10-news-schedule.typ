// Printable: News Review Schedule (2 pages — Standard + Extra Vigilant)
#import "preamble.typ": *

#let news-standard-content() = [
  #printable-header("Situational Awareness — Standard Wartime", colour: blue-dark, icon-content: icon-news)
  #v(0.2cm)
  #text(size: 9pt, style: "italic")[Structured news monitoring prevents both under-awareness and doom-scrolling. Use this schedule during general wartime conditions.]
  #v(0.3cm)

  #table(
    columns: (1.2fr, 1.2fr, 2.5fr),
    inset: 9pt,
    stroke: 0.5pt + grey-border,
    fill: (_, y) => if y == 0 { blue-dark } else if calc.odd(y) { blue-light } else { white },
    align: (center, left, left),
    text(fill: white, weight: "bold", size: 9pt)[OFFSET],
    text(fill: white, weight: "bold", size: 9pt)[REVIEW POINT],
    text(fill: white, weight: "bold", size: 9pt)[WHAT TO CHECK],
    [Wake +0], [*Morning Scan*], [HFC app alerts · overnight incidents · current threat level],
    [Wake +3h], [*Mid-Morning Brief*], [News headlines · any new HFC advisories · shelter status],
    [Wake +6h], [*Midday Check*], [Situation development · HFC updates · any area changes],
    [Wake +9h], [*Afternoon Update*], [Escalation indicators · supply situation · travel advisories],
    [Wake +12h], [*Evening Review*], [Daily summary · overnight forecast · any curfew/guidance changes],
    [Before bed], [*Sleep Assessment*], [Safe to sleep at home? · alerts configured? · overnight threat level],
  )

  #v(0.15cm)
  #text(size: 8pt, style: "italic")[Example for 07:00 wake: checks at 07:00, 10:00, 13:00, 16:00, 19:00, and before bed.]

  #v(0.5cm)
  #block(width: 100%, inset: 12pt, fill: green-light, radius: 6pt, stroke: 1pt + green-calm)[
    #text(size: 10pt, weight: "bold", fill: green-calm)[Healthy monitoring habits:]
    #v(4pt)
    #set text(size: 9pt)
    - *Set a timer.* Check at scheduled times, then put the phone down. Constant scrolling increases anxiety without improving safety.
    - *One reliable source.* HFC app is ground truth. Cross-reference with one trusted news outlet. Ignore social media rumours.
    - *Share the load.* In a household, take turns being the "news person." Not everyone needs to watch simultaneously.
    - *Night discipline.* Unless on extra-vigilant, trust your phone alerts overnight. You do not need to set an alarm to check news.
  ]
]

#let news-vigilant-content() = [
  #printable-header("Situational Awareness — Extra Vigilant", colour: red-alert, icon-content: icon-alert)
  #v(0.2cm)
  #text(size: 9pt, style: "italic")[Use during active escalation, confirmed threats in your area, or when HFC has raised alert level.]
  #v(0.3cm)

  #table(
    columns: (1.5fr, 2.5fr),
    inset: 9pt,
    stroke: 0.5pt + grey-border,
    fill: (_, y) => if y == 0 { blue-dark } else if calc.odd(y) { red-light } else { white },
    align: (left, left),
    text(fill: white, weight: "bold", size: 9pt)[TRIGGER],
    text(fill: white, weight: "bold", size: 9pt)[ACTION],
    [*Every 90 minutes*], [Quick HFC app scan — 30 seconds. Check for new alerts or area changes.],
    [*Before leaving home*], [Full situation check. Active alerts? Route shelters identified?],
    [*Before shower*], [Are there active alerts in your area right now?],
    [*After any siren / alert*], [Developing situation? Follow-up strikes expected? Stay in shelter until confirmed clear.],
    [*Before bed*], [Extended assessment — check multiple sources. Safe to sleep? HFC app override set?],
    [*If woken at night*], [Quick scan before returning to sleep. New alerts? Escalation?],
  )

  #v(0.4cm)
  #block(width: 100%, inset: 14pt, fill: red-light, radius: 8pt, stroke: 2pt + red-alert)[
    #text(size: 11pt, weight: "bold", fill: red-alert)[When to escalate from Standard to Extra Vigilant:]
    #v(6pt)
    #set text(size: 10pt)
    - HFC raises alert level for your area
    - Confirmed hostile activity nearby (within your shelter-time zone)
    - Multiple alerts in 24 hours
    - Government or military advisory to stay near shelter
    - Your own judgement says the situation is deteriorating
  ]

  #v(0.3cm)
  #block(width: 100%, inset: 14pt, fill: green-light, radius: 8pt, stroke: 2pt + green-calm)[
    #text(size: 11pt, weight: "bold", fill: green-calm)[When to de-escalate back to Standard:]
    #v(6pt)
    #set text(size: 10pt)
    - 24+ hours with no alerts in your area
    - HFC lowers alert level
    - Official guidance confirms reduced threat
    - You're exhausting yourself — extra vigilance that causes burnout is counterproductive
  ]
]

// === Standalone compilation (2 pages) ===
#set page(..standalone-page)
#set text(font: "Atkinson Hyperlegible", size: 10pt, fill: grey-text)
#set par(leading: 0.7em)
#news-standard-content()
#printable-footer()
#pagebreak()
#news-vigilant-content()
#printable-footer()
