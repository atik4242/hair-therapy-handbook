#import "../config.typ": palette
#import "../styles/components.typ": title-card, info-card, summary-box

#let chapter() = {
  heading(level: 1, outlined: true)[Unsere redaktionellen Grundsaetze]
  title-card("Redaktion", "Unsere redaktionellen Grundsaetze", subtitle: "Kurzfassung der verbindlichen Editorial Principles")
  v(11pt)
  grid(columns: (1fr, 1fr), gutter: 8pt,
    info-card("Neutralitaet", [Keine Steuerung zu Produkt, Verfahren oder Therapie.], accent: palette.info),
    info-card("Evidenz vor Meinung", [Ueberpruefbare Quellen haben Vorrang vor Anekdoten und Praeferenzen.], accent: palette.info),
    info-card("Keine Diagnose oder Empfehlung", [HTH diagnostiziert nicht und waehlt keine Behandlung aus.], accent: palette.warning),
    info-card("Quellen und Nachvollziehbarkeit", [Relevante Aussagen benoetigen Quelle, Version und redaktionellen Kontext.], accent: palette.checklist),
    info-card("Unsicherheit sichtbar machen", [Luecken, Grenzen und widerspruechliche Evidenz werden offen benannt.], accent: palette.note),
    info-card("Fakten und Dokumentation trennen", [Persoenliche Eintraege werden nicht als allgemeine Evidenz dargestellt.], accent: palette.minoxidil),
    info-card("Unabhaengigkeit", [Werbung, Rankings, Kaufempfehlungen und unbelegte Versprechen sind ausgeschlossen.], accent: palette.dermastamp),
    info-card("Offen und korrigierbar", [Aenderungen, Korrekturen und veraltete Inhalte bleiben transparent.], accent: palette.grey_attack),
  )
  v(11pt)
  summary-box([Die vollstaendigen Grundsaetze stehen in EDITORIAL_PRINCIPLES.md. Sie gelten fuer alle gemeinsam veroeffentlichten Inhalte.])
}

