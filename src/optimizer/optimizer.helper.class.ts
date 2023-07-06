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

import { mkdirSync } from "fs";
import { Measuresuite } from "measuresuite";
import { resolve } from "path";

import { BitcoinCoreBridge, METHOD_T as BITCOIN_CORE_METHOD_T } from "@/bridge/bitcoin-core-bridge";
import { CURVE_DETAILS, CURVE_T, FiatBridge, METHOD_T } from "@/bridge/fiat-bridge";
import { JasminBridge } from "@/bridge/jasmin-bridge";
import { ManualBridge } from "@/bridge/manual-bridge";
import { Model } from "@/model";
import { OptimizerArgs } from "@/types";

type needComms = Pick<OptimizerArgs, "bridge" | "seed" | "memoryConstraints">;
interface needJasmin extends needComms {
  bridge: "jasmin";
}
interface needFiat extends needComms {
  curve: CURVE_T;
  method: METHOD_T;
  bridge: "fiat";
}
interface needManual extends needComms {
  bridge: "manual";
  jsonFile?: string;
  cFile?: string;
}
interface needBitcoinCore extends needComms {
  bridge: "bitcoin-core";
  method: BITCOIN_CORE_METHOD_T;
}

type neededArgs = needJasmin | needFiat | needManual | needBitcoinCore;

type ret = {
  argwidth: number;
  argnumin: number;
  argnumout: number;
  chunksize: number;
  bounds: string[];
  symbolname: string;
};

function initFiat(sharedObjectFilename: string, args: needFiat): ret {
  const bridge = new FiatBridge();
  Model.init({
    memoryConstraints: args.memoryConstraints,
    json: bridge.getCryptOptFunction(args.method, args.curve),
  });

  const symbolname = bridge.machinecode(sharedObjectFilename, args.method, args.curve);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = bridge.argwidth(args.curve);
  const argnumin = bridge.argnumin(args.method);
  const argnumout = bridge.argnumout(args.method);

  const bounds = CURVE_DETAILS[args.curve].bounds;
  return { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
}

function initBitcoinCore(sharedObjectFilename: string, args: needBitcoinCore): ret {
  const bridge = new BitcoinCoreBridge();
  Model.init({
    memoryConstraints: args.memoryConstraints,
    json: bridge.getCryptOptFunction(args.method),
  });

  const symbolname = bridge.machinecode(sharedObjectFilename, args.method);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = bridge.argwidth("", args.method);
  const argnumin = bridge.argnumin(args.method);
  const argnumout = bridge.argnumout(args.method);

  const bounds = bridge.bounds("", args.method);
  return { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
}

function initJasmin(sharedObjectFilename: string, args: needJasmin): ret {
  const bridge = new JasminBridge();
  bridge;
  Model.init({
    memoryConstraints: args.memoryConstraints,
    json: bridge.getCryptOptFunction(),
  });

  const symbolname = bridge.machinecode(sharedObjectFilename);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = bridge.argwidth;
  const argnumin = bridge.argnumin;
  const argnumout = bridge.argnumout;

  const bounds = bridge.bounds;
  return { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
}

function initManual(sharedObjectFilename: string, args: needManual): ret {
  if (!args.jsonFile || !args.cFile) {
    throw new Error(
      "cannot use manual-brige w/o a bridgefile...  Where should I get my information from, huh?",
    );
  }
  const bridge = new ManualBridge(args.jsonFile, args.cFile);
  // manual
  Model.init({
    memoryConstraints: args.memoryConstraints,
    json: bridge.getCryptOptFunction(),
  });
  const symbolname = bridge.machinecode(sharedObjectFilename);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = bridge.argwidth();
  const argnumin = bridge.argnumin();
  const argnumout = bridge.argnumout();
  //  bounds:    ["0x0000 3000 0000 0000",
  //  &            0x0000 1fff ffff ffff
  const bounds = ["0xffff ffff ffff ffff"]
    .concat(
      Array(argwidth - 1)
        //     0x0000 0fff ffff ffff
        //    "0x0000 1800 0000 0000"],
        .fill("0xffff ffff ffff ffff"),
    )
    .map((s) => s.replaceAll(" ", ""));

  const res = { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
  // console.info(res);
  return res;
}

function createMS(
  { argwidth, argnumin, argnumout, chunksize, bounds, symbolname }: ret,
  libcheckfunctionFile: string,
): { symbolname: string; measuresuite: Measuresuite } {
  return {
    symbolname,
    measuresuite: new Measuresuite(
      argwidth,
      argnumin,
      argnumout,
      chunksize,
      bounds,
      libcheckfunctionFile,
      symbolname,
    ),
  };
}

export function init(tmpDir: string, args: neededArgs): { symbolname: string; measuresuite: Measuresuite } {
  // Create temp directory for the so-files
  mkdirSync(tmpDir, { recursive: true });

  const sharedObjectFilename = resolve(
    tmpDir,
    `libcheckfunctions-s${args.seed}-b${args.bridge}-p${process.pid}.so`,
  );

  let r: ret;
  switch (args.bridge) {
    case "jasmin":
      r = initJasmin(sharedObjectFilename, args);
      break;
    case "manual":
      r = initManual(sharedObjectFilename, args);
      break;
    case "fiat":
      r = initFiat(sharedObjectFilename, args);
      break;
    case "bitcoin-core":
      r = initBitcoinCore(sharedObjectFilename, args);
      break;
    default:
      throw new Error("Bridge is specified, but not valid.");
  }
  return createMS(r, sharedObjectFilename);
}
