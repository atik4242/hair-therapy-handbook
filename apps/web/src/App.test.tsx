import { fireEvent, render, screen, within } from "@testing-library/react";
import { MemoryRouter } from "react-router-dom";
import { beforeEach, describe, expect, it } from "vitest";
import { messages } from "@htp/i18n";
import { App } from "./App";

const renderAt = (path = "/") => render(<MemoryRouter initialEntries={[path]}><App /></MemoryRouter>);

describe("HTP routes and languages", () => {
  beforeEach(() => localStorage.clear());
  it("renders one primary heading and all core principles", () => {
    renderAt();
    expect(screen.getAllByRole("heading", { level: 1 })).toHaveLength(1);
    for (const key of ["principles.inform","principles.document","principles.remind"] as const) expect(screen.getByText(messages.en[key])).toBeVisible();
  });
  it("switches language and stores only the locale", () => {
    renderAt();
    fireEvent.change(screen.getByRole("combobox"), { target: { value: "de" } });
    expect(screen.getByText(messages.de["principles.inform"])).toBeVisible();
    expect(localStorage.getItem("htp.locale")).toBe("de");
  });
  it("keeps exactly the same translation keys", () => {
    expect(Object.keys(messages.de)).toEqual(Object.keys(messages.en));
    expect(Object.keys(messages.tr)).toEqual(Object.keys(messages.en));
  });
  it("renders the knowledge route", () => {
    renderAt("/knowledge");
    expect(screen.getByRole("heading", { level: 1, name: messages.en["knowledge.title"] })).toBeVisible();
  });
  it("renders evidence, uncertainty, sources, and version on the direct module route", () => {
    renderAt("/knowledge/how-to-read-a-module");
    expect(screen.getAllByRole("heading", { level: 1 })).toHaveLength(1);
    expect(screen.getByText(messages.en["module.evidence"])).toBeVisible();
    expect(screen.getByText(messages.en["module.uncertainty"])).toBeVisible();
    expect(screen.getByRole("heading", { name: messages.en["module.sources"] })).toBeVisible();
    expect(within(screen.getByText(messages.en["module.version"]).parentElement!).getByText("1.0.0")).toBeVisible();
  });
  it("shows an accessible 404 route", () => {
    renderAt("/missing");
    expect(screen.getByRole("heading", { level: 1, name: messages.en["notFound.title"] })).toBeVisible();
    expect(screen.getByRole("link", { name: messages.en["notFound.home"] })).toHaveAttribute("href", "/");
  });
  it("contains no external font, tracker, or telemetry resource", () => {
    renderAt();
    expect(document.querySelectorAll('link[href^="http"],script[src^="http"],iframe').length).toBe(0);
  });
});
