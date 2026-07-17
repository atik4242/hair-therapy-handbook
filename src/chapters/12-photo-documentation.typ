#import "../styles/chapter.typ": chapter-shell
#import "../styles/components.typ": photo-placeholder
#let chapter() = chapter-shell("12", "Fotodokumentation", "Leere, neutrale Platzhalter - keine Fotos werden eingebettet.", body: [
  #grid(columns: (1fr, 1fr), gutter: 9pt,
    photo-placeholder("ANSICHT A"), photo-placeholder("ANSICHT B"),
    photo-placeholder("ANSICHT C"), photo-placeholder("ANSICHT D"),
  )
])

