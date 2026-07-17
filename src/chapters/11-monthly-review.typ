#import "../styles/chapter.typ": chapter-shell
#import "../styles/components.typ": progress-card, note-field, checklist, dashboard-card
#import "../config.typ": palette
#let chapter() = chapter-shell("11", "Monatskontrolle", "Kompakte Monatsseite fuer visuelle und schriftliche Rueckblicke.", body: [
  #grid(columns: (1fr, 1fr, 1fr), gutter: 8pt,
    dashboard-card("Monat", "________", accent: palette.info),
    dashboard-card("Therapietreue", "-- %", detail: "Platzhalter", accent: palette.grey_attack),
    dashboard-card("Foto-Erinnerung", "Offen", detail: "Datum eintragen", accent: palette.nizoral),
  )
  #v(10pt)
  #grid(columns: (1fr, 1fr), gutter: 9pt,
    progress-card("Veraenderungen", palette.grey_attack),
    progress-card("Nebenwirkungen", palette.warning),
  )
  #v(10pt)
  #grid(columns: (1fr, 1fr), gutter: 9pt,
    note-field(title: "Beobachtete Veraenderungen", lines: 5),
    note-field(title: "Vertraeglichkeit / Nebenwirkungen", lines: 5),
  )
  #v(10pt)
  #block(width: 100%, inset: 10pt, radius: 7pt, fill: palette.surface)[
    #text(size: 8pt, weight: 650, fill: palette.muted)[MONATSCHECK]
    #v(7pt)
    #checklist(("Fotodokumentation erinnert", "Notizen ergaenzt", "Therapietreue bewertet", "Offene Fragen markiert"))
  ]
])
