#import "../config.typ": palette
#import "../styles/layout.typ": section-page
#import "../styles/components.typ": photo-placeholder, progress-card, checklist

#let monthly-review() = section-page(
  "04 / Monatskontrolle",
  "Fortschritt sichtbar machen",
  intro: [Monat: #h(3pt) #line(length: 16mm, stroke: .5pt + palette.line) #h(10pt) Datum: #h(3pt) #line(length: 32mm, stroke: .5pt + palette.line)],
)[
  #grid(columns: (1fr, 1fr), gutter: 9pt,
    photo-placeholder("VORDERSEITE"),
    photo-placeholder("OBERKOPF"),
    photo-placeholder("TONSUR"),
    photo-placeholder("SEITENANSICHT"),
  )
  #v(11pt)
  #grid(columns: (1fr, 1fr), gutter: 9pt,
    progress-card("Haarausfall", palette.grey_attack),
    progress-card("Kopfhaut", palette.nizoral),
    progress-card("Routine", palette.minoxidil),
    progress-card("Vertraeglichkeit", palette.dermastamp),
  )
]
