#import "../config.typ": handbook, palette

#let chapter() = {
  v(17mm)
  rect(width: 18mm, height: 3mm, fill: palette.grey_attack, radius: 2mm)
  v(14mm)
  text(size: 9pt, weight: 650, fill: palette.muted, tracking: 1.5pt)[HTH / CONTENT ARCHITECTURE]
  v(8mm)
  text(size: 35pt, weight: 700)[Hair Therapy]
  linebreak()
  text(size: 35pt, weight: 300)[Handbook]
  v(8mm)
  text(size: 13pt, fill: palette.muted)[Modulares Inhaltsfundament]
  v(28mm)
  block(width: 100%, inset: 14pt, radius: 7pt, fill: palette.surface)[
    #text(size: 8pt, weight: 650, fill: palette.muted)[MEILENSTEIN] #v(5pt)
    #text(size: 12pt, weight: 600)[HTH-002 / Content Architecture & Therapy Framework]
  ]
  v(1fr)
  grid(columns: (1fr, auto), [#text(size: 8pt, fill: palette.muted)[Neutrale Platzhalter / keine Gesundheitsdaten]], [v#handbook.version])
}
