export const locales = ["de", "en", "tr"] as const;
export type Locale = (typeof locales)[number];
export const fallbackLocale: Locale = "en";

const en = {
  "app.title":"HTP – Hair Therapy Platform","app.description":"A future evidence-oriented knowledge and personal documentation platform.","app.phase":"Technical foundation – not a production-ready health service.","app.milestone":"Design System & Knowledge Standard · HTH-008","status.title":"Project status",
  "principles.title":"Core Principles","principles.inform":"HTP informs – HTP does not diagnose.","principles.document":"HTP documents – HTP does not recommend therapy.","principles.remind":"HTP reminds – HTP does not decide for the user.",
  "nav.home":"Home","nav.knowledge":"Knowledge","nav.handbook":"Handbook","nav.documentation":"Project Documentation","nav.label":"Platform areas","language.label":"Language","a11y.skip":"Skip to content","footer.privacy":"HTP · No cookies · No tracking · No advertising",
  "knowledge.title":"Knowledge","knowledge.intro":"Structured public information with visible sources, uncertainty, review, and correction history.","knowledge.demoBadge":"Non-medical demonstration","knowledge.demoTitle":"Understanding an HTP Knowledge Module","knowledge.demoSummary":"Explore the structure without health claims or individual advice.","knowledge.open":"Open demonstration module",
  "module.contents":"On this page","module.sources":"Sources","module.evidence":"Evidence presentation","module.uncertainty":"What remains uncertain","module.editorial":"Editorial and review","module.translation":"Translation status","module.version":"Version","module.updated":"Last reviewed","module.correction":"Correction note","module.evidenceDisclaimer":"An evidence level does not determine an individual choice.","module.uncertaintyDisclaimer":"Uncertainty does not by itself establish ineffectiveness.",
  "translation.reviewed":"reviewed","translation.draft":"draft","translation.outdated":"outdated",
  "design.title":"Design system demonstration","design.intro":"An internal page for reviewing reusable, non-medical interface patterns.","design.card":"Card","design.badge":"Badge","design.neutral":"Neutral demonstration content.","design.button":"Button","design.info":"Information","design.infoText":"Neutral information pattern.","design.uncertaintyText":"Limited information is shown separately.",
  "notFound.title":"Page not found","notFound.text":"The requested page does not exist.","notFound.home":"Return to home"
} as const;
type MessageKey = keyof typeof en;
const de: Record<MessageKey,string> = {
  "app.title":"HTP – Hair Therapy Platform","app.description":"Eine zukünftige evidenzorientierte Wissens- und persönliche Dokumentationsplattform.","app.phase":"Technisches Fundament – kein produktionsreifer Gesundheitsdienst.","app.milestone":"Designsystem & Wissensstandard · HTH-008","status.title":"Projektstatus",
  "principles.title":"Grundprinzipien","principles.inform":"HTP informiert – HTP diagnostiziert nicht.","principles.document":"HTP dokumentiert – HTP empfiehlt keine Therapie.","principles.remind":"HTP erinnert – HTP entscheidet nicht für den Nutzer.",
  "nav.home":"Start","nav.knowledge":"Wissen","nav.handbook":"Handbuch","nav.documentation":"Projektdokumentation","nav.label":"Plattformbereiche","language.label":"Sprache","a11y.skip":"Zum Inhalt springen","footer.privacy":"HTP · Keine Cookies · Kein Tracking · Keine Werbung",
  "knowledge.title":"Wissen","knowledge.intro":"Strukturierte öffentliche Informationen mit sichtbaren Quellen, Unsicherheiten, Reviews und Korrekturen.","knowledge.demoBadge":"Nichtmedizinische Demonstration","knowledge.demoTitle":"So liest man ein HTP-Wissensmodul","knowledge.demoSummary":"Erkunde die Struktur ohne Gesundheitsaussagen oder individuelle Beratung.","knowledge.open":"Demonstrationsmodul öffnen",
  "module.contents":"Auf dieser Seite","module.sources":"Quellen","module.evidence":"Evidenzdarstellung","module.uncertainty":"Was bleibt unsicher?","module.editorial":"Redaktion und Review","module.translation":"Übersetzungsstatus","module.version":"Version","module.updated":"Zuletzt geprüft","module.correction":"Korrekturhinweis","module.evidenceDisclaimer":"Ein Evidenzniveau bestimmt keine individuelle Entscheidung.","module.uncertaintyDisclaimer":"Unsicherheit beweist für sich allein keine Wirkungslosigkeit.",
  "translation.reviewed":"geprüft","translation.draft":"Entwurf","translation.outdated":"veraltet",
  "design.title":"Designsystem-Demonstration","design.intro":"Eine interne Seite zur Prüfung wiederverwendbarer, nichtmedizinischer Oberflächenmuster.","design.card":"Karte","design.badge":"Kennzeichnung","design.neutral":"Neutraler Demonstrationsinhalt.","design.button":"Schaltfläche","design.info":"Information","design.infoText":"Neutrales Informationsmuster.","design.uncertaintyText":"Begrenzte Informationen werden getrennt dargestellt.",
  "notFound.title":"Seite nicht gefunden","notFound.text":"Die angeforderte Seite existiert nicht.","notFound.home":"Zur Startseite"
};
const tr: Record<MessageKey,string> = {
  "app.title":"HTP – Hair Therapy Platform","app.description":"Geleceğe yönelik, kanıt odaklı bir bilgi ve kişisel dokümantasyon platformu.","app.phase":"Teknik temel – üretime hazır bir sağlık hizmeti değildir.","app.milestone":"Tasarım Sistemi ve Bilgi Standardı · HTH-008","status.title":"Proje durumu",
  "principles.title":"Temel İlkeler","principles.inform":"HTP bilgilendirir – teşhis koymaz.","principles.document":"HTP belgeler – tedavi önermez.","principles.remind":"HTP hatırlatır – kullanıcı adına karar vermez.",
  "nav.home":"Ana sayfa","nav.knowledge":"Bilgi","nav.handbook":"El Kitabı","nav.documentation":"Proje Dokümantasyonu","nav.label":"Platform alanları","language.label":"Dil","a11y.skip":"İçeriğe geç","footer.privacy":"HTP · Çerez yok · Takip yok · Reklam yok",
  "knowledge.title":"Bilgi","knowledge.intro":"Görünür kaynaklar, belirsizlik, inceleme ve düzeltme geçmişiyle yapılandırılmış kamusal bilgi.","knowledge.demoBadge":"Tıbbi olmayan gösterim","knowledge.demoTitle":"Bir HTP bilgi modülü nasıl okunur","knowledge.demoSummary":"Sağlık iddiası veya bireysel tavsiye olmadan yapıyı inceleyin.","knowledge.open":"Gösterim modülünü aç",
  "module.contents":"Bu sayfada","module.sources":"Kaynaklar","module.evidence":"Kanıt sunumu","module.uncertainty":"Neler belirsiz kalır?","module.editorial":"Editoryal süreç ve inceleme","module.translation":"Çeviri durumu","module.version":"Sürüm","module.updated":"Son inceleme","module.correction":"Düzeltme notu","module.evidenceDisclaimer":"Kanıt düzeyi bireysel bir kararı belirlemez.","module.uncertaintyDisclaimer":"Belirsizlik tek başına etkisizliği kanıtlamaz.",
  "translation.reviewed":"incelendi","translation.draft":"taslak","translation.outdated":"güncel değil",
  "design.title":"Tasarım sistemi gösterimi","design.intro":"Yeniden kullanılabilir, tıbbi olmayan arayüz kalıplarını inceleyen dahili sayfa.","design.card":"Kart","design.badge":"Etiket","design.neutral":"Tarafsız gösterim içeriği.","design.button":"Düğme","design.info":"Bilgi","design.infoText":"Tarafsız bilgi kalıbı.","design.uncertaintyText":"Sınırlı bilgiler ayrı gösterilir.",
  "notFound.title":"Sayfa bulunamadı","notFound.text":"İstenen sayfa mevcut değil.","notFound.home":"Ana sayfaya dön"
};

export const messages = { en, de, tr } as const;
export { type MessageKey };
export const translate = (locale: Locale, key: MessageKey): string => messages[locale]?.[key] ?? `[missing:${locale}:${key}] ${en[key]}`;
export const isLocale = (value: string | null): value is Locale => value !== null && locales.includes(value as Locale);
