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

import type { FiatDynArgWCryptoptOperations } from "@/bridge/bitcoin-core-bridge/transformations/reducers/zextR";
import { zextR } from "@/bridge/bitcoin-core-bridge/transformations/reducers/zextR";

describe("zextR", () => {
  const body: FiatDynArgWCryptoptOperations[] = [
    {
      name: ["x13"],
      datatype: "u128",
      operation: "zext",
      arguments: ["x12"],
    },
    {
      name: ["x14"],
      datatype: "u128",
      operation: "zext",
      arguments: ["arg1[3]"],
    },
    {
      name: ["x15"],
      datatype: "u128",
      operation: "mulx",
      arguments: ["x14", "x13"],
    },
  ];
  it("should inline zext", () => {
    const res = zextR(body);
    expect(res).toHaveLength(1);
    expect(res[0]).toStrictEqual({
      name: ["x15"],
      datatype: "u128",
      operation: "mulx",
      arguments: ["arg1[3]", "x12"],
    });
  });
  it("should return if there is no zext ops", () => {
    const nonZextOp: FiatDynArgWCryptoptOperations = {
      name: ["x15"],
      datatype: "u128",
      operation: "mulx",
      arguments: ["x14", "x13"],
    };
    const res = zextR([nonZextOp]);
    expect(res).toHaveLength(1);
    expect(res[0]).toStrictEqual(nonZextOp);
  });
});
