# ADR-014: API versioning at `/api/v1`

- **Status:** Accepted
- **Context:** Public contracts need an explicit compatibility boundary before clients exist.
- **Decision:** Version public API routes from `/api/v1`; keep `/health` unversioned as an operational endpoint.
- **Consequences:** Breaking contract changes require a new API version; errors use a stable envelope.
- **Open points:** Deprecation periods and generated client strategy remain deferred.
