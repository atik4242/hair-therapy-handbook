import { fireEvent, render, screen } from "@testing-library/react";
import { beforeEach, describe, expect, it } from "vitest";
import { messages } from "@htp/i18n";
import { App } from "./App";

describe("HTP landing page", () => {
  beforeEach(() => localStorage.clear());
  it("shows all core principles", () => { render(<App />); expect(screen.getByText(messages.en["principles.inform"])).toBeVisible(); expect(screen.getByText(messages.en["principles.document"])).toBeVisible(); expect(screen.getByText(messages.en["principles.remind"])).toBeVisible(); });
  it("switches language and stores only the locale", () => { render(<App />); fireEvent.change(screen.getByRole("combobox"), { target: { value: "de" } }); expect(screen.getByText(messages.de["principles.inform"])).toBeVisible(); expect(localStorage.getItem("htp.locale")).toBe("de"); });
  it("has every homepage key in every locale", () => { expect(Object.keys(messages.de)).toEqual(Object.keys(messages.en)); expect(Object.keys(messages.tr)).toEqual(Object.keys(messages.en)); });
});
