# ADR-015: No database or authentication in HTH-007

- **Status:** Accepted
- **Context:** Adding identity or persistence before private-domain design would create unnecessary risk and scope.
- **Decision:** HTH-007 contains only public technical endpoints and static UI; no database, login, account, upload, or private route exists.
- **Consequences:** The foundation is locally executable without processing personal data. Future private features require new ADRs and threat/privacy review.
- **Open points:** Identity, authorisation, storage, retention, and migration remain explicitly undecided.
