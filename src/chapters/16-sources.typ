#import "../styles/chapter.typ": chapter-shell
#import "../styles/components.typ": info-card, citation-placeholder
#let chapter() = chapter-shell("17", "Quellen", "Vorbereitete Zitierstruktur ohne uebernommene Inhalte oder Literaturangaben.", body: [
  #info-card("Quellenregister", [Zentrale Datenstruktur: src/data/sources.yaml])
  #v(10pt)
  #info-card("Vorgesehene Felder", [Interne ID, DOI, PMID, Leitlinie, Fachgesellschaft, URL, Abrufdatum, Evidenzstufe und redaktionelle Notiz.])
  #v(10pt)
  #citation-placeholder(key: "SOURCE-ID")
])
