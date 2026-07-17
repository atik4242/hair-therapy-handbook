#import "../styles/chapter.typ": chapter-shell
#import "../styles/tables.typ": weekly-table
#let chapter() = chapter-shell("10", "Wochenplaene", "Vorlage zur spaeteren Abbildung eines geprueften Wochenrhythmus.", body: [#weekly-table()])

