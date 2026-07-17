# ADR-003: Internationalization from the start

- **Status:** Accepted
- **Context:** German, English, and Turkish are initial languages, and retrofitting translation identifiers creates avoidable coupling.
- **Decision:** Separate code from visible text, use stable keys and locale metadata, and version translation review status from the first implementation.
- **Consequences:** Components must allow text expansion, locale formatting, fallback disclosure, and later RTL layouts.
- **Open points:** Translation platform and reviewer staffing remain undecided.

