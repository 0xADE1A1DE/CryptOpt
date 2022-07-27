import { Measuresuite } from "measuresuite";

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

const genLibcheckfunctionsSuff = (args: { seed: number; curve: string; method?: string }) =>
  `s${args.seed}-p${process.pid}-c${args.curve}${args.method ? "-m" : ""}${args.method ?? ""}`;
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

function initFiat(args: neededArgs): ret {
  const fiat = FiatBridge.getFiatFunction(args.curve, args.method);
  const json = preprocessFunction(fiat);
  console.log(`fiat body.len: ${fiat.body.length} + after${json.body.length}`);
  Model.init({
    curve: args.curve,
    json,
  });
  Measuresuite.libcheckfunctionssuffix = genLibcheckfunctionsSuff(args);
  const symbolname = FiatBridge.machinecode(args.curve, args.method, Measuresuite.libcheckfunctionsFilename);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = FiatBridge.argwidth(args.curve);
  const argnumin = FiatBridge.argnumin(args.method);
  const argnumout = FiatBridge.argnumout(args.method);

  const bounds = CURVE_DETAILS[args.curve].bounds;
  return { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
}

function initBitcoinCore(args: neededArgs): ret {
  const bitcoinCoreBridge = new BitcoinCoreBridge();
  Model.init({
    curve: args.curve,
    json: bitcoinCoreBridge.getCryptOptFunction(args.method),
  });
  Measuresuite.libcheckfunctionssuffix = genLibcheckfunctionsSuff(args);
  const symbolname = bitcoinCoreBridge.machinecode(args.method, Measuresuite.libcheckfunctionsFilename);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = bitcoinCoreBridge.argwidth(args.curve, args.method);
  const argnumin = bitcoinCoreBridge.argnumin(args.method);
  const argnumout = bitcoinCoreBridge.argnumout(args.method);

  const bounds = bitcoinCoreBridge.bounds(args.curve, args.method);
  return { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
}

function initManual(args: neededArgs): ret {
  if (!args.jsonFile || !args.cFile) {
    throw new Error(
      "cannot use manual-brige w/o a bridgefile...  Where should I get my Information from, huh?",
    );
  }
  const bridge = new ManualBridge(args.jsonFile, args.cFile);
  // manual
  Model.init({
    curve: "",
    json: bridge.getCryptOptFunction(),
  });
  Measuresuite.libcheckfunctionssuffix = genLibcheckfunctionsSuff(args);
  const symbolname = bridge.machinecode(Measuresuite.libcheckfunctionsFilename);
  const chunksize = 16; // only for reading the chunk breaks atm. see MS code
  const argwidth = bridge.argwidth();
  const argnumin = bridge.argnumin();
  const argnumout = bridge.argnumout();
  //  bounds:    ["0x0000 3000 0000 0000",
  //  &            0x0000 1fff ffff ffff
  const bounds = ["0x0000 0000 0000 ffff"]
    .concat(
      Array(argwidth - 1)
        //     0x0000 0fff ffff ffff
        //    "0x0000 1800 0000 0000"],
        .fill("0x0000 0000 0000 ffff"),
    )
    .map((s) => s.replaceAll(" ", ""));

  const res = { symbolname, chunksize, argwidth, argnumin, argnumout, bounds };
  // console.info(res);
  return res;
}

function createMS({ argwidth, argnumin, argnumout, chunksize, bounds, symbolname }: ret): Measuresuite {
  return new Measuresuite(argwidth, argnumin, argnumout, chunksize, bounds, symbolname);
}
export function init(args: neededArgs): Measuresuite {
  const mapping: {
    [bridge: string]: { availableMethods: string[]; gen: (args: neededArgs) => ret };
  } = {
    fiat: { availableMethods: AVAILABLE_FIAT_METHODS, gen: initFiat },
    manual: { availableMethods: [], gen: initManual },
    "bitcoin-core": { availableMethods: AVAILABLE_BITCOIN_METHODS, gen: initBitcoinCore },
  };

  if (args.bridge) {
    if (!(args.bridge in mapping)) {
      throw new Error("Bridge is specified, but not valid.");
    }
    if (args.bridge === "manual") {
      return createMS(mapping[args.bridge].gen(args));
    }
    const { gen, availableMethods } = mapping[args.bridge];
    if (availableMethods.includes(args.method)) {
      return createMS(gen(args));
    }
    throw new Error("Could not find  specified method in specified Bridge.");
  } else {
    const found = BRIDGES.find((bridge) => mapping[bridge].availableMethods.includes(args.method));
    if (found) {
      return createMS(mapping[found].gen(args));
    } else {
      throw new Error("Could not find Bridge for specified method.");
    }
  }
}
