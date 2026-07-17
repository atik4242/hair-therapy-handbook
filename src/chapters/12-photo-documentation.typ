#import "../styles/chapter.typ": chapter-shell
#import "../styles/components.typ": photo-placeholder
#import "../styles/components.typ": note-field
#let chapter() = chapter-shell("12", "Fotodokumentation", "Professionelle Vergleichsseite mit leeren Bildrahmen.", body: [
  #grid(columns: (1fr, 1fr, 1fr), gutter: 8pt,
    photo-placeholder("FRONT"), photo-placeholder("TOP"), photo-placeholder("VERTEX"),
  )
  #v(8pt)
  #grid(columns: (1fr, 1fr), gutter: 8pt,
    photo-placeholder("LINKS"), photo-placeholder("RECHTS"),
  )
  #v(9pt)
  #grid(columns: (auto, 1fr), gutter: 8pt, align: horizon,
    [#text(size: 8pt, weight: 650)[DATUM]], [#line(length: 45mm, stroke: .6pt + rgb("#D5DEE3"))],
  )
  #v(8pt)
  #note-field(title: "Bemerkungen", lines: 3)
])
