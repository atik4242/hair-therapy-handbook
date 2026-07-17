# ADR-010: Core Principles Compatibility Gate

- **Status:** Accepted
- **Context:** Product boundaries can erode when features are assessed independently.
- **Decision:** Every new feature is reviewed against: HTP informs but does not diagnose; documents but does not recommend therapy; reminds but does not decide for the user.
- **Consequences:** A conflicting proposal is redesigned or rejected before implementation and again before merge. The gate complements privacy, security, evidence, and accessibility review.
- **Open points:** A pull-request checklist and automated policy checks may be added later.

