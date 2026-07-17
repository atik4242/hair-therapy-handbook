# ADR-017: Structured Knowledge Module schema

- Status: Accepted
- Context: Public information needs stable, reviewable provenance across locales.
- Decision: Define JSON Schema and a Zod runtime mirror with required editorial, source, version, correction, and translation fields.
- Consequences: Content becomes validatable; schema changes require coordinated migrations.
- Open points: A future content pipeline must choose the canonical serialization format.
