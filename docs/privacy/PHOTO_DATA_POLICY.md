# Photo Data Policy

Photo functionality is not implemented in HTH-006. These requirements constrain any future implementation.

## Default and access

- Photos are private by default.
- The first phase has no community, public sharing, public profile, or before-and-after gallery.
- Other users cannot access a person's photos.
- Access controls are restrictive and checked for every object retrieval.
- Administrative access is exceptional, purpose-bound, restricted, and handled through auditable procedures.

## Prohibited processing

- No face recognition or identity analysis.
- No diagnosis or automated medical assessment.
- No advertising use.
- No sale, brokerage, or marketing of photo data.
- No use in general model training.

## Processing and storage

- Remove unnecessary EXIF and other embedded metadata, preferably on the client before transfer.
- Prefer local or client-side processing where feasible.
- Cloud analysis, if ever proposed, is optional, transparent, separately activated, and limited to a declared purpose.
- Use secure transmission, private storage, controlled URLs, and resource-level authorisation.
- Avoid placing identifiers or sensitive labels in object names, logs, and notification payloads.

## User control

Users can export and delete their photos and associated user-authored metadata. Deletion design must address active storage, generated derivatives, queues, backups, and documented retention limits. Local-only storage and self-hosted storage remain possible deployment options.

## Review requirement

A photo feature requires a new privacy impact assessment, threat-model review, accessibility review, and qualified privacy, security, and legal review before public production use.

