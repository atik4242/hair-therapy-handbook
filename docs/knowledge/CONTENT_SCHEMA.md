# Knowledge Content Schema

The authoritative machine-readable JSON Schema is `content/knowledge/schema/knowledge-module.schema.json`; `apps/web/src/knowledge/schema.ts` mirrors it with Zod for runtime and test validation.

Required module metadata includes identifier, slug, localized title and summary, workflow status, original language, locales, review dates, semantic version, authors, reviewers, evidence overview, sections, sources, uncertainty, safety notes, corrections, and translation status. Sources have stable unique IDs and bibliographic provenance.

Locales are limited to `de`, `en`, and `tr`. Translation status is `reviewed`, `draft`, or `outdated`. Semantic versions use `major.minor.patch`. The schema holds public editorial records only and must never contain reader records or personal health data.
