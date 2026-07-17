#import "../config.typ": palette
#import "colors.typ": product-color

#let checkbox(size: 4.8mm) = box(width: size, height: size, stroke: 1pt + palette.ink, radius: 1.2pt)
#let blocked(size: 4.8mm) = box(width: size, height: size, fill: palette.ink, radius: 1.2pt)

#let pill(label, color) = box(
  inset: (x: 7pt, y: 3pt), radius: 20pt,
  fill: color.lighten(82%),
  text(size: 7.5pt, weight: 650, fill: color)[#label],
)

#let callout(title, body, tone: "info") = {
  let color = if tone == "warning" { palette.warning } else { palette.muted }
  block(width: 100%, inset: 10pt, radius: 6pt, fill: color.lighten(91%), stroke: (left: 3pt + color))[
    #text(weight: 650, fill: color)[#title] #h(5pt) #text(fill: palette.ink)[#body]
  ]
}

#let medical-note(body) = callout("Medizinischer Hinweis", body, tone: "warning")
#let tip(body) = callout("Tipp", body)
#let warning(body) = callout("Warnung", body, tone: "warning")
#let key-message(body) = callout("Merksatz", body)

#let step-by-step(steps) = block(width: 100%, inset: 11pt, radius: 6pt, stroke: .7pt + palette.line)[
  #text(size: 8pt, weight: 650, fill: palette.muted)[SCHRITT FUER SCHRITT]
  #v(8pt)
  #grid(
    columns: (7mm, 1fr), row-gutter: 8pt,
    ..steps.enumerate().map(pair => (
      box(width: 5.5mm, height: 5.5mm, radius: 50%, fill: palette.ink, align(center + horizon, text(size: 7pt, weight: 650, fill: white)[#(pair.first() + 1)])),
      align(horizon)[#pair.last()],
    )).flatten(),
  )
]

#let info-card(title, body, accent: palette.muted) = block(
  width: 100%, inset: 10pt, radius: 6pt,
  fill: accent.lighten(94%), stroke: .7pt + accent.lighten(55%),
)[
  #text(size: 8pt, weight: 650, fill: accent)[#title]
  #v(6pt)
  #text(size: 8.5pt)[#body]
]

#let citation-placeholder(key: "SOURCE-ID") = box(
  inset: (x: 5pt, y: 2pt), radius: 3pt,
  stroke: .6pt + palette.line,
  text(size: 7pt, fill: palette.muted)[Quelle: #key],
)

#let checklist(items) = grid(
  columns: (6mm, 1fr), row-gutter: 7pt,
  ..items.map(item => (checkbox(size: 4.2mm), align(horizon)[#item])).flatten(),
)

#let note-field(title: "Notizen", lines: 5) = block(width: 100%, inset: 11pt, radius: 6pt, stroke: .7pt + palette.line)[
  #text(size: 8pt, weight: 650, fill: palette.muted)[#upper(title)]
  #v(8pt)
  #for _ in range(lines) [#line(length: 100%, stroke: .45pt + palette.line) #v(11pt)]
]

#let photo-placeholder(label) = block(width: 100%, height: 45mm, inset: 9pt, radius: 6pt, stroke: 1pt + palette.line)[
  #align(center + horizon)[
    #text(size: 18pt, fill: palette.line)[+] \
    #text(size: 8pt, weight: 650, fill: palette.muted)[#label] \
    #text(size: 7pt, fill: palette.muted)[Datum:] #h(3pt) #line(length: 25mm, stroke: .5pt + palette.line)
  ]
]

#let progress-card(label, accent) = block(width: 100%, inset: 9pt, radius: 6pt, stroke: .7pt + palette.line)[
  #pill(label, accent) #v(9pt)
  #text(size: 8pt, fill: palette.muted)[Bewertung] #h(8pt)
  #for _ in range(5) [#box(width: 5mm, height: 5mm, stroke: .8pt + accent, radius: 50%) #h(4pt)]
]

#let product-card(name, kind, purpose) = {
  let accent = product-color(kind)
  block(width: 100%, height: 31mm, inset: 10pt, radius: 7pt, fill: accent.lighten(94%), stroke: .7pt + accent.lighten(55%))[
    #pill(name, accent)
    #v(7pt)
    #text(size: 8.5pt, fill: palette.ink)[#purpose]
    #v(5pt)
    #text(size: 7pt, fill: palette.muted)[Inhalt folgt in HTH-002]
  ]
}
