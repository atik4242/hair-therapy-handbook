# ADR-012: Shared repository structure

- **Status:** Accepted
- **Context:** Platform code must coexist with governance, MkDocs, and Typst without damaging existing products.
- **Decision:** Keep a monorepo with `apps`, `packages`, `content`, `docs`, and the existing Typst source directories.
- **Consequences:** Changes can validate contracts and all publication targets together; CI is split by responsibility.
- **Open points:** Release cadence and package publication are deferred.
