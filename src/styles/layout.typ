#import "../config.typ": handbook, palette, page-margin

#let document-layout(body) = {
  set page(
    paper: "a4",
    margin: page-margin,
    fill: palette.paper,
    header: [
      #set text(size: 7.5pt, fill: palette.muted)
      #table(columns: (1fr, auto), stroke: none, inset: 0pt,
        [HTH / PATIENT HANDBOOK], [v#handbook.version],
      )
      #line(length: 100%, stroke: .5pt + palette.line)
    ],
    footer: [
      #line(length: 100%, stroke: .5pt + palette.line)
      #v(3pt)
      #set text(size: 7.5pt, fill: palette.muted)
      #table(columns: (1fr, auto), stroke: none, inset: 0pt,
        [Designsystem / neutrale Beispieldaten], [#context counter(page).display("1")],
      )
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
