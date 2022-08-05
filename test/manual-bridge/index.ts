/**
 * Copyright 2022 University of Adelaide
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

import { rm, readFileSync, writeFileSync } from "fs";
import { afterAll, expect, it, vi } from "vitest";

import { Optimizer } from "@/optimizer";
import type { OptimizerArgs, Fiat } from "@/types";

import { getTestArgs, genTestFilename, nothing } from "../test-helpers";

const mockLog = vi.spyOn(console, "log").mockImplementation(nothing);
const mockErr = vi.spyOn(console, "error").mockImplementation(nothing);

vi.useFakeTimers();
let resultpath = "";
const symbol = "stairwayToHeaven";

const someCFilename = writeC();
const someJsonFilename = writeJSON();

it("optimise", () => {
  return new Promise((resolve, reject) => {
    const args: OptimizerArgs = getTestArgs("");
    args.bridge = "manual";
    args.curve = "";
    args.cFile = someCFilename;
    args.jsonFile = someJsonFilename;
    args.evals = 1000;
    const opt = new Optimizer(args);
    console.warn({ someJsonFilename, someCFilename, resultDir: args.resultDir });

    try {
      opt.optimise().then((code) => {
        expect(code).toEqual(0);
        expect(mockErr).not.toHaveBeenCalled();
        resolve(0);
      });
      vi.runAllTimers();
    } catch (e) {
      mockErr.mockRestore();
      console.error(e);
      reject(e);
    }
  });
});

afterAll(() => {
  // readFileSync(resultpath);
  console.warn(resultpath);
  // rm(resultpath, { recursive: true, force: true }, () => nothing);
  rm(someJsonFilename, { force: true }, () => nothing);
  rm(someCFilename, { force: true }, () => nothing);
  mockLog.mockRestore();
  mockErr.mockRestore();
  vi.useRealTimers();
});

function tmpFile(suff: "json" | "c") {
  return `${genTestFilename()}.${suff}`;
}

function writeJSON(): string {
  const payload: Fiat.FiatFunction = {
    operation: symbol,
    arguments: [
      {
        datatype: "u64[5]",
        name: "arg1",
        lbound: ["0x0", "0x0", "0x0", "0x0", "0x0"],
        ubound: ["0xFFFFFFFF", "0xFFFFFFFF", "0xFFFFFFFF", "0xFFFFFFFF", "0xFFFFFFFF"],
      },
    ],
    returns: [
      {
        datatype: "u64[5]",
        name: "out1",
        lbound: ["0x0", "0x0", "0x0", "0x0", "0x0"],
        ubound: ["0x00FFFFFFFF", "0x01FFFFFFFF", "0x02FFFFFFFF", "0x03FFFFFFFF", "0x04FFFFFFFF"],
      },
    ],
    body: [
      { datatype: "u64", name: ["x1"], operation: "=", arguments: ["arg1[0]"] },
      { datatype: "u64", name: ["x2"], operation: "=", arguments: ["arg1[1]"] },
      { datatype: "u64", name: ["x3"], operation: "=", arguments: ["arg1[2]"] },
      { datatype: "u64", name: ["x4"], operation: "=", arguments: ["arg1[3]"] },
      { datatype: "u64", name: ["x5"], operation: "=", arguments: ["arg1[4]"] },
      { datatype: "u64", name: ["x10"], operation: "+", arguments: ["x1", "x2"] },
      {
        datatype: "u64",
        name: ["x11"],
        operation: "+",
        arguments: ["x1", { datatype: "u64", name: [], operation: "+", arguments: ["x2", "x3"] }],
      },
      {
        datatype: "u64",
        name: ["x12"],
        operation: "+",
        arguments: [
          "x1",
          {
            datatype: "u64",
            name: [],
            operation: "+",
            arguments: ["x2", { datatype: "u64", name: [], operation: "+", arguments: ["x3", "x4"] }],
          },
        ],
      },
      {
        datatype: "u64",
        name: ["x13"],
        operation: "+",
        arguments: [
          "x1",
          {
            datatype: "u64",
            name: [],
            operation: "+",
            arguments: [
              "x2",
              {
                datatype: "u64",
                name: [],
                operation: "+",
                arguments: ["x3", { datatype: "u64", name: [], operation: "+", arguments: ["x4", "x5"] }],
              },
            ],
          },
        ],
      },
      { datatype: "u64", name: ["out1[0]"], operation: "=", arguments: ["x1"] },
      { datatype: "u64", name: ["out1[1]"], operation: "=", arguments: ["x10"] },
      { datatype: "u64", name: ["out1[2]"], operation: "=", arguments: ["x11"] },
      { datatype: "u64", name: ["out1[3]"], operation: "=", arguments: ["x12"] },
      { datatype: "u64", name: ["out1[4]"], operation: "=", arguments: ["x13"] },
    ],
  };
  const filename = tmpFile("json");
  writeFileSync(filename, JSON.stringify(payload));
  return filename;
}

function writeC(): string {
  const filename = tmpFile("c");
  writeFileSync(
    filename,
    [
      "#include <stdio.h>",
      "#include <stdint.h>",
      "",
      `void ${symbol}(uint64_t out1[5], uint64_t arg1[5]){`,
      "  out1[0] = arg1[0];",
      "  out1[1] = arg1[0] + arg1[1];",
      "  out1[2] = arg1[0] + (arg1[1] + arg1[2]);",
      "  out1[3] = arg1[0] + (arg1[1] + (arg1[2] + arg1[3]));",
      "  out1[4] = arg1[0] + (arg1[1] + (arg1[2] + (arg1[3] + arg1[4])));",
      "}",
    ].join("\n"),
  );
  return filename;
}
