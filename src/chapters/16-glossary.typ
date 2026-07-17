#import "../styles/chapter.typ": chapter-shell
#import "../styles/components.typ": info-card, at-a-glance, summary-box
#import "../config.typ": palette

#let chapter() = chapter-shell("16", "Glossar", "Alphabetische Struktur fuer spaeter fachlich definierte Begriffe.", body: [
  #at-a-glance([Nur alphabetische Platzhalter. Es sind noch keine Definitionen enthalten.])
  #v(9pt)
  #grid(columns: (1fr, 1fr, 1fr), gutter: 8pt,
    ..("A-C", "D-F", "G-I", "J-L", "M-O", "P-R", "S-U", "V-X", "Y-Z").map(group => info-card(group, [Begriffsplatzhalter \\ Definition folgt spaeter.])),
  )
  #v(9pt)
  #summary-box([Glossarbegriffe werden erst gemeinsam mit fachlich geprueften Kapiteln ergaenzt.])
])
