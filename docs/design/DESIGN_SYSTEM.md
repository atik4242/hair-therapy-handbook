# HTP Design System

The HTH-008 web design system is a presentation layer without medical business logic. Its source is split into `tokens/`, `foundations/`, and `components/`; a future `patterns/` directory is reserved for composed, domain-neutral patterns.

## Tokens and rules

Tokens cover typography, spacing, sizes, radii, borders, shadows, surfaces, text contrast, focus, status colours, content widths, and responsive breakpoints. Components must use these tokens instead of introducing unexplained values. The system font stack requires no external download. Colour is always paired with text, shape, or border treatment.

The internal `/design-system` route documents representative components without adding Storybook. Components must remain typed, keyboard-operable, content-neutral, and translated when exposed in the public interface.

## Semantic patterns

- Information: neutral context, not authority.
- Warning: an important boundary, not a diagnosis.
- Evidence: a description of support, not an individual recommendation.
- Uncertainty: limitations shown separately; limited evidence is not proof of ineffectiveness.
- Source, version, correction, and translation status: explicit editorial metadata.

No pattern may imply clinical certification or replace qualified assessment.
