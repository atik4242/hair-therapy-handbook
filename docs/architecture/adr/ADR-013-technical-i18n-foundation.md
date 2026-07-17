# ADR-013: Internationalization in the technical foundation

- **Status:** Accepted
- **Context:** German, English, and Turkish support must not be retrofitted after UI text spreads through components.
- **Decision:** Use stable English keys, full locale maps, visible missing-key markers, English fallback, local-only locale storage, and translation-key tests.
- **Consequences:** UI components request keys rather than embedding visible prose; translations remain technical, not medical.
- **Open points:** A dedicated translation platform and RTL locale are deferred.
