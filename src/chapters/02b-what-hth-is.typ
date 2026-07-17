#import "../config.typ": palette
#import "../styles/components.typ": title-card, checklist, callout

#let chapter() = {
  heading(level: 1, outlined: true)[Was HTH ist - und was nicht]
  title-card("Projektauftrag", "Was HTH ist - und was nicht", subtitle: "Klare Grenzen fuer Wissen, Dokumentation und regelbasierte Hinweise")
  v(12pt)
  grid(columns: (1fr, 1fr), gutter: 10pt,
    block(width: 100%, inset: 12pt, radius: 7pt, fill: palette.grey_attack.lighten(94%), stroke: .8pt + palette.grey_attack.lighten(55%))[
      #text(size: 12pt, weight: 650, fill: palette.grey_attack)[HTH IST]
      #v(10pt)
      #checklist(("Wissenssammlung", "Dokumentationshilfe", "konfigurierbares Planungswerkzeug", "regelbasierte Vorsichtshilfe", "quellenorientiertes Nachschlagewerk"))
    ],
    block(width: 100%, inset: 12pt, radius: 7pt, fill: palette.warning.lighten(94%), stroke: .8pt + palette.warning.lighten(55%))[
      #text(size: 12pt, weight: 650, fill: palette.warning)[HTH IST NICHT]
      #v(10pt)
      #checklist(("Diagnosewerkzeug", "Therapieempfehlung", "aerztliche Beratung", "Notfallhilfe", "Ersatz fuer Fachpersonal"))
    ],
  )
  v(12pt)
  callout("Verbindliche Grenze", [HTH waehlt keine Therapie aus und leitet aus persoenlichen Profilen keine medizinischen Schlussfolgerungen ab.], tone: "warning")
}

