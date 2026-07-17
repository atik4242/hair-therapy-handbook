import { useEffect, useState } from "react";
import { fallbackLocale, isLocale, locales, translate, type Locale } from "@htp/i18n";

const localeNames: Record<Locale, string> = { de: "Deutsch", en: "English", tr: "Türkçe" };

export function App() {
  const [locale, setLocale] = useState<Locale>(() => {
    const stored = localStorage.getItem("htp.locale");
    return isLocale(stored) ? stored : fallbackLocale;
  });
  const t = (key: Parameters<typeof translate>[1]) => translate(locale, key);
  useEffect(() => { document.documentElement.lang = locale; localStorage.setItem("htp.locale", locale); }, [locale]);
  return <>
    <a className="skip-link" href="#main">{t("a11y.skip")}</a>
    <header className="site-header"><a className="brand" href="/">HTP</a><label>{t("language.label")}<select aria-label={t("language.label")} value={locale} onChange={(event) => setLocale(event.target.value as Locale)}>{locales.map((item) => <option key={item} value={item}>{localeNames[item]}</option>)}</select></label></header>
    <main id="main">
      <section className="hero" aria-labelledby="title"><p className="eyebrow">{t("app.milestone")}</p><h1 id="title">{t("app.title")}</h1><p className="lead">{t("app.description")}</p><p className="notice" role="status">{t("app.phase")}</p></section>
      <section aria-labelledby="principles"><h2 id="principles">{t("principles.title")}</h2><div className="principles"><article><span>01</span><p>{t("principles.inform")}</p></article><article><span>02</span><p>{t("principles.document")}</p></article><article><span>03</span><p>{t("principles.remind")}</p></article></div></section>
      <nav className="links" aria-label={t("nav.label")}><a href="/knowledge">{t("nav.knowledge")}<small>{t("nav.knowledgeDetail")}</small></a><a href="/handbook">{t("nav.handbook")}<small>{t("nav.handbookDetail")}</small></a><a href="/docs">{t("nav.documentation")}<small>{t("nav.documentationDetail")}</small></a></nav>
    </main>
    <footer>{t("footer.privacy")}</footer>
  </>;
}
