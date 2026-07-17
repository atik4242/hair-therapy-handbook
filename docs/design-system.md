# HTH Design System 0.3

HTH uses a calm, print-first visual language for an eventual patient handbook. It contains no medical content.

## Typography

All sizes live in `src/config.typ` under `type-scale`: document title, chapter, section, subsection, body, caption, table, footnote, quote, and warning text. Arial is used as a system-font fallback without committing font files.

## Color and grayscale

Product accents are green (Grey Attack), blue (Ketoconazol), violet (Minoxidil), and orange (Dermastamp). Semantic accents cover information, notes, checklists, warnings, and key messages. Color is never the sole signal: labels, borders, solid blocked fields, alternating surfaces, and shape differences remain legible in grayscale.

## Components

- `title-card` and `chapter-banner`
- `callout`, `medical-note`, `tip`, `warning`, and `key-message`
- `checklist` and `step-by-step`
- `weekly-table` and `comparison-table`
- `info-card`, `dashboard-card`, and `progress-card`
- `note-field` and `photo-placeholder`
- `checkbox`, `blocked`, `pill`, `icon`, and `citation-placeholder`

Components belong in `src/styles/components.typ` unless they implement a specialized table, color mapping, typography rule, or page layout.

## Page grid

The document uses an A4 page, 18 mm horizontal margins, 19 mm top margin, and 18 mm bottom margin. Repeated spacing is based on compact 3-4 pt increments and 8-12 pt card gutters. Headers carry the handbook identity and version; footers carry the design status and automatic page number.

## Icons

All icons in `assets/icons/` are local SVG line icons with a 24 x 24 view box, 1.7 stroke width, round caps, and no fills. Do not mix in external icon families or clip art.

## Print rules

Use solid black for forbidden schedule cells, outlined squares for planned actions, restrained surface fills, and high-contrast text. Avoid gradients, transparency-dependent meaning, and edge-to-edge color areas.
