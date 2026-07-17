# Hair Therapy Handbook (HTH)

HTH is a modular, print-ready A4 handbook prototype for documenting a personal hair-care routine and its progress. HTH-001 established the design system. HTH-002 adds a seventeen-chapter content architecture, neutral editorial placeholders, and a source registry. It intentionally contains no complete medical guidance.

## Requirements and local build

- Typst 0.15.0
- PowerShell 7 or Windows PowerShell 5.1 (for the helper script)

```powershell
./scripts/build.ps1
```

The stable PDF is written to `output/pdf/HTH-design-prototype.pdf`.

## Structure

- `src/main.typ` - document entry point
- `src/config.typ` and `src/data/handbook.yaml` - central configuration
- `src/styles/` - palette, typography, layout, components, and tables
- `src/chapters/` - prototype pages
- `assets/` - icons, illustrations, and images
- `scripts/` - reproducible local build
- `.github/workflows/` - CI build and PDF artifact

## Design principles

The visual system is calm, high-contrast, spacious, and optimized for A4 printing. Product categories use green, blue, violet, and orange accents. Meaning never depends on color alone: blocked days are solid dark fields, while planned actions use outlined checkboxes.

## Privacy

Never commit names, private photos, medical records, laboratory values, or other personal health information. Repository examples must remain fictional. Personal copies belong outside version control.

## Branching

- `main` - stable releases
- `develop` - integrated development
- `feature/HTH-001-project-foundation` - HTH-001 implementation

Changes are developed on a feature branch and merged into `develop` by pull request. Stable releases move from `develop` to `main`.

## Next steps

HTH-002 will add reviewed content only after the routine, product instructions, and medical safety language have been agreed and independently checked.
