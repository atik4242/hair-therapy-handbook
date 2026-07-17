#import "../styles/chapter.typ": chapter-shell
#import "../styles/tables.typ": weekly-table
#import "../styles/components.typ": checkbox, blocked, note-field, pill
#import "../config.typ": palette
#let chapter() = chapter-shell("10", "Wochenplaene", "Grosszuegige Wochenansicht mit klarer Schwarz-Weiss-Logik.", body: [
  #grid(columns: (1fr, auto), align: horizon,
    [#text(size: 8pt, weight: 650)[WOCHE] #h(4pt) #line(length: 15mm, stroke: .6pt + palette.line)],
    pill("Design-Prototyp", palette.info),
  )
  #v(10pt)
  #block(width: 100%, inset: 5pt, radius: 8pt, stroke: .7pt + palette.line)[#weekly-table()]
  #v(9pt)
  #grid(columns: (auto, auto, 1fr, auto, auto), gutter: 6pt, align: horizon,
    checkbox(size: 4.5mm), [#text(size: 7.5pt)[vorgesehen]], [],
    blocked(size: 4.5mm), [#text(size: 7.5pt)[gesperrt]],
  )
  #v(11pt)
  #note-field(title: "Wochennotiz", lines: 3)
])
