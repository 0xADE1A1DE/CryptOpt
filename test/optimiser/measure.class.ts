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

import { afterAll, describe, expect, it, vi } from "vitest";

import { nothing } from "../test-helpers";
import MeasureUtil from "@/optimizer/measure.class";
import { Measuresuite } from "measuresuite";
import { OptimizerArgs } from "@/types";

const mockLog = vi.spyOn(console, "log").mockImplementation(nothing);
const mockErr = vi.spyOn(console, "error").mockImplementation(nothing);

describe("stackMeasure", () => {
  it("should use the stack counting function", () => {
    const mu = new MeasureUtil(
      undefined as unknown as Measuresuite,
      { objectiveFunction: "stack" } as OptimizerArgs,
    );
    expect(mu.measure(0, 0, [])?.stats.timer).toBe("STACK");

    expect(mu.measure(0, 0, undefined)).toBeNull();

    expect(mu.measure(0, 0, [])?.cycles).toStrictEqual([]);
    expect(mu.measure(0, 0, ["ret", "ret"])?.cycles).toStrictEqual([[0], [0]]);
    expect(mu.measure(0, 0, ["ret", "ret", "ret"])?.cycles).toStrictEqual([[0], [0], [0]]);
  });
  it("should count the mov [rsp...], xxx; instructons per function", () => {
    const mu = new MeasureUtil(
      undefined as unknown as Measuresuite,
      { objectiveFunction: "stack" } as OptimizerArgs,
    );
    const sampleAsm = [
      "SECTION .text",
      "	GLOBAL fiat_curve25519_carry_square",
      "fiat_curve25519_carry_square:",
      "sub rsp, 136",
      "shlx r9, [ rsi + 0x20 ], r10; x3 <- arg1[4] * 0x2 (shlx does not change the flags)",
      "imul r10, [ rsi + 0x18 ], 0x26; x5 <- arg1[3] * 0x26",
      "mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem", // single space
      "mov [rsp - 0x78 ], rbp; spilling calSv-rbp to mem", // no spaces
      "mov [   rsp - 0x70 ], r12; spilling calSv-r12 to mem", // multiple spaces
      "adcx rcx, [ rsp - 0x18 ]",
      "xor rdx, rdx",
      "adox r15, [ rsp - 0x8 ]",
      "mulx r12, rbp, rax; x12_1, x12_0<- arg1[2] * x2 (_0*_0)",
      "; number reverted permutation / tried permutation: 81 / 97 =83.505%",
      "; number reverted decision / tried decision: 80 / 102 =78.431%",
    ].join("\n");
    const sampleAsm2 = [
      "	GLOBAL fiat_rsp",
      "sub rsp, 136",
      "mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem", // single space
      "; number reverted decision / tried decision: 80 / 102 =78.431%",
    ].join("\n");

    expect(mu.measure(0, 0, [sampleAsm, sampleAsm2])?.cycles).toStrictEqual([[3], [1]]);
  });
});
describe("lengthMeasure", () => {
  it("should use the length counting function", () => {
    const mu = new MeasureUtil(
      undefined as unknown as Measuresuite,
      { objectiveFunction: "length" } as OptimizerArgs,
    );
    expect(mu.measure(0, 0, [])?.stats.timer).toBe("LENGTH");
    expect(mu.measure(0, 0, undefined)).toBeNull();
    expect(mu.measure(0, 0, [])?.cycles).toStrictEqual([]);
  });
  it("should count the length of the function, only instructions", () => {
    const mu = new MeasureUtil(
      undefined as unknown as Measuresuite,
      { objectiveFunction: "length" } as OptimizerArgs,
    );
    expect(mu.measure(0, 0, ["ret", "ret"])?.cycles).toStrictEqual([[1], [1]]);
    expect(mu.measure(0, 0, ["ret", "ret", "ret\npush rbx"])?.cycles).toStrictEqual([[1], [1], [2]]);
    const sampleAsm = [
      "SECTION .text",
      "	GLOBAL fiat_curve25519_carry_square",
      "fiat_curve25519_carry_square:",
      "sub rsp, 136",
      "shlx r9, [ rsi + 0x20 ], r10; x3 <- arg1[4] * 0x2 (shlx do:s not change the flags)",
      "imul r10, [ rsi + 0x18 ], 0x26; x5 <- arg1[3] * 0x2:",
      "mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem", // single space
      "mov [rsp - 0x78 ], rbp; spilling calSv-rbp to mem", // no spaces
      "mov [   rsp - 0x70 ], r12; spilling calSv-r12 to mem", // multiple spaces
      "adcx rcx, [ rsp - 0x18 ] ; :",
      "xor rdx, rdx",
      "adox r15, [ rsp - 0x8 ]",
      "mulx r12, rbp, rax; x12_1, x12_0<- arg1[2] * x2 (_0*_0)",
      "; number reverted permutation / tried permutation: 81 / 97 =83.505%",
      "; number reverted decision / tried decision: 80 / 102 =78.431%",
    ].join("\n");
    const sampleAsm2 = [
      "	GLOBAL fiat_rsp",
      "sub rsp, 136",
      " ", // tab
      " ", // space
      "",
      "mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem", // single space
      "ret",
      "; number reverted decision / tried decision: 80 / 102 =78.431%",
    ].join("\n");

    expect(mu.measure(0, 0, [sampleAsm, sampleAsm2])?.cycles).toStrictEqual([[10], [3]]);
  });
});

describe("uiCAMeasure", () => {
  it("should use the uica lib and error out if no arch is specified.", () => {
    const mu = new MeasureUtil(
      undefined as unknown as Measuresuite,
      { objectiveFunction: "uiCA" } as OptimizerArgs,
    );
    expect(mu.measure(0, 0, [])).toBeNull();
    expect(mu.measure(0, 0, undefined)).toBeNull();

    const mu2 = new MeasureUtil(
      undefined as unknown as Measuresuite,
      { objectiveFunction: "uiCA", uicaarch: "SKL" } as OptimizerArgs,
    );
    expect(mu2.measure(0, 0, undefined)).toBeNull();
    expect(mu2.measure(0, 0, [])).not.toBeNull();
    expect(mu2.measure(0, 0, [])?.stats.timer).toBe("SKL");
    expect(mu2.measure(0, 0, [])?.cycles).toStrictEqual([]);
  });

  it("should count the length of the function, only instructions", () => {
    const mu = new MeasureUtil(
      undefined as unknown as Measuresuite,
      { objectiveFunction: "uiCA", uicaarch: "SKL" } as OptimizerArgs,
    );
    expect(mu.measure(0, 0, ["ret", "ret"])?.cycles).toStrictEqual([[2], [2]]);
    expect(mu.measure(0, 0, ["ret", "ret", "ret\npush rbx\npop rcx"])?.cycles).toStrictEqual([[2], [2], [3]]);
    const sampleAsm = [
      "SECTION .text",
      "	GLOBAL fiat_curve25519_carry_square",
      "fiat_curve25519_carry_square:",
      "sub rsp, 136",
      "shlx r9, [ rsi + 0x20 ], r10; x3 <- arg1[4] * 0x2 (shlx do:s not change the flags)",
      "imul r10, [ rsi + 0x18 ], 0x26; x5 <- arg1[3] * 0x2:",
      "mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem", // single space
      "mov [rsp - 0x78 ], rbp; spilling calSv-rbp to mem", // no spaces
      "mov [   rsp - 0x70 ], r12; spilling calSv-r12 to mem", // multiple spaces
      "adcx rcx, [ rsp - 0x18 ] ; :",
      "xor rdx, rdx",
      "adox r15, [ rsp - 0x8 ]",
      "mulx r12, rbp, rax; x12_1, x12_0<- arg1[2] * x2 (_0*_0)",
      "; number reverted permutation / tried permutation: 81 / 97 =83.505%",
      "; number reverted decision / tried decision: 80 / 102 =78.431%",
    ].join("\n");

    const sampleAsm2 = [
      "	GLOBAL fiat_rsp",
      "sub rsp, 136",
      " ", // tab
      " ", // space
      "",
      "mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem", // single space
      "ret",
      "; number reverted decision / tried decision: 80 / 102 =78.431%",
    ].join("\n");

    expect(mu.measure(0, 0, [sampleAsm, sampleAsm2])?.cycles).toStrictEqual([[3.56], [2.99]]);
  });
});

afterAll(() => {
  mockLog.mockRestore();
  mockErr.mockRestore();
});
