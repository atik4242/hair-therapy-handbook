#import "../styles/chapter.typ": chapter-shell
#import "../styles/components.typ": progress-card
#import "../config.typ": palette
#let chapter() = chapter-shell("11", "Monatskontrolle", "Neutrale Struktur fuer regelmaessige Rueckblicke.", body: [
  #grid(columns: (1fr, 1fr), gutter: 9pt,
    progress-card("Beobachtung A", palette.grey_attack),
    progress-card("Beobachtung B", palette.nizoral),
    progress-card("Routine", palette.minoxidil),
    progress-card("Vertraeglichkeit", palette.dermastamp),
  )
])

