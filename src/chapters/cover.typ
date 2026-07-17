#import "../config.typ": handbook, palette

#let cover() = {
  set page(header: none, footer: none)
  v(17mm)
  rect(width: 18mm, height: 3mm, fill: palette.grey_attack, radius: 2mm)
  v(14mm)
  text(size: 9pt, weight: 650, fill: palette.muted, tracking: 1.5pt)[HTH / PERSONAL HEALTH PLANNER]
  v(8mm)
  text(size: 35pt, weight: 700, fill: palette.ink)[Hair Therapy]
  linebreak()
  text(size: 35pt, weight: 300, fill: palette.ink)[Handbook]
  v(8mm)
  text(size: 13pt, fill: palette.muted)[#handbook.subtitle]
  v(28mm)
  grid(columns: (1fr, 1fr), gutter: 8mm,
    block(inset: 12pt, radius: 7pt, fill: palette.surface)[
      #text(size: 7pt, weight: 650, fill: palette.muted)[NAME] #v(5pt)
      #text(size: 11pt, weight: 600)[#handbook.name]
    ],
    block(inset: 12pt, radius: 7pt, fill: palette.surface)[
      #text(size: 7pt, weight: 650, fill: palette.muted)[STARTDATUM] #v(5pt)
      #text(size: 11pt, weight: 600)[#handbook.start_date]
    ],
  )
  v(1fr)
  grid(columns: (1fr, auto), align: bottom,
    [#text(size: 8pt, fill: palette.muted)[Design-Prototyp / fiktive Beispieldaten]],
    [#text(size: 9pt, weight: 650, fill: palette.ink)[v#handbook.version]],
  )
  pagebreak()
}

