# Technical Foundation

## Status

HTH-007 adds an executable public technical foundation, not a production health service. It contains no accounts, authentication, database, private data, plans, reminders, photos, uploads, medical modules, analytics, advertising, or cloud deployment.

## Reference architecture

- **Web:** React, TypeScript, and Vite in `apps/web`.
- **API:** Python 3.12 and FastAPI in `apps/api`.
- **Shared contracts:** TypeScript public response types in `packages/shared`.
- **Internationalization:** stable English keys and complete `de`, `en`, and `tr` locale maps in `packages/i18n`.
- **Public content boundary:** reserved `content/knowledge`; no medical content is added.
- **Existing products:** Typst PDF and MkDocs documentation remain independent build targets.

The web and API are deployable components with no private-data dependency. Future private routes must use a separate authenticated boundary and must not be added under the public contract by implication.

## Public API contract

The API uses `/api/v1` for versioned public endpoints. `/health` is an operational endpoint. Errors use `{ "error": { "code": "...", "message": "..." } }` and omit stack traces, paths, and secrets. Additive fields may be introduced within v1 only when clients tolerate them; removals or semantic changes require a new version.

## Security baseline

- Explicit development CORS origin; wildcard origins are rejected.
- GET-only CORS methods and no credentialed cross-origin requests.
- `nosniff`, frame denial, and no-referrer headers.
- Debug mode defaults off and production is conceptually separate from development/test.
- No access log in the reference container and no confidential data exists to log.
- Pydantic response models and restricted public endpoints.
- Minimal direct dependencies, exact Python versions, and a frontend lock file.
- No cookies, trackers, telemetry, advertising scripts, or external fonts.

Dependencies are reviewed through lock-file changes and routine automated update proposals. Major upgrades require tests, changelog review, and security advisories assessment.

## Core Principles Compatibility Gate

| Question | HTH-007 assessment |
|---|---|
| What data is processed? | Static public interface text, selected locale stored locally, and public technical API responses. |
| Why are personal data unnecessary? | No account, submission, storage, upload, analytics, or private endpoint exists. |
| Why is there no diagnosis or therapy logic? | The UI contains only project principles and navigation; API responses contain service status and locales only. |
| Why is product maturity not misleading? | The homepage visibly states that it is a technical foundation and not a production-ready health service. |
| Why is tracking unnecessary? | Functionality is local rendering and public status retrieval; no analytics or telemetry is included. |
| Which private functions are excluded? | Accounts, authentication, databases, plans, checklists, reminders, photos, uploads, AI, and personal reports. |

HTH-007 passes the gate because it informs about the project without diagnosing, recommending, reminding, or deciding.
