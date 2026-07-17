#import "../config.typ": palette
#import "../styles/layout.typ": section-page
#import "../styles/tables.typ": weekly-table
#import "../styles/components.typ": note-field, checkbox, blocked

#let weekly-plan() = section-page(
  "02 / Wochenplan",
  "Woche",
  intro: [Wochennummer: #h(3pt) #line(length: 15mm, stroke: .5pt + palette.line) #h(10pt) Datum: #h(3pt) #line(length: 52mm, stroke: .5pt + palette.line)],
)[
  #weekly-table()
  #v(9pt)
  #grid(columns: (auto, 1fr, auto, 1fr), column-gutter: 5pt, align: horizon,
    checkbox(size: 4mm), [#text(size: 7.5pt)[vorgesehene Anwendung]],
    blocked(size: 4mm), [#text(size: 7.5pt)[heute nicht vorgesehen]],
  )
  #v(13pt)
  #note-field(title: "Wochennotizen", lines: 4)
]
