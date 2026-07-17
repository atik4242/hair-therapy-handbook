#import "../config.typ": palette

#let typography(body) = {
  set text(font: "Arial", size: 9.3pt, fill: palette.ink, lang: "de")
  set par(leading: 0.64em, justify: false)
  show heading.where(level: 1): it => {
    set text(size: 24pt, weight: 650, fill: palette.ink)
    block(above: 0pt, below: 8pt)[#it.body]
  }
  show heading.where(level: 2): it => {
    set text(size: 14pt, weight: 650, fill: palette.ink)
    block(above: 10pt, below: 5pt)[#it.body]
  }
  body
}
