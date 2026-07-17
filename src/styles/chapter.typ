#import "../config.typ": palette
#import "components.typ": info-card, citation-placeholder, chapter-banner
#import "editorial.typ": knowledge-page

#let chapter-shell(number, title, introduction, sections: ("Inhaltsbereich",), body: none) = {
  show heading.where(level: 1): it => chapter-banner(number, it.body, introduction)
  heading(level: 1, outlined: true)[#title]
  v(12pt)
  if body != none {
    body
  } else {
    knowledge-page()
  }
}
