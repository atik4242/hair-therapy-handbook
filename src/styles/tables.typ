#import "../config.typ": palette
#import "components.typ": checkbox, blocked
#import "colors.typ": product-color

#let weekly-table() = {
  let days = ("Mo", "Di", "Mi", "Do", "Fr", "Sa", "So")
  let rows = (
    ("Grey Attack", "grey", (true, true, false, true, true, false, true)),
    ("Nizoral 2 %", "nizoral", (false, false, true, false, false, true, false)),
    ("Minoxidil", "minoxidil", (false, true, true, true, true, true, true)),
    ("Dermastamp", "stamp", (true, false, false, false, false, false, false)),
    ("Desinfektion vorher", "stamp", (true, false, false, false, false, false, false)),
    ("Desinfektion nachher", "stamp", (true, false, false, false, false, false, false)),
    ("Kopfhaut kontrollieren", "neutral", (true, true, true, true, true, true, true)),
    ("Monatsfoto", "neutral", (false, false, false, false, false, false, true)),
  )
  table(
    columns: (35mm,) + (19.6mm,) * 7,
    rows: (11mm,) + (12mm,) * 8,
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
      let cells = row.at(2).map(active => if active { checkbox() } else { blocked() })
      (label,) + cells
    }).flatten(),
  )
}
