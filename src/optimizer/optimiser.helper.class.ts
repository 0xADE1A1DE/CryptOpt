import { Measuresuite } from "measuresuite";
import { resolve, } from "path";

import { BRIDGES } from "@/bridge";
import {
  AVAILABLE_METHODS as AVAILABLE_BITCOIN_METHODS,
  BitcoinCoreBridge,
} from "@/bridge/bitcoin-core-bridge";
import {
  AVAILABLE_METHODS as AVAILABLE_FIAT_METHODS,
  CURVE_DETAILS,
  CURVE_T,
  FiatBridge,
  METHOD_T,
} from "@/bridge/fiat-bridge";
import { ManualBridge } from "@/bridge/manual-bridge";
import { preprocessFunction } from "@/helper";
import { Model } from "@/model";


const genLibcheckfunctionFullFilepath = (tmpDir: string, args: { seed: number; curve: string; method?: string }) => {
  const suffix = `s${args.seed}-p${process.pid}-c${args.curve}${args.method ? "-m" : ""}${args.method ?? ""}`;
  return resolve(tmpDir, `libcheckfunctions-${suffix}.so`);
}

type neededArgs = {
  seed: number;
  curve: CURVE_T;
  method: METHOD_T;
  bridge?: typeof BRIDGES[number];
  jsonFile?: string;
  cFile?: string;
};
type ret = {
  argwidth: number;
  argnumin: number;
  argnumout: number;
  chunksize: number;
  bounds: string[];
  symbolname: string;
};

function initFiat(sharedObject: string, args: neededArgs): ret {
  const fiat = FiatBridge.getFiatFunction(args.curve, args.method);
  const json = preprocessFunction(fiat);
  console.log(`fiat body.len: ${fiat.body.length} + after${json.body.length}`);
  Model.init({
    curve: args.curve,
    json,
  });
  const symbolname = FiatBridge.machinecode(args.curve, args.method, sharedObject);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = FiatBridge.argwidth(args.curve);
  const argnumin = FiatBridge.argnumin(args.method);
  const argnumout = FiatBridge.argnumout(args.method);

  const bounds = CURVE_DETAILS[args.curve].bounds;
  return { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
}

function initBitcoinCore(sharedObject: string, args: neededArgs): ret {
  const bitcoinCoreBridge = new BitcoinCoreBridge();
  Model.init({
    curve: args.curve,
    json: bitcoinCoreBridge.getCryptOptFunction(args.method),
  });

  const symbolname = bitcoinCoreBridge.machinecode(args.method, sharedObject);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = bitcoinCoreBridge.argwidth(args.curve, args.method);
  const argnumin = bitcoinCoreBridge.argnumin(args.method);
  const argnumout = bitcoinCoreBridge.argnumout(args.method);

  const bounds = bitcoinCoreBridge.bounds(args.curve, args.method);
  return { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
}

function initManual(sharedObject: string, args: neededArgs): ret {
  if (!args.jsonFile || !args.cFile) {
    throw new Error(
      "cannot use manual-brige w/o a bridgefile...  Where should I get my information from, huh?",
    );
  }
  const bridge = new ManualBridge(args.jsonFile, args.cFile);
  // manual
  Model.init({
    curve: "",
    json: bridge.getCryptOptFunction(),
  });
  const symbolname = bridge.machinecode(sharedObject);
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

function createMS({ argwidth, argnumin, argnumout, chunksize, bounds, symbolname }: ret, libcheckfunctionFile: string): Measuresuite {
  return new Measuresuite(argwidth, argnumin, argnumout, chunksize, bounds, libcheckfunctionFile, symbolname);
}

export function init(tmpDir: string, args: neededArgs): Measuresuite {

  const mapping: {
    [bridge: string]: { availableMethods: string[]; generatorFunction: (soFile: string, args: neededArgs) => ret };
  } = {
    fiat: { availableMethods: AVAILABLE_FIAT_METHODS, generatorFunction: initFiat },
    manual: { availableMethods: [], generatorFunction: initManual },
    "bitcoin-core": { availableMethods: AVAILABLE_BITCOIN_METHODS, generatorFunction: initBitcoinCore },
  };

  const sharedObject = genLibcheckfunctionFullFilepath(tmpDir, args);

  if (args.bridge) {

    if (!(args.bridge in mapping)) {
      throw new Error("Bridge is specified, but not valid.");
    }

    if (args.bridge === "manual") {
      const common = mapping[args.bridge].generatorFunction(sharedObject, args);
      return createMS(common, sharedObject);
    }

    const { generatorFunction: gen, availableMethods } = mapping[args.bridge];

    if (availableMethods.includes(args.method)) {
      const common = gen(sharedObject, args);
      return createMS(common, sharedObject);
    }
    throw new Error("Could not find  specified method in specified Bridge.");

  } else {
    const found = BRIDGES.find((bridge) => mapping[bridge].availableMethods.includes(args.method));
    if (found) {
      const common = mapping[found].generatorFunction(sharedObject, args);
      return createMS(common, sharedObject);
    } else {
      throw new Error("Could not find Bridge for specified method.");
    }
  }
}
