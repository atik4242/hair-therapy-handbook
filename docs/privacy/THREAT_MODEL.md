# Threat Model

## Scope and method

This initial model covers the conceptual HTP private workspace. Likelihood and severity require revision when technologies, operators, jurisdictions, and data flows are selected.

| Threat | Possible impact | Baseline mitigations | Residual risk |
|---|---|---|---|
| Stolen credentials | Attacker reads or changes private records | Strong authentication options, secure recovery, session controls, rate limiting, user alerts | Phishing and compromised devices remain possible |
| Unauthorised account access | Exposure or deletion of records | Re-authentication for sensitive actions, session review, anomaly monitoring with minimal data | Detection may be delayed |
| Broken authorisation | One user accesses another user's records | Deny-by-default resource checks, ownership tests, tenant-isolation tests | Implementation defects remain possible |
| Publicly reachable image files | Photos indexed, guessed, or shared unintentionally | Private object storage, controlled delivery, non-guessable IDs, no public buckets | Leaked authorised links may remain usable briefly |
| Insecure backups | Large-scale disclosure or unrecoverable loss | Encrypted, access-controlled backups; restoration tests; retention and deletion procedures | Backups expand the protected data footprint |
| Administrator access | Insider misuse or accidental exposure | Least privilege, approval for exceptional access, audit events, support tooling that hides content | Privileged operators retain some capability |
| Compromised third party | Notification, hosting, analytics, or identity provider leaks data | Minimise payloads, assess processors, contractual/security review, replacement plan | Provider compromise cannot be eliminated |
| Sensitive lock-screen notification | Shared-device observers infer private activity | Neutral text, hidden preview option, user-controlled channels, reminders off by default | Device settings may override expectations |
| Email leak | Subject or body exposes private context | Neutral email content, minimal metadata, no record content, optional email | Mailbox compromise remains outside HTP control |
| Photo metadata | Location, device, or time data reveals identity or behaviour | Remove unnecessary EXIF client-side and verify server-side | Pixels themselves may identify people or places |
| Cross-user data mixing | Reports, exports, or caches contain another user's data | Per-request ownership checks, isolated jobs, cache partitioning, automated tests | Complex asynchronous systems can fail unexpectedly |
| Accidental publication | Private record enters public knowledge or sharing surface | Separate data domains and publishing pipelines; no private-to-public default path | Human export and external sharing remain possible |
| Data remnants after deletion | Deleted records persist in files, queues, logs, or backups | Deletion inventory, lifecycle jobs, backup expiry, documented exceptions, verification tests | Immediate removal from immutable backups may not be feasible |

## Trust boundaries

Primary boundaries are the user device, frontend, API, authentication service, private database, object store, job/notification providers, PDF generator, backups, and administrative tooling. Data crossing a boundary is minimised, authenticated where appropriate, protected in transit, and documented.

## Review triggers

Update this model when adding accounts, synchronisation, uploads, external processors, analytics, notifications, AI processing, sharing, new deployment models, or materially different data classes.

