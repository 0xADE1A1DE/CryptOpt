/**
 * Copyright 2023 University of Adelaide
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, expect, it } from "vitest";

import { JasminBridge } from "@/bridge/jasmin-bridge";

describe("bridge", () => {
  describe("bridge:getCryptOptFunction", () => {
    it("should only have every node once", () => {
      const b = new JasminBridge().getCryptOptFunction().body;
      const set = new Set(b.map((n) => n.name[0]));
      expect(b).toHaveLength(set.size);
    });
  });
});
