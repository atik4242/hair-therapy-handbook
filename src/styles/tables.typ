#import "../config.typ": palette
#import "components.typ": checkbox
#import "colors.typ": product-color

#let weekly-table() = {
  let days = ("Mo", "Di", "Mi", "Do", "Fr", "Sa", "So")
  let rows = (
    ("Eigener Eintrag 1", "neutral"),
    ("Eigener Eintrag 2", "neutral"),
    ("Eigener Eintrag 3", "neutral"),
    ("Eigener Eintrag 4", "neutral"),
    ("Eigener Eintrag 5", "neutral"),
    ("Eigener Eintrag 6", "neutral"),
  )
  table(
    columns: (35mm,) + (19.6mm,) * 7,
    rows: (11mm,) + (12mm,) * 6,
    align: (left + horizon,) + (center + horizon,) * 7,
    stroke: (x, y) => if y == 0 { (bottom: 1pt + palette.ink) } else { (bottom: .55pt + palette.line) },
    fill: (x, y) => if y == 0 { palette.surface-strong } else if calc.even(y) { palette.surface } else { white },
    inset: 6pt,
    table.header(
      [#text(size: 7.5pt, weight: 650)[ANWENDUNG]],
      ..days.map(day => [#text(size: 8pt, weight: 650)[#day]]),
    ),
    ..rows.map(row => {
      let accent = product-color(row.at(1))
      let label = table.cell(stroke: (left: 3pt + accent, bottom: .55pt + palette.line))[#text(size: 7.5pt, weight: 600)[#row.at(0)]]
      let cells = days.map(_ => checkbox())
      (label,) + cells
    }).flatten(),
  )
}
