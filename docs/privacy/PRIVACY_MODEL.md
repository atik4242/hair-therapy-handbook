# Privacy Model

## Status

This is a design policy for a future HTP, not a legal opinion, certification, or claim of complete regulatory compliance. Qualified privacy, security, and legal review is required before public production operation.

## Principles

- **Privacy by Design:** assess data flows, access, retention, export, deletion, and failure modes while designing each feature.
- **Privacy by Default:** private features start private, optional sharing starts off, and the least data-revealing setting is the default.
- **Data minimisation:** collect and process only what is necessary for a declared purpose.
- **Purpose limitation:** do not silently reuse data for unrelated analytics, advertising, profiling, or model training.
- **Transparent choice:** explain optional processing in plain language before activation.
- **Withdrawal:** users can disable optional processing and reminders without losing unrelated core access.
- **Data sovereignty:** users can access, export, correct where applicable, and request deletion of their personal records.
- **Trust before Revenue:** privacy controls are not premium features, and personal data is not a product.

## Prohibited and excluded uses

- No advertising based on personal or health-related data.
- No sale or marketing of personal data and no transfer to data brokers.
- No use of personal photos for general AI model training.
- No public photo profile or public before-and-after gallery.
- No access by other users to private records.
- No hidden trackers or manipulative consent and deletion flows.

## Data lifecycle

1. **Collection:** state purpose, required fields, optional fields, and relevant consequences.
2. **Use:** restrict access by role and resource ownership; minimise transfers to processors.
3. **Storage:** use secure storage appropriate to the data class and encrypted transmission between components.
4. **Export:** provide a complete, understandable export of user-provided records and relevant metadata without artificial friction.
5. **Deletion:** provide account deletion and defined deletion handling for active data, generated files, queued jobs, logs, and backups.
6. **Retention:** document a purpose and period or review criterion for each class before production use.

Production data, backups, and operational logs must be treated as separate stores with separate retention and deletion procedures. Logs must not contain record bodies, photo contents, credentials, or notification text unless strictly necessary and explicitly reviewed.

## Photos

Photos require restrictive access, private storage, controlled delivery, and removal of unnecessary EXIF metadata. Local or client-side processing is preferred where feasible. Any cloud analysis must be optional, transparent, purpose-specific, and separately reviewed.

## Consent and optional functions

Consent is not used as a blanket substitute for minimisation or security. Optional functions are clearly labelled, off by default when they introduce additional processing, and accompanied by accessible withdrawal controls. Rejecting an optional function must not trigger deceptive pressure or unrelated loss of access.

## Implementation prerequisites

Before public production use, HTP needs documented data flows, processor assessment, retention schedules, incident handling, access review, security testing, backup restoration and deletion tests, and qualified privacy/legal review. Exact legal obligations depend on the operating entity, jurisdiction, data flows, and selected technologies.

