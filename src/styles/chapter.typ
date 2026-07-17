#import "../config.typ": palette
#import "components.typ": info-card, citation-placeholder, chapter-banner

#let chapter-shell(number, title, introduction, sections: ("Inhaltsbereich",), body: none) = {
  show heading.where(level: 1): it => chapter-banner(number, it.body, introduction)
  heading(level: 1, outlined: true)[#title]
  v(12pt)
  if body != none {
    body
  } else {
    grid(columns: (1fr, 1fr), gutter: 9pt,
      ..sections.map(section => info-card(section, [Neutraler Inhaltsplatzhalter fuer HTH-002. Fachtext folgt in einer spaeteren, geprueften Version.])),
    )
    v(12pt)
    citation-placeholder()
  }
}
