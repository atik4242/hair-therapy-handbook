#import "../styles/layout.typ": section-page
#import "../styles/components.typ": note-field, callout

#let notes() = section-page(
  "05 / Dokumentation",
  "Beobachtungen & Fragen",
  intro: "Kurze Notizen helfen, Veraenderungen spaeter zeitlich einzuordnen.",
)[
  #note-field(title: "Beobachtungen", lines: 10)
  #v(12pt)
  #note-field(title: "Fragen fuer die dermatologische Beratung", lines: 7)
  #v(12pt)
  #callout("Datenschutz", "Keine privaten Fotos oder Gesundheitsdaten in das Repository uebernehmen. Persoenliche Eintraege gehoeren ausschliesslich in die eigene lokale oder gedruckte Kopie.", tone: "warning")
]
