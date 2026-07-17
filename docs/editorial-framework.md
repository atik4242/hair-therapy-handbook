# HTH Editorial Framework 0.4

HTH-004 prepares the handbook for later specialist writing. It intentionally contains no medical recommendations, doses, treatment intervals, product recommendations, or health claims.

## Standard chapter anatomy

Every general editorial chapter is built from the shared framework in `src/styles/editorial.typ`:

1. Auf einen Blick
2. Lernziele
3. Hauptinhalt
4. Merksatz
5. Praxis-Tipp
6. Haeufiger Fehler
7. Wissenschaftlicher Hintergrund
8. Dokumentationsbereich
9. Zusammenfassung
10. Quellenplatzhalter
11. Illustrationsslot

The scientific-background block is a structural placeholder, not scientific content.

## Page templates

- `knowledge-page` - conceptual and educational chapters
- `product-page` - neutral product-information structure
- `step-page` - future procedural structure without instructions
- `faq-page` - modular questions without answers
- `documentation-page` - recording and observation structure
- `overview-page` - chapter maps and summaries

## Editorial components

- `at-a-glance`
- `editorial-key-message`
- `practice-tip`
- `common-error`
- `scientific-background`
- `summary-box`

Supporting components include `illustration-slot` and `faq-question`.

## Source registry

`src/data/sources.yaml` defines metadata fields only. It accepts internal ID, DOI, PMID, guideline, professional society, URL, access date, evidence level, and editorial notes. The `sources` list must remain empty until sources are reviewed.

## Illustration registry

`src/data/illustrations.yaml` reserves seven future SVG targets. A target path is not an implemented illustration. No placeholder file should imitate finished medical artwork.

## Content guardrails

Placeholders must stay neutral. Do not add recommendations, efficacy claims, safety claims, doses, frequencies, intervals, diagnoses, personal data, or health records without a separately approved specialist-content milestone.
