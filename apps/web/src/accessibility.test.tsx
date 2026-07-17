import { render } from "@testing-library/react";
import { MemoryRouter } from "react-router-dom";
import { axe } from "vitest-axe";
import { describe, expect, it } from "vitest";
import { App } from "./App";

describe("automated accessibility smoke tests", () => {
  for(const route of ["/","/knowledge","/knowledge/how-to-read-a-module","/missing"]){
    it(`has no detected violations on ${route}`, async () => {
      localStorage.clear();
      const {container}=render(<MemoryRouter initialEntries={[route]}><App/></MemoryRouter>);
      // jsdom has no canvas implementation; contrast remains a documented manual check.
      expect((await axe(container, { rules: { "color-contrast": { enabled: false } } })).violations).toHaveLength(0);
    });
  }
});
