# Frontend Components

Import primitives from `apps/web/src/design-system/components`. Tokens live in `tokens/tokens.css`; structural styles live in `foundations/index.css`. Components accept content and accessibility labels from callers and contain no medical assumptions.

Add a component only when it has a distinct responsibility and reusable semantic contract. Provide TypeScript props, sensible defaults, keyboard behaviour, translated visible text at the route boundary, unit tests, and an accessibility smoke test where appropriate. Review the internal `/design-system` page for composed examples.
