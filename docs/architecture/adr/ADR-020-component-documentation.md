# ADR-020: Internal component documentation instead of Storybook

- Status: Accepted
- Context: The current component set is small and the repository prioritises a lean technical foundation.
- Decision: Use the internal `/design-system` route plus tests and written documentation; do not add Storybook in HTH-008.
- Consequences: Fewer dependencies and no Storybook telemetry surface; component exploration is less feature-rich.
- Open points: Reconsider Storybook if independent component development or visual regression volume materially increases.
