#import "../config.typ": handbook, palette, page-margin

#let document-layout(body) = {
  set page(
    paper: "a4",
    margin: page-margin,
    fill: palette.paper,
    header: context [
      #set text(size: 7.5pt, fill: palette.muted)
      #grid(columns: (1fr, auto), [HTH / DESIGN PROTOTYPE], [v#handbook.version])
      #line(length: 100%, stroke: .5pt + palette.line)
    ],
    footer: context [
      #line(length: 100%, stroke: .5pt + palette.line)
      #v(3pt)
      #set text(size: 7.5pt, fill: palette.muted)
      #grid(columns: (1fr, auto), [Keine medizinische Fachlogik - fiktive Beispieldaten], [#counter(page).display("1")])
    ],
  )
  body
}

#let section-page(kicker, title, intro: none, body) = {
  block(width: 100%)[
    #text(size: 8pt, weight: 650, fill: palette.muted, tracking: 1pt)[#upper(kicker)]
    #v(5pt)
    #heading(level: 1)[#title]
    #if intro != none [#text(size: 10pt, fill: palette.muted)[#intro] #v(12pt)]
  ]
  body
}
