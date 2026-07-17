export const locales = ["de", "en", "tr"] as const;
export type Locale = (typeof locales)[number];
export const fallbackLocale: Locale = "en";

export const messages = {
  en: {
    "app.title": "HTP – Hair Therapy Platform",
    "app.description": "A future evidence-oriented knowledge and personal documentation platform.",
    "app.phase": "Technical foundation – not a production-ready health service.",
    "principles.title": "Core Principles",
    "principles.inform": "HTP informs – HTP does not diagnose.",
    "principles.document": "HTP documents – HTP does not recommend therapy.",
    "principles.remind": "HTP reminds – HTP does not decide for the user.",
    "nav.knowledge": "Knowledge",
    "nav.handbook": "Handbook",
    "nav.documentation": "Project Documentation",
    "language.label": "Language"
    ,"a11y.skip": "Skip to content", "app.milestone": "Technical Foundation · HTH-007", "nav.label": "Platform areas", "nav.knowledgeDetail": "Public foundation", "nav.handbookDetail": "PDF export", "nav.documentationDetail": "Architecture & governance", "footer.privacy": "HTP · No cookies · No tracking · No advertising"
  },
  de: {
    "app.title": "HTP – Hair Therapy Platform",
    "app.description": "Eine zukünftige evidenzorientierte Wissens- und persönliche Dokumentationsplattform.",
    "app.phase": "Technisches Fundament – kein produktionsreifer Gesundheitsdienst.",
    "principles.title": "Grundprinzipien",
    "principles.inform": "HTP informiert – HTP diagnostiziert nicht.",
    "principles.document": "HTP dokumentiert – HTP empfiehlt keine Therapie.",
    "principles.remind": "HTP erinnert – HTP entscheidet nicht für den Nutzer.",
    "nav.knowledge": "Wissen",
    "nav.handbook": "Handbuch",
    "nav.documentation": "Projektdokumentation",
    "language.label": "Sprache"
    ,"a11y.skip": "Zum Inhalt springen", "app.milestone": "Technisches Fundament · HTH-007", "nav.label": "Plattformbereiche", "nav.knowledgeDetail": "Öffentliche Grundlage", "nav.handbookDetail": "PDF-Export", "nav.documentationDetail": "Architektur und Governance", "footer.privacy": "HTP · Keine Cookies · Kein Tracking · Keine Werbung"
  },
  tr: {
    "app.title": "HTP – Hair Therapy Platform",
    "app.description": "Geleceğe yönelik, kanıt odaklı bir bilgi ve kişisel dokümantasyon platformu.",
    "app.phase": "Teknik temel – üretime hazır bir sağlık hizmeti değildir.",
    "principles.title": "Temel İlkeler",
    "principles.inform": "HTP bilgilendirir – teşhis koymaz.",
    "principles.document": "HTP belgeler – tedavi önermez.",
    "principles.remind": "HTP hatırlatır – kullanıcı adına karar vermez.",
    "nav.knowledge": "Bilgi",
    "nav.handbook": "El Kitabı",
    "nav.documentation": "Proje Dokümantasyonu",
    "language.label": "Dil"
    ,"a11y.skip": "İçeriğe geç", "app.milestone": "Teknik Temel · HTH-007", "nav.label": "Platform alanları", "nav.knowledgeDetail": "Kamusal temel", "nav.handbookDetail": "PDF dışa aktarımı", "nav.documentationDetail": "Mimari ve yönetişim", "footer.privacy": "HTP · Çerez yok · Takip yok · Reklam yok"
  }
} as const;

export type MessageKey = keyof typeof messages.en;
export const translate = (locale: Locale, key: MessageKey): string =>
  messages[locale]?.[key] ?? `[missing:${locale}:${key}] ${messages[fallbackLocale][key]}`;

export const isLocale = (value: string | null): value is Locale =>
  value !== null && locales.includes(value as Locale);
