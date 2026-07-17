#import "../config.typ": handbook, palette
#import "../styles/components.typ": dashboard-card, pill, info-card

#let chapter() = {
  grid(columns: (1fr, auto), align: horizon,
    [#text(size: 22pt, weight: 650)[Mein Therapie-Dashboard] #v(3pt) #text(size: 9pt, fill: palette.muted)[Reiner Design-Prototyp ohne Auswertungslogik]],
    pill("HTH v" + handbook.version, palette.info),
  )
  v(12pt)
  grid(columns: (1fr, 1fr, 1fr), gutter: 8pt,
    dashboard-card("Name", "Beispielperson", accent: palette.info),
    dashboard-card("Startdatum", "01.08.2026", accent: palette.grey_attack),
    dashboard-card("Therapiestatus", "Entwurf", detail: "Neutraler Platzhalter", accent: palette.minoxidil),
  )
  v(10pt)
  block(width: 100%, inset: 12pt, radius: 8pt, fill: palette.surface)[
    #grid(columns: (1fr, auto), [#text(size: 8pt, weight: 650)[FORTSCHRITT]], [#text(size: 8pt, fill: palette.muted)[Platzhalter 00 %]])
    #v(8pt)
    #block(width: 100%, height: 4mm, radius: 3mm, fill: palette.surface-strong)[
      #rect(width: 32%, height: 100%, radius: 3mm, fill: palette.info)
    ]
  ]
  v(10pt)
  grid(columns: (1fr, 1fr), gutter: 8pt,
    info-card("Verwendete Produkte", [Grey Attack / Ketoconazol / Minoxidil / Dermastamp], accent: palette.grey_attack),
    info-card("Letzte Fotodokumentation", [Datum: TT.MM.JJJJ / Status: Platzhalter], accent: palette.nizoral),
  )
  v(10pt)
  grid(columns: (1fr, 1fr, 1fr), gutter: 8pt,
    dashboard-card("Statistik A", "--", detail: "Platzhalter", accent: palette.grey_attack),
    dashboard-card("Statistik B", "--", detail: "Platzhalter", accent: palette.nizoral),
    dashboard-card("Statistik C", "--", detail: "Platzhalter", accent: palette.dermastamp),
  )
}
