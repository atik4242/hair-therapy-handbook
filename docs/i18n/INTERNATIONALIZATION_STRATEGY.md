# Internationalization Strategy

## Initial locales

| Language | Locale | Initial role |
|---|---|---|
| German | `de` | Supported content and interface locale |
| English | `en` | Technical reference language for translation keys and fallback |
| Turkish | `tr` | Supported content and interface locale |

The editorial source language may differ by module and is stored as module metadata. English as the technical reference does not imply that every editorial module originates in English.

## Architecture

- Separate code and visible text.
- Use stable, semantic translation keys rather than source sentences as identifiers.
- Store locale, source language, translation status, reviewer, source version, and translated version.
- Use `en` as the fallback language. Displaying fallback content must not falsely imply that a translation exists.
- Design layouts and components for text expansion and later right-to-left support, even though the initial locales are left-to-right.
- Keep content modules, interface strings, legal notices, and safety-relevant notices in distinguishable translation domains.

## Locale behaviour

Dates, times, numbers, week conventions, and plural forms follow the selected locale. Stored timestamps use an unambiguous machine format and preserve the relevant timezone or offset. Reminder scheduling uses the user's selected timezone and defines behaviour for daylight-saving changes and travel before implementation.

## Translation workflow

Suggested states are `source`, `draft`, `machine-assisted`, `in-review`, `approved`, `outdated`, and `withdrawn`.

1. Freeze or version the source module.
2. Create a translation linked to that source version.
3. Record translator method and terminology decisions.
4. Review language, meaning, links, layout, and safety/legal notices.
5. Approve for a named locale and version.
6. Mark translations outdated when their source changes materially.

Machine translation may assist drafting but is never published automatically without human review. Medical terminology requires a controlled glossary and competent language/content review; ambiguous terms remain flagged rather than guessed.

## Legal and safety notices

Legal, privacy, consent, emergency, and safety-relevant notices may require locale- and jurisdiction-specific text. A translated general notice is not assumed legally suitable for every jurisdiction. Such content carries its own review status and must fall back visibly or block release when an approved version is required.

## PDF export

HTH export supports a selected document locale and records that locale in document metadata. A future optional bilingual export may place modules sequentially or in paired layouts, subject to accessibility and page-design testing. Missing translations, mixed-language fallbacks, and source versions must be disclosed in the export.

## Quality and versioning

Translation changes are versioned and reviewable. Automated checks cover missing keys, invalid locale codes, placeholders, broken links, and layout overflow. Human review covers meaning, tone, terminology, and cultural clarity.

