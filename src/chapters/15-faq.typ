#import "../styles/chapter.typ": chapter-shell
#import "../styles/editorial.typ": faq-page
#let chapter() = chapter-shell("15", "Haeufige Fragen", "Modulare Fragestruktur ohne Antworten.", body: [#faq-page()])
