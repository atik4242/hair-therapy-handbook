# Local Development

## Prerequisites

- Node.js 22 and pnpm 11.9
- Python 3.12
- Docker with Compose v2 for container development
- Typst 0.15.0 and MkDocs 1.6.1 for existing documentation products

## Native start

```bash
pnpm install --frozen-lockfile
pnpm --filter @htp/web dev
```

In a second terminal:

```bash
python -m venv .venv
.venv/Scripts/pip install -e "apps/api[dev]"
.venv/Scripts/uvicorn app.main:app --app-dir apps/api --reload
```

Web: `http://localhost:5173`; API: `http://localhost:8000`; local API docs: `http://localhost:8000/docs`.

## Docker Compose

```bash
docker compose up --build
docker compose ps
docker compose down
```

Compose exposes web on 5173 and API on 8000. It adds no database, object storage, notification service, privileged container, secret, or host source mount.
