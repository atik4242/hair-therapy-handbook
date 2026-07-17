#import "../config.typ": palette
#import "components.typ": at-a-glance, editorial-key-message, practice-tip, common-error, scientific-background, summary-box, checklist, note-field, citation-placeholder, illustration-slot, faq-question, info-card

#let neutral = [Neutraler redaktioneller Platzhalter. Fachlich gepruefter Inhalt folgt in einem spaeteren Meilenstein.]

#let editorial-framework(main-title: "Hauptinhalt", main-content: neutral, illustration: "GENERAL") = {
  at-a-glance(neutral)
  v(8pt)
  grid(columns: (1fr, 1fr), gutter: 8pt,
    info-card("Lernziele", [#checklist(("Lernziel A", "Lernziel B", "Lernziel C"))]),
    info-card(main-title, main-content),
  )
  v(8pt)
  grid(columns: (1fr, 1fr), gutter: 8pt,
    editorial-key-message(neutral),
    practice-tip(neutral),
    common-error(neutral),
    scientific-background(neutral),
  )
  v(8pt)
  grid(columns: (1fr, 1fr), gutter: 8pt,
    note-field(title: "Dokumentationsbereich", lines: 3),
    illustration-slot("Spaetere Fachgrafik", illustration),
  )
  v(8pt)
  summary-box(neutral)
  v(7pt)
  citation-placeholder(key: "SOURCE-ID")
}

#let knowledge-page(illustration: "KNOWLEDGE") = editorial-framework(main-title: "Hauptinhalt / Wissen", illustration: illustration)
#let product-page(illustration: "PRODUCT") = editorial-framework(main-title: "Produktprofil / neutral", illustration: illustration)
#let step-page(illustration: "STEPS") = editorial-framework(main-title: "Schrittfolge / Platzhalter", illustration: illustration)
#let documentation-page(illustration: "DOCUMENTATION") = editorial-framework(main-title: "Dokumentationslogik", illustration: illustration)
#let overview-page(illustration: "OVERVIEW") = editorial-framework(main-title: "Uebersicht", illustration: illustration)

#let faq-page() = {
  at-a-glance(neutral)
  v(8pt)
  grid(columns: (1fr, 1fr), gutter: 8pt,
    faq-question("Q1"), faq-question("Q2"), faq-question("Q3"), faq-question("Q4"),
    faq-question("Q5"), faq-question("Q6"),
  )
  v(8pt)
  grid(columns: (1fr, 1fr), gutter: 8pt,
    info-card("Redaktionelle Kategorie", neutral),
    info-card("Quellenbedarf", neutral),
  )
  v(8pt)
  summary-box(neutral)
}
