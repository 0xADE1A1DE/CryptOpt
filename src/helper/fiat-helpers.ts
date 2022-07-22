// get the operations/dataypes with this helper cmd
// grep operation -r *.json |tr -s '[[:space:]]' |  cut -d":" -f 3 | sed -e 's/,/|/' |sort |uniq
import { groupBy } from "lodash";

import { matchArg, matchIMM, assertStringArguments, assertStringNames, isNotNoU, isXD } from "@/helper";
import { Paul } from "@/paul";
import {
  CHAINABLE_OPS,
  IMM_MUL_DI_MAP,
  LSB_MAPPING,
  TEMP_VAR_END_NUM,
  TEMP_VAR_START_NUM,
} from "./constants";
import {
  Fiat,
  CryptOpt,
  Flags,
  C_DI_HANDLE_FLAGS_KK,
  C_DI_INSTRUCTION_AND,
  DECISION_IDENTIFIER,
  C_DI_IMM,
} from "@/types";

function isConstArgument(ins: Fiat.Argument): ins is Fiat.ConstArgument {
  return typeof ins === "string";
}

function isDynArgument(ins: Fiat.Argument): ins is Fiat.DynArgument {
  return typeof ins !== "string";
}

export function preprocessFunction(func: Fiat.FiatFunction): CryptOpt.Function {
  // to init a new cache everytime
  delete flattenHierarchicals.prototype.cacheCalc;
  delete flattenHierarchicals.prototype.cache;
  const halfProcessed = func.body
    .map(reduceStaticCast)
    .map(fillDatatypeFromParameters)
    .map(reduce128bitShiftCombination)
    .map(reduceChainable)
    .map(flattenHierarchicals) as Fiat.DynArgument[];

  // append all the intermediate values
  halfProcessed.unshift(...flattenHierarchicals.prototype.cacheCalc);

  // inline unnecessary assignment from xN = argX[n]
  const threeQuartersProcessed = inlineArgN(halfProcessed);

  // inline unnecessary multiple mul-imms. x2=arg1[1] *2; x3=x2*2 -> x3=arg1[1]*4
  const fourFifthProcessed = mergeMulImm(threeQuartersProcessed);

  // filter out the operations, which are creating variables, which are not used. The only ones allowed to be 'unused' are matchArg i.e. out1[1]
  const fiveSixthProcessed = filterDeadOps(fourFifthProcessed);

  // and add decisionsproperties where due
  const body = fiveSixthProcessed.map(addDecisionProperty) as CryptOpt.StringInstruction[]; // decisionsproperty should be added last.

  // types
  body.forEach(assertStringArguments);
  body.forEach(assertStringNames);
  return {
    body,
    operation: func.operation,
    arguments: func.arguments,
    returns: func.returns,
  };
}

function reduceStaticCast(arg: Fiat.Argument): Fiat.Argument {
  if (isConstArgument(arg)) {
    return arg;
  }
  arg.arguments = arg.arguments.map(reduceStaticCast);
  if (arg.operation !== "static_cast") {
    return arg;
  }
  // console.log("reducing this", JSON.stringify(arg));
  // reduce the static_cast arg.arguments[0]
  const child = arg.arguments[0];
  if (!isDynArgument(child) && arg.name.length === 1 && arg.arguments.length === 1) {
    arg.operation = "=";
    // no need to check recursive, cince its an out1[0]/x1=static_cast(xN/arg1[1])
    return arg;
  }

  if (arg.name.length === 0) {
    // means current arg is anonymous, we can just replace it.
    return reduceStaticCast(child);
  }
  // if its an top-level cast(i.e. x1 = static_cast(arg[0])), reduce up by merging op and args.
  if (!isDynArgument(child)) {
    throw new Error(
      "unsupported, to reduce cast, when the cast is only from a string to another _NAMED_ variable. C style would be u1 x=(u1)y;",
    );
  }
  arg.operation = child.operation;
  arg.arguments = child.arguments;
  return reduceStaticCast(arg);
}

function addDecisionProperty(arg: Fiat.Argument): CryptOpt.Argument {
  if (!isDynArgument(arg)) {
    return arg;
  }
  // cannot use assertStringArguments because we only have Fiat.Argument
  if (arg.arguments.length == 0 || arg.arguments.some((a) => typeof a !== "string")) {
    throw new Error(
      ` ${JSON.stringify(arg)} was used with hierarchical arguments. This is not yet supported`,
    );
  }

  const result: CryptOpt.DynArgument = Object.assign({}, arg, {
    decisions: {
      [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [Paul.chooseBetween(arg.arguments.length), arg.arguments],
    },
    decisionsHot: [] as string[],
  }) as CryptOpt.DynArgument;

  switch (result.operation) {
    case "*":
      const immFactor = arg.arguments[1];
      if (!isDynArgument(immFactor) && immFactor in IMM_MUL_DI_MAP) {
        const choices = IMM_MUL_DI_MAP[immFactor as CryptOpt.HexConstant];
        result.decisions[DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM] = [
          Paul.chooseBetween(choices.length),
          [...choices],
        ];
      }
      break;
    case "+":
    case "addcarryx":
      result.decisions[DECISION_IDENTIFIER.DI_FLAG] = [Paul.chooseBetween(2), [Flags.CF, Flags.OF]];
      result.decisions[DECISION_IDENTIFIER.DI_HANDLE_FLAGS_KK] = [
        Paul.chooseBetween(3), // the length is the lengh of the choises
        [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
      ];
      result.decisions[DECISION_IDENTIFIER.DI_CHOOSE_IMM] = [
        Paul.chooseBetween(2),
        [C_DI_IMM.ZERO, C_DI_IMM.NEG_1],
      ];
      break;
    case "&":
      const constantToAndWith = arg.arguments[1];
      if (!isDynArgument(constantToAndWith) && LSB_MAPPING[constantToAndWith])
        // only add this decision if we can actually use BZHI. Sometimes the constant is of the form /0xf+0+/, where bzhi doesnt work.
        result.decisions[DECISION_IDENTIFIER.DI_INSTRUCTION_AND] = [
          Paul.chooseBetween(2),
          [C_DI_INSTRUCTION_AND.C_AND, C_DI_INSTRUCTION_AND.C_BZHI],
        ];
      break;
  }

  return result;
}

type FiatArgWSHRD = Omit<Fiat.Argument, "operation"> & { operation: CryptOpt.Operation_T };
function reduce128bitShiftCombination(arg: Fiat.Argument): Fiat.Argument {
  if (isConstArgument(arg)) {
    return arg;
  } // converts
  // x47 = ((x43 >> 51) | ((x45 << 13) & UINT64_C(0xffffffffffffffff)));
  // into x46 = shrd(x43, x45, 51). IFF the shiftamounts and CONST AND
  // amounts fit according to shiftAmountTableByDataType below

  const shiftAmountTableByDataType: {
    [k in CryptOpt.Datatype_T]?: {
      sumConstant: number;
      andConstant: string;
    };
  } = {
    u64: {
      sumConstant: 64, // must be the sum of << offset and >> offset
      andConstant: "0xffffffffffffffff",
    },
  };

  const shiftConstants = shiftAmountTableByDataType[arg.datatype];
  if (shiftConstants && arg.name.length === 1 && arg.operation === "|" && arg.arguments.length === 2) {
    // we have a named | operation
    const [or1, or2] = arg.arguments;
    if (
      typeof or1 !== "string" &&
      typeof or2 !== "string" &&
      // between an >> and an & object
      or1.operation === ">>" &&
      or2.operation === "&"
    ) {
      const [shr1, shr2] = or1.arguments;
      const [and1, and2] = or2.arguments;
      if (
        // check >>
        typeof shr1 === "string" &&
        typeof shr2 === "string" &&
        // check &
        typeof and1 !== "string" &&
        and1.operation === "<<" &&
        and2 === shiftConstants.andConstant.toString()
      ) {
        const [shl1, shl2] = and1.arguments;
        if (
          // check <<
          typeof shl1 === "string" &&
          Number(shl2) + Number(shr2) === // 57 + 7; 58 + 6; 51 + 13
            shiftConstants.sumConstant // 64
        ) {
          (arg as FiatArgWSHRD).operation = "shrd"; // a little bit of a cheat here. But for the sake of brevity of all the other code we cheat
          arg.arguments = [shr1, shl1, shr2];
        }
      }
    }
  }
  return arg;
}

function reduceChainable(arg: Fiat.Argument): Fiat.Argument {
  // if its a chainable operation
  if (typeof arg !== "string" && CHAINABLE_OPS.includes(arg.operation)) {
    // try to reduce arguments
    arg.arguments = arg.arguments.reduce((prev, currentArgument) => {
      // check if the child arguments may be recuded as well.
      if (typeof currentArgument !== "string" && currentArgument.operation === arg.operation) {
        // then recursively reduce
        prev.push(...currentArgument.arguments.map(reduceChainable));
      } else {
        // or if not, just return itself. aka: Recursion Terminatiuon
        prev.push(currentArgument);
      }
      return prev;
    }, [] as Fiat.Argument[]);
  }
  return arg;
}

// returns a string, x10000 iff arg.name is empty, otherwise an object.
function flattenHierarchicals(arg: Fiat.Argument): Fiat.Argument {
  const tempName = (_arg: Fiat.Argument): string =>
    typeof _arg === "string" ? _arg : _arg.arguments.join(`--${_arg.operation}--`);
  if (!flattenHierarchicals.prototype.cache) {
    flattenHierarchicals.prototype.cache = {} as { [k: string]: string }; // joined args mapping to xDD;
    flattenHierarchicals.prototype.cacheCalc = [] as Fiat.Argument[];
    // e.g. {["arg2[4]--*--0x13"]:'x10000'}
    flattenHierarchicals.prototype.current = TEMP_VAR_START_NUM;
  }

  // if its a flattenable arg
  if (isDynArgument(arg)) {
    //if we need to work recursively
    if (arg.arguments.some(isDynArgument)) {
      arg.arguments = arg.arguments.map(flattenHierarchicals);
    }
    // now we only have string args.
    if (arg.name.length > 0) {
      return arg;
    }
    const t = tempName(arg);
    if (t in flattenHierarchicals.prototype.cache) {
      return flattenHierarchicals.prototype.cache[t] as Fiat.Argument;
    }
    const name: Fiat.ConstArgument = `x${flattenHierarchicals.prototype.current}`;
    flattenHierarchicals.prototype.current++;
    if (flattenHierarchicals.prototype.current > TEMP_VAR_END_NUM) {
      throw new Error("reached temp var end.");
    }

    const temp: Fiat.DynArgument = {
      name: [name],
      arguments: arg.arguments, // which are strings
      operation: arg.operation,
      datatype: arg.datatype,
    };
    flattenHierarchicals.prototype.cacheCalc.push(temp);
    flattenHierarchicals.prototype.cache[t] = name;
    return name;
  }
  return arg;
}

function fillDatatypeFromParameters(arg: Fiat.Argument): Fiat.Argument {
  if (isConstArgument(arg)) {
    return arg;
  }
  if (arg.datatype === "(auto)" && isNotNoU(arg.parameters?.size)) {
    if (arg.parameters!.size !== 64) {
      throw new Error("unsupported size.");
    }
    arg.datatype = "u64";
    delete arg.parameters;
  }
  return arg;
}

//** will alter array/ **
function inlineArgN(args: Fiat.DynArgument[]): Fiat.DynArgument[] {
  // find all xN = argNn operations and remove them from the array
  const grouped = groupBy(
    args,
    (a) =>
      a.operation === "=" &&
      a.name.length === 1 &&
      isXD(a.name[0]) &&
      a.arguments.length === 1 &&
      isConstArgument(a.arguments[0]),
  );
  // for all those mov Ops
  grouped.true?.forEach((movOperation) => {
    // we go through all the Other operations
    grouped.false.forEach((other) => {
      // and map their arguments
      other.arguments = other.arguments.map((arg) =>
        // to "if its the name  of the mov" then "mov.arg[0]"
        arg === movOperation.name[0] ? movOperation.arguments[0] : arg,
      );
    });
  });
  return grouped.false;
}

//** will alter array/ **
// inline unnecessary multiple mul-imms. x2=arg1[1] *2; x3=x2*2 -> x3=arg1[1]*4
function mergeMulImm(args: Fiat.DynArgument[]): Fiat.DynArgument[] {
  //find all mul _ Hex

  const { mulImms, others } = groupBy(args, (a) =>
    a.operation === "*" &&
    a.name.length === 1 &&
    a.arguments.length === 2 &&
    isConstArgument(a.arguments[0]) &&
    isConstArgument(a.arguments[1]) &&
    matchIMM(a.arguments[1])
      ? "mulImms"
      : "others",
  );
  let altered: boolean;
  if (!mulImms) {
    return others;
  }

  do {
    altered = false;
    mulImms.forEach((mulImm, _, arr) => {
      // running example x2=arg1[1] *2; x3=x2*2 -> x3=arg1[1]*4

      // find an x2
      const n = arr.find((m) => m.name[0] === mulImm.arguments[0]);
      if (n) {
        // x3.arguments[0]=arg1[1]
        mulImm.arguments[0] = n.arguments[0];
        // x3.arguments[1] = both imms multiplied '0x4'
        const product = Number(mulImm.arguments[1]) * Number(n.arguments[1]);
        mulImm.arguments[1] = `0x${product.toString(16)}`;
        altered = true;
      }
    });
  } while (altered);

  return (others ?? []).concat(mulImms);
}
function filterDeadOps(args: Fiat.DynArgument[]): Fiat.DynArgument[] {
  return args.filter((n, _, arr) =>
    arr.some(
      (a) =>
        matchArg(n.name[0]) || // like out1[0]
        (n.name[1] && a.arguments.includes(n.name[1] as Fiat.ConstArgument)) ||
        a.arguments.includes(n.name[0] as Fiat.ConstArgument),
    ),
  );
}
