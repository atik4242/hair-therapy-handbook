import { describe, expect, it } from "vitest";
import { demoModule } from "./demo";
import { moduleSchema } from "./schema";

describe("knowledge module schema", () => {
  it("accepts the complete neutral demonstration", () => expect(moduleSchema.safeParse(demoModule).success).toBe(true));
  it("rejects a missing required field", () => { const invalid={...demoModule} as Partial<typeof demoModule>; delete invalid.title; expect(moduleSchema.safeParse(invalid).success).toBe(false); });
  it("rejects unsupported locales", () => expect(moduleSchema.safeParse({...demoModule,available_locales:["fr"]}).success).toBe(false));
  it("rejects duplicate source identifiers", () => expect(moduleSchema.safeParse({...demoModule,sources:[demoModule.sources[0],demoModule.sources[0]]}).success).toBe(false));
  it("rejects invalid semantic versions", () => expect(moduleSchema.safeParse({...demoModule,version:"v1"}).success).toBe(false));
  it("rejects invalid translation status", () => expect(moduleSchema.safeParse({...demoModule,translation_status:{...demoModule.translation_status,de:"machine"}}).success).toBe(false));
  it("contains complete visible content in de, en, and tr", () => {
    for(const locale of ["de","en","tr"] as const){expect(demoModule.title[locale]).not.toBe("");expect(demoModule.summary[locale]).not.toBe("");for(const section of demoModule.sections)expect(section.body[locale]).not.toBe("");}
  });
});
