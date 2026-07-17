# ADR-002: Separate public and private data

- **Status:** Accepted
- **Context:** Reviewed knowledge is intended for publication; journals, plans, reminders, photos, and personal exports may be sensitive.
- **Decision:** Treat public editorial content and private user data as separate domains with separate permissions, storage boundaries, and publishing paths.
- **Consequences:** Public publishing cannot read private records; exports combining both require explicit user selection and isolated authorisation.
- **Open points:** Physical versus logical database separation depends on later threat and operations reviews.

