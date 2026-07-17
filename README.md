# Hair Therapy Platform (HTP) and Hair Therapy Handbook (HTH)

Hair Therapy Platform (HTP) is the future modular, evidence-oriented knowledge and private documentation platform. Hair Therapy Handbook (HTH) remains its reproducible, print-ready PDF and documentation export.

> **Current status:** HTH-008 adds a central design system, a validated Knowledge Module standard, and a non-medical demonstration in German, English, and Turkish. It is not a production-ready health service. No user accounts, database, private data, analytics, or cloud deployment exists.

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

## Technical platform quick start

Requirements: Node.js 22 with pnpm 10 and Python 3.12.

```bash
pnpm install --frozen-lockfile
pnpm --filter @htp/web dev
```

```bash
python -m venv .venv
.venv/Scripts/pip install -e "apps/api[dev]"
.venv/Scripts/uvicorn app.main:app --app-dir apps/api --reload
```

Alternatively use `docker compose up --build`. See [Local Development](docs/development/LOCAL_DEVELOPMENT.md), [Testing](docs/development/TESTING.md), and [Configuration](docs/development/CONFIGURATION.md).

## Structure

- `src/main.typ` - document entry point
- `apps/web` - public React/TypeScript/Vite interface
- `apps/api` - public FastAPI technical API
- `packages/shared` - versioned public TypeScript contracts
- `packages/i18n` - stable keys and `de`, `en`, `tr` locale maps
- `content/knowledge` - reserved public-content boundary
- `apps/web/src/design-system` - central tokens, foundations, and typed components
- `content/knowledge/schema` - public Knowledge Module schema
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
- `feature/HTH-008-design-system-knowledge-standard` - current milestone branch

Changes are developed on a feature branch and merged into `develop` by pull request. Stable releases move from `develop` to `main`.

## Next steps

The next milestone may extend the public-content workflow, but medical publication requires qualified review and separate approval. Every feature must pass the Core Principles Compatibility Gate; evidence presentation does not authorize medical conclusions or individualized advice.
