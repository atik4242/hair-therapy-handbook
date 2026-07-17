# ADR-011: React, TypeScript, Vite, and FastAPI foundation

- **Status:** Accepted
- **Context:** HTP needs a minimal typed public UI and documented public API with small operational overhead.
- **Decision:** Use React/TypeScript/Vite for web and Python/FastAPI for API, with pytest, Ruff, Mypy, ESLint, TypeScript, and Vitest checks.
- **Consequences:** Two runtime ecosystems require separate locks and CI; both have mature accessibility, validation, and testing tools.
- **Open points:** Production hosting and long-term framework upgrades remain undecided.
