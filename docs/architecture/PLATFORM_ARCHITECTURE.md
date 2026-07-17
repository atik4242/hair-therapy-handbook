# Platform Architecture

## Status and scope

This technology-neutral reference architecture describes a possible future HTP. HTH-006 implements documentation only: no application, account system, database, upload, notification service, or cloud infrastructure exists.

## Conceptual components

| Component | Responsibility | Boundary |
|---|---|---|
| Frontend | Present public knowledge and the authenticated private workspace | Must not embed treatment-selection logic |
| Backend API | Validate requests, enforce authorisation, and coordinate services | Separates public reads from private operations |
| Public knowledge database | Store reviewed modules, evidence metadata, versions, and translations | Contains no private user records |
| Private user database | Store journal, plan, checklist, reminder, and report metadata | Per-user access; isolated from editorial publishing |
| Authentication | Establish account identity and session state | Credentials and authentication events are separate data classes |
| Authorisation | Decide whether an authenticated actor may access a resource | Deny by default; enforce resource ownership server-side |
| File storage | Store private photos and generated personal exports | Private objects, non-guessable identifiers, controlled delivery |
| Notification service | Deliver neutral reminders configured by the user | Receives the minimum content needed for delivery |
| PDF generation | Assemble eligible modules and user-selected records | Must not add recommendations or expose another user's data |
| Translation system | Manage stable keys, locales, review state, and module versions | Unreviewed machine output is not published automatically |
| Audit and version service | Record content versions and security-relevant administrative actions | Avoid logging unnecessary sensitive content |

Reference technologies may include a web or native client, an HTTP API, relational databases, object storage, job queues, and static-site tooling. These examples are not selections.

## Data domains

1. **Public editorial content:** knowledge modules, citations, evidence status, translations, corrections, and release metadata.
2. **Account and authentication data:** account identifier, credentials or identity-provider references, sessions, recovery state, and security events.
3. **Personal plans:** labels, user-defined schedule, optional recurrence, and status chosen by the user.
4. **Documentation and checklists:** journal records, user-created checklist items, dates, and notes.
5. **Reminder preferences:** user-selected time, timezone, channel, pause state, and privacy display preference.
6. **Photos:** private image objects, timestamps, minimal derived metadata, and user notes.
7. **Other potentially health-related data:** any free text, tags, exports, or metadata that can reveal health interests or behaviour.

These domains require separate schemas or clearly enforced logical boundaries, explicit access policies, and purpose-specific retention. Public-content publication must never query private records.

## Key flows

- **Knowledge publication:** editorial workflow -> reviewed module -> versioned public store -> frontend/PDF export.
- **Private record creation:** authenticated user -> authorised API -> private store -> user workspace.
- **Reminder delivery:** user-created entry and opt-in preference -> minimal job payload -> notification provider -> user device.
- **Personal PDF export:** authorised request -> selected public modules and the requesting user's selected records -> isolated generation job -> private download.
- **Photo handling:** client-side metadata reduction where feasible -> authorised upload or local storage -> private object store -> controlled retrieval.

## Security and privacy constraints

- Authentication does not replace resource-level authorisation.
- Server-side ownership checks apply to every private resource.
- Data is minimised between components and external providers.
- Transport encryption and secure storage are baseline design requirements, subject to implementation review.
- Administrative access is restricted, purpose-bound, and auditable without copying sensitive content into logs.
- Backup, export, and deletion behaviour must be designed with each data domain, not added later.

## Open decisions

Hosting provider, identity method, database engine, object storage, notification channels, encryption-key management, retention periods, and client platforms remain undecided. Each requires a separate ADR and qualified security/privacy review before implementation.

