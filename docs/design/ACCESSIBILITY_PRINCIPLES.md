# Accessibility Principles

HTP targets robust, barrier-reduced interfaces; this is not a claim of complete WCAG conformance.

- Use semantic landmarks and exactly one primary `h1` per route.
- Preserve a logical heading order and reading sequence.
- Provide a skip link, visible focus, accessible names, and keyboard operation.
- Meet practical text contrast and never communicate meaning by colour alone.
- Support reflow, browser zoom to 200%, larger text, narrow screens, and reduced motion.
- Use meaningful links and plain language.

Vitest plus axe performs automated smoke checks on representative routes. Automated checks cannot replace keyboard, screen-reader, zoom, contrast, and cognitive usability review before release.
