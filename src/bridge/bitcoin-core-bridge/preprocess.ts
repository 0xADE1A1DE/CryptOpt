import { groupBy } from "lodash";

import type { StructName, SSA, raw_T, structDef_T } from "./raw.type";
import type { CryptOpt } from "@/types";
import type { Fiat } from "@fb/fiat.types";

import { isStructPointer, getArguments } from "./helpers";
import {
  transformAdd,
  transformAnd,
  transformAshr,
  transformIcmp,
  transformLshr,
  transformMul,
  transformOr,
  transformXor,
  transformShl,
  transformTrunc,
  transformZext,
} from "./transformations";
import { zextR } from "./transformations/reducers";
import { matchArgPrefix } from "@/helpers";
// type fixedArgs = Omit<raw_T, "arguments"> & { arguments: Fiat.FuncArgument };

type A = Fiat.FiatFunction["arguments"][number];
type R = Fiat.FiatFunction["returns"][number];
type B = Fiat.FiatFunction["body"];
export class BCBPreprocessor {
  public constructor(private structDef: structDef_T[]) {}

  public preprocessRaw(raw: Readonly<raw_T>): Fiat.FiatFunction {
    console.log(`BCB: preprocessRaw'ing ${raw.operation}`);
    let { args, returns, body } = this.fixArguments(raw);

    const grouped = groupBy(raw.body, "operation");

    if (!["getelementptr", "store", "load"].every((k) => grouped.hasOwnProperty(k))) {
      throw new Error("not all required keys are available. tsnh.");
    }
    const { stores, loads } = this.reduceStoreAndLoads(
      grouped as unknown as { getelementptr: SSA[]; load: SSA[]; store: SSA[] },
      body,
    );
    // from now on, we should not need them anymore
    delete grouped.getelementptr;
    delete grouped.store;
    delete grouped.load;

    const otherInstrs = Object.entries({
      add: transformAdd,
      and: transformAnd,
      ashr: transformAshr,
      lshr: transformLshr,
      mul: transformMul,
      or: transformOr,
      xor: transformXor,
      shl: transformShl,
      trunc: transformTrunc,
      zext: transformZext,
      icmp: transformIcmp,
    }).reduce((acc, [op, func]) => {
      if (grouped[op]) {
        acc.push(
          ...grouped[op].map((i) => {
            try {
              return func(i);
            } catch (e) {
              console.error(JSON.stringify(i));
              throw e;
            }
          }),
        );
      }
      return acc;
    }, [] as CryptOpt.Argument[]);

    delete grouped.or;
    delete grouped.and;
    delete grouped.shl;
    delete grouped.lshr;
    delete grouped.ashr;
    delete grouped.add;
    delete grouped.mul;
    delete grouped.zext;
    delete grouped.trunc;
    delete grouped.icmp;

    body = body.concat(stores as any, loads as any, otherInstrs as any);

    body = zextR(body);

    // fix up the x1=arg1 statements (we need them to resolve them, but not anymore)
    body = body.filter(
      (o) =>
        !(o.arguments.length === 1 && typeof o.arguments[0] === "string" && matchArgPrefix(o.arguments[0])),
    );
    return {
      operation: raw.operation,
      arguments: args,
      returns,
      body: body as any,
    };
  }

  /**
   * this one will find all the getelementptr and load-operations and reduces them into Fiat.Instructions.
   * such that x14 = arg1[2]; and then x14 is used later on in the rawBody.
   * @returns those assignments
   * */
  private reduceStoreAndLoads(
    grouped: Readonly<{ getelementptr: SSA[]; load: SSA[]; store: SSA[] }>,
    currentBody: Fiat.DynArgument[],
  ): { stores: Fiat.Argument[]; loads: Fiat.Argument[] } {
    // getelementptr name=x5; arguments: ", i64* x1, i64 2"
    // x5 = x1 + 2, with 2 being the imm 'i64 2'
    //
    // load name=x5; arguments: ", i64* x1, align 8, !tbaa !5",
    // x5 = x1[0]

    // so to reduce those, we want to get all the 'loads', check the first element of args
    // must be of type i64*. then check the name X, if that is an getelementptr-op.
    // if yes, extract the arg B and offset n and replace all occurrence of X with B[n]
    const resolveElementPtr = (needle: string): string => {
      const elementPointer = grouped.getelementptr.find(({ name }) => name[0] == needle);
      let offset: string = "0"; // the '2' in the example x5=x1+2

      if (elementPointer) {
        const { pointers, imm } = getArguments(elementPointer.arguments);
        const i = imm.pop()?.imm;
        if (typeof i === "undefined") {
          throw new Error(
            "TSNH. an elementPointer 'must' have an imm. But here we clearly see, that it does not... Hmm...",
          );
        }
        offset = i;
        if (imm.some(({ imm }) => imm !== "0")) {
          throw new Error(
            "unsupported. for structs, we currently support only non-nested ones. And they have imm=0 for all of them. but here not all are 0. I don't know how to handle that.",
          );
        }
        // check if the name is part of the known structs.

        const p = pointers[0];

        if (
          isStructPointer(p.type) &&
          !this.structDef.map(({ name }) => name).includes(p.type.split("*")[0] as StructName)
        ) {
          throw new Error("unknown struct pointer");
        }

        needle = p.id; // x0
      }
      // because I know, currently all getelementptr s are from input, I don't bother checking recursively
      const es2 = currentBody.find(({ name }) => name[0] == needle);
      if (es2?.arguments.length !== 1 || typeof es2.arguments[0] !== "string") {
        debugger;
        throw Error(
          `could not find expected base with one argument. TSNH.${JSON.stringify({ es2, needle })}`,
        );
      }
      needle = es2.arguments[0]; // is now something like arg1
      return `${needle}[${offset}]`;
    };

    const loads = grouped.load.map((l) => {
      const { pointers } = getArguments(l.arguments);
      if (l.datatype != "i64") {
        throw Error("unsupported  yet.");
      }
      // now find the identifier in the getelementptrs
      const a = resolveElementPtr(pointers[0].id);
      return {
        name: l.name,
        datatype: "u64",
        operation: "=",
        arguments: [a],
      } as Fiat.Argument;
    });
    // now lets to the stores.
    // the stores have one string argument 'i64* x1, i64 x2', that means, *x1=x2
    const stores = grouped.store.reduce((acc, s) => {
      if (s.datatype != "i64") {
        throw Error("unsupported  yet.");
      }
      const { pointers, scalars } = getArguments(s.arguments);
      const currentOutNn = resolveElementPtr(pointers[0].id); // e.g. out1[0]
      const currentXn = scalars[0].id; // e.g. x236

      const assignOperation = {
        name: [currentOutNn],
        datatype: "u64",
        operation: "=",
        arguments: [currentXn],
      } as Fiat.DynArgument;

      // the problem is, that (in bcb-sccalar-reduce) we have
      // out1[0]=  x236
      // ...
      // out1[0]=  x284
      // // why? dunno.
      // Fix:
      let indexOfStoreToSameMemory = acc.findIndex(({ name }) => name[0] == currentOutNn);
      // if there is no =-operation to this name
      // i.e. this particular 'out1[n]' has not been written before
      if (indexOfStoreToSameMemory === -1) {
        // append to the end, i.e.
        indexOfStoreToSameMemory = acc.length;
        acc.push(assignOperation);
        return acc;
      }
      // else, it has been written.
      // Then, we want to check, if the current one, has 'later' values. aka the N of xN is larger
      const old_xN = acc[indexOfStoreToSameMemory].arguments[0] as Fiat.VarName;
      if (Number(old_xN.split("x")[1]) > Number(currentOutNn.split("x")[1])) {
        // old is bigger, we can just ditch this current one
        // i.e.
        return acc;
      }
      // else, we will replace
      acc.splice(indexOfStoreToSameMemory, 1, assignOperation);
      return acc;
    }, [] as Fiat.DynArgument[]);
    return { stores, loads };
  }

  private fixArguments(raw: Readonly<raw_T>): {
    args: A[];
    returns: R[];
    body: B;
  } {
    const UNUSED_MODIFIERS = ["nocapture", "noalias", "readonly"];
    // transform the arguments
    const args_ND = raw.arguments[0]
      .split(",")
      .filter((a) => a.length > 0)
      .map((s) => s.replace(new RegExp(UNUSED_MODIFIERS.join("|"), "g"), "")) // remove unused Modifiers
      .flatMap((s) => {
        const { pointers, scalars } = getArguments(s);
        return [...pointers, ...scalars];
      })
      .map((g) => ({
        name: g.id,
        datatype: g.type,
      }));

    // now rename them, make x0, x1, ..xN to out1, arg1, ... argN and add the required =-operations to the body
    const body = [] as Fiat.DynArgument[];
    // check (in order to prevent bugs later on)
    const args: A[] = args_ND.reduce((acc, arg, i) => {
      // +1 because returns[0] is x0, here, we want the arguments x1 to match arg1
      const expectedXdd = `x${i + 1}` as Fiat.VarName;
      const desiredArgN = `arg${i + 1}` as Fiat.ArgName;
      if (arg.name == expectedXdd) {
        body.push({
          name: [expectedXdd],
          datatype: "u64", // yes, 'arg1' it self is a u64
          operation: "=",
          arguments: [desiredArgN],
        });
        acc.push({
          name: desiredArgN,
          datatype: "u64[0]", // for now, maybe we got to check if arg.datatype is in this.structDef
          lbound: [],
          ubound: [],
        });
      }
      return acc;
    }, [] as A[]);

    const returns = [] as R[];
    // now here we a have the thing that we use x0 as our tmp-variable.
    if (raw.returns[0].name == "x0") {
      returns.push({
        name: "out1",
        datatype: "u64[0]",
        lbound: [],
        ubound: [],
      });
      body.push({
        name: ["x0"],
        datatype: "u64",
        operation: "=",
        arguments: ["out1"] as any,
      });
    }
    return {
      args,
      body,
      returns,
    };
  }
}
