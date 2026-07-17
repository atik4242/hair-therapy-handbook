# Configuration

The committed `.env.example` contains safe development values only. Do not commit `.env` files, credentials, tokens, private URLs, or production configuration.

| Variable | Default/example | Purpose |
|---|---|---|
| `HTP_ENVIRONMENT` | `development` | Conceptual mode: development, test, or production |
| `HTP_DEBUG` | `false` | FastAPI debug responses; must remain false in production |
| `HTP_ALLOWED_ORIGINS` | `http://localhost:5173` | Comma-separated explicit web origins; wildcard is rejected |

Missing optional values use conservative development defaults. Production configuration must be supplied by the operator through a reviewed secret/configuration mechanism; no production passwords or keys have defaults.

The web stores only `htp.locale` in browser local storage. This is a locale code, not an identifier or user profile. No cookie is used.
