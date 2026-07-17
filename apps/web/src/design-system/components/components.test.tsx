import { render, screen } from "@testing-library/react";
import { describe, expect, it } from "vitest";
import { Alert, Badge, Button, Callout, Card, EvidenceLevel, Heading, LanguageSwitcher, Link, SourceReference, UncertaintyNotice, VersionInformation } from ".";

describe("design system components", () => {
  it("renders typed semantic primitives", () => {
    render(<><Heading level={2}>Heading</Heading><Card>Card</Card><Badge>Badge</Badge><Button>Action</Button><Link href="#target">Link</Link><Alert>Alert</Alert><Callout title="Info">Text</Callout></>);
    expect(screen.getByRole("heading", { level: 2 })).toBeVisible();
    expect(screen.getByRole("button", { name: "Action" })).toBeEnabled();
    expect(screen.getByRole("alert")).toBeVisible();
  });
  it("exposes evidence, uncertainty, source, and version semantics", () => {
    render(<><EvidenceLevel label="Evidence" detail="Detail" disclaimer="Boundary"/><UncertaintyNotice title="Uncertainty" disclaimer="Boundary">Detail</UncertaintyNotice><ol><SourceReference id="s1" title="Source" href="https://example.test"/></ol><VersionInformation version="1.0.0" date="2026-07-17" versionLabel="Version" dateLabel="Reviewed"/></>);
    expect(screen.getByLabelText("Evidence")).toBeVisible();
    expect(screen.getByLabelText("Uncertainty")).toBeVisible();
    expect(screen.getByRole("link", { name: "Source" })).toBeVisible();
    expect(screen.getByText("1.0.0")).toBeVisible();
  });
  it("provides a keyboard-focusable language control", () => {
    render(<LanguageSwitcher locale="en" label="Language" onChange={() => undefined}/>);
    const select=screen.getByRole("combobox"); select.focus(); expect(select).toHaveFocus();
  });
});
