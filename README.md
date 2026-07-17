# Hair Therapy Platform (HTP) and Hair Therapy Handbook (HTH)

Hair Therapy Platform (HTP) is the future modular, evidence-oriented knowledge and private documentation platform. Hair Therapy Handbook (HTH) remains its reproducible, print-ready PDF and documentation export.

> **Current status:** This repository is an architecture, governance, editorial, privacy, internationalization, and PDF-prototype project. It is not a production-ready health service. No user accounts, production cloud functions, private database, photo upload, or notification system are implemented.

> **Medical disclaimer:** HTP/HTH does not diagnose, select treatment, create treatment plans, provide individual therapy recommendations, provide emergency assistance, or replace assessment by qualified professionals.

HTP informs but does not diagnose; documents but does not recommend therapy; and reminds but does not decide for the user. Plans and reminders are future, optional, user-created documentation tools—not predefined schedules or adherence judgments.

## Project foundations

- [Project Charter](docs/PROJECT_CHARTER.md)
- [Platform Vision and Core Principles](docs/PLATFORM_VISION.md)
- [Editorial Principles](docs/EDITORIAL_PRINCIPLES.md)
- [Governance](docs/GOVERNANCE.md)
- [Evidence Policy](docs/EVIDENCE_POLICY.md)
- [Product Admission Policy](docs/PRODUCT_ADMISSION_POLICY.md)
- [Correction Policy](docs/CORRECTION_POLICY.md)
- [Architecture Overview](docs/ARCHITECTURE_OVERVIEW.md)
- [Platform Architecture](docs/architecture/PLATFORM_ARCHITECTURE.md)
- [Product Structure](docs/platform/PRODUCT_STRUCTURE.md)
- [Privacy Model](docs/privacy/PRIVACY_MODEL.md)
- [Internationalization Strategy](docs/i18n/INTERNATIONALIZATION_STRATEGY.md)
- [Glossary](docs/GLOSSARY.md)

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
- `docs/platform/` - product areas and reminder boundaries
- `docs/architecture/` - technology-neutral architecture, deployment comparison, and ADRs
- `docs/privacy/` - privacy, photo-data, and threat-model policies
- `docs/i18n/` - internationalization and localization strategy
- `docs/` - governance, shared terminology, architecture, privacy, and platform documentation

## Design principles

The visual system is calm, high-contrast, spacious, and optimized for A4 printing. Product categories use green, blue, violet, and orange accents. Meaning never depends on color alone: blocked days are solid dark fields, while planned actions use outlined checkboxes.

## Privacy

Never commit names, private photos, medical records, laboratory values, or other personal health information. Repository examples must remain fictional and labelled as non-medical demonstrations. Personal copies belong outside version control. Trust-before-Revenue, data minimisation, user control, and privacy that is not paywalled are binding design principles.

## Branching

- `main` - stable releases
- `develop` - integrated development
- `feature/HTH-006-platform-architecture` - current architecture milestone

Changes are developed on a feature branch and merged into `develop` by pull request. Stable releases move from `develop` to `main`.

## Next steps

HTH-006 defines conceptual product, architecture, privacy, threat, deployment, and localization boundaries. Future implementation requires separate decisions, security testing, and qualified privacy/legal review. Every feature must pass the Core Principles Compatibility Gate; technical support for modules, profiles, and reminders does not authorize medical conclusions or individualized advice.
