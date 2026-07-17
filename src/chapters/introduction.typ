#import "../config.typ": palette
#import "../styles/layout.typ": section-page
#import "../styles/components.typ": product-card, callout

#let introduction() = section-page(
  "01 / Orientierung",
  "Das System auf einen Blick",
  intro: "Ein ruhiges, druckbares Designfundament fuer die spaetere persoenliche Routine.",
)[
  #grid(columns: (1fr, 1fr), gutter: 8pt,
    product-card("Grey Attack", "grey", "Farbroutine und Pflege dokumentieren."),
    product-card("Nizoral 2 %", "nizoral", "Kopfhautpflege im Wochenrhythmus abbilden."),
    product-card("Minoxidil", "minoxidil", "Regelmaessige Anwendung nachvollziehbar machen."),
    product-card("Dermastamp", "stamp", "Behandlung und Hygiene gemeinsam protokollieren."),
  )
  #v(12pt)
  #callout("Prototyp-Hinweis", "Die Texte zeigen nur Struktur und Gestaltung. Dosierungen, Intervalle und medizinische Empfehlungen werden erst fachlich geprueft in HTH-002 erarbeitet.")
]
#pagebreak()

