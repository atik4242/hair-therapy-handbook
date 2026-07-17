#import "../config.typ": palette, type-scale

#let typography(body) = {
  set text(font: "Arial", size: type-scale.body, fill: palette.ink, lang: "de")
  set par(leading: 0.64em, justify: false)
  show heading.where(level: 1): it => {
    set text(size: type-scale.chapter, weight: 650, fill: palette.ink)
    block(above: 0pt, below: 8pt)[#it.body]
  }
  show heading.where(level: 2): it => {
    set text(size: type-scale.section, weight: 650, fill: palette.ink)
    block(above: 10pt, below: 5pt)[#it.body]
  }
  show heading.where(level: 3): it => {
    set text(size: type-scale.subsection, weight: 650, fill: palette.ink)
    block(above: 8pt, below: 4pt)[#it.body]
  }
  show quote: it => block(inset: (left: 10pt), stroke: (left: 2pt + palette.line))[
    #text(size: type-scale.quote, style: "italic", fill: palette.muted)[#it.body]
  ]
  body
}
