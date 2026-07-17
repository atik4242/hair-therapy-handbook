#import "../config.typ": palette
#import "components.typ": info-card, citation-placeholder

#let chapter-shell(number, title, introduction, sections: ("Inhaltsbereich",), body: none) = {
  text(size: 8pt, weight: 650, fill: palette.muted, tracking: 1pt)[KAPITEL #number]
  v(3pt)
  heading(level: 1, outlined: true)[#title]
  text(size: 10pt, fill: palette.muted)[#introduction]
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
