#import "../styles/chapter.typ": chapter-shell
#import "../styles/editorial.typ": product-page
#let chapter() = chapter-shell("06", "Grey Attack", "Neutraler Platz fuer Produktbeschreibung und Anwendungskontext.", body: [#product-page(illustration: "ILL-SHAMPOO")])
