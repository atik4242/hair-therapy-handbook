#import "../styles/chapter.typ": chapter-shell
#import "../styles/tables.typ": weekly-table
#import "../styles/components.typ": checkbox, note-field, pill
#import "../config.typ": palette
#let chapter() = chapter-shell("10", "Wochenplaene", "Leere Vorlage fuer ausschliesslich selbst festgelegte Eintraege.", body: [
  #grid(columns: (1fr, auto), align: horizon,
    [#text(size: 8pt, weight: 650)[WOCHE] #h(4pt) #line(length: 15mm, stroke: .6pt + palette.line)],
    pill("Nutzerdefinierte Vorlage", palette.info),
  )
  #v(7pt)
  #block(width: 100%, inset: 8pt, radius: 5pt, fill: palette.surface)[
    #text(size: 8pt, weight: 650)[Nichtmedizinische Funktionsdemonstration] #h(4pt)
    #text(size: 8pt)[Keine Empfehlung und kein Behandlungsplan. Alle Eintraege werden vom Nutzer selbst festgelegt, bearbeitet oder geloescht.]
  ]
  #v(10pt)
  #block(width: 100%, inset: 5pt, radius: 8pt, stroke: .7pt + palette.line)[#weekly-table()]
  #v(9pt)
  #grid(columns: (auto, auto, 1fr), gutter: 6pt, align: horizon,
    checkbox(size: 4.5mm), [#text(size: 7.5pt)[vom Nutzer markierbar]], [],
  )
  #v(11pt)
  #note-field(title: "Wochennotiz", lines: 3)
])
