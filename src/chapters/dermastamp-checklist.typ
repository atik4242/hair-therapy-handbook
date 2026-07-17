#import "../config.typ": palette
#import "../styles/layout.typ": section-page
#import "../styles/components.typ": checklist, note-field, callout

#let dermastamp-checklist() = section-page(
  "03 / Checkliste",
  "Dermastamp vorbereiten & dokumentieren",
  intro: "Design-Prototyp ohne verbindliche medizinische Anleitung.",
)[
  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block(inset: 13pt, radius: 7pt, stroke: .7pt + palette.line)[
      #text(size: 8pt, weight: 650, fill: palette.dermastamp)[VOR DER ANWENDUNG]
      #v(10pt)
      #checklist(("Haende gewaschen", "Kopfhaut geprueft", "Instrument vorbereitet", "Instrument luftgetrocknet", "Nadellaenge notiert"))
    ],
    block(inset: 13pt, radius: 7pt, stroke: .7pt + palette.line)[
      #text(size: 8pt, weight: 650, fill: palette.dermastamp)[NACH DER ANWENDUNG]
      #v(10pt)
      #checklist(("Behandlung beendet", "Reaktion beobachtet", "Instrument nachbereitet", "Instrument trocken verstaut", "Notiz ergaenzt"))
    ],
  )
  #v(14pt)
  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block(inset: 13pt, radius: 7pt, fill: palette.surface)[
      #text(size: 8pt, weight: 650, fill: palette.muted)[DOKUMENTATION]
      #v(12pt)
      #text(size: 9pt)[Datum:] #h(4pt) #line(length: 35mm, stroke: .6pt + palette.line)
      #v(15pt)
      #text(size: 9pt)[Nadellaenge:] #h(4pt) #line(length: 24mm, stroke: .6pt + palette.line) #h(3pt) [mm]
      #v(15pt)
      #text(size: 9pt)[Bereich:] #h(4pt) #line(length: 33mm, stroke: .6pt + palette.line)
    ],
    note-field(title: "Direkte Beobachtung", lines: 6),
  )
  #v(14pt)
  #callout("Sicherheitsplatzhalter", "Konkrete Hygiene-, Pausen- und Abbruchregeln werden erst nach fachlicher Pruefung in einer spaeteren Inhaltsversion eingesetzt.", tone: "warning")
]

