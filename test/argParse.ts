import { describe, expect, it } from "vitest";
import { parsedArgs } from "@/helper";

describe("Argparse", () => {
  it("should default", () => {
    expect(parsedArgs).toHaveProperty("bridge");
    console.debug(parsedArgs);
  });
});
