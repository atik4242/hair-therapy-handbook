# Testing and Builds

## Frontend

```bash
pnpm lint
pnpm typecheck
pnpm test
pnpm build
```

Tests cover the three Core Principles, locale switching, local locale persistence, and complete homepage translation keys.

## Backend

From `apps/api` with development dependencies installed:

```bash
ruff check .
ruff format --check .
mypy app tests
pytest
```

Tests cover health, public status, supported locales, security headers, and public error behaviour.

## Existing products and containers

```powershell
./scripts/build.ps1
python -m mkdocs build --strict
docker compose config --quiet
docker compose build
```

CI runs backend, frontend, documentation, PDF, and container checks as separate jobs.
