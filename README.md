# Hair Therapy Handbook (HTH)

HTH is an open, modular knowledge and documentation platform with a reproducible, print-ready handbook generator. Its long-term architecture separates shared knowledge, evidence metadata, rule-based precautions, reusable modules, private profiles, illustrations, and publication output.

> **Medical disclaimer:** HTH is not a medical-advice platform. It does not diagnose, select treatment, provide individual therapy recommendations, provide emergency assistance, or replace examination and treatment by qualified professionals.

HTH may present sourced information and predefined precaution notices, but it never chooses therapy. Configurable personal profiles are private presentation and documentation inputs, not diagnostic or recommendation logic.

## Project foundations

- [Project Charter](docs/PROJECT_CHARTER.md)
- [Editorial Principles](EDITORIAL_PRINCIPLES.md)
- [Governance](docs/GOVERNANCE.md)
- [Evidence Policy](docs/EVIDENCE_POLICY.md)
- [Product Admission Policy](docs/PRODUCT_ADMISSION_POLICY.md)
- [Correction Policy](docs/CORRECTION_POLICY.md)
- [Architecture Overview](docs/ARCHITECTURE_OVERVIEW.md)

Editorially, HTH requires neutrality, traceable sources, versioned changes, visible uncertainty, separation of facts from personal records, and correctability. Advertising, unsupported promises, rankings, purchase recommendations, diagnoses, and therapy recommendations are prohibited.

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
- `docs/design-system.md` - component, typography, icon, and print guidance
- `docs/editorial-framework.md` - chapter anatomy, page templates, registries, and content guardrails
- `docs/` and `EDITORIAL_PRINCIPLES.md` - charter, governance, evidence, admission, correction, and architecture policies

## Design principles

The visual system is calm, high-contrast, spacious, and optimized for A4 printing. Product categories use green, blue, violet, and orange accents. Meaning never depends on color alone: blocked days are solid dark fields, while planned actions use outlined checkboxes.

## Privacy

Never commit names, private photos, medical records, laboratory values, or other personal health information. Repository examples must remain fictional. Personal copies belong outside version control.

## Branching

- `main` - stable releases
- `develop` - integrated development
- `feature/HTH-005-governance-charter` - current governance milestone

Changes are developed on a feature branch and merged into `develop` by pull request. Stable releases move from `develop` to `main`.

## Next steps

Future modules must pass the documented scope, evidence, editorial, and review workflow. Technical support for modules, profiles, and interaction rules does not authorize medical conclusions or individualized advice.
