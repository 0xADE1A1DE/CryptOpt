import { Fiat } from "@/bridge/fiat-bridge";
import { C_DI_HANDLE_FLAGS_KK, C_DI_MULTIPLICATION_IMM, DECISION_IDENTIFIER, Flags } from "@types";

export namespace CryptOpt {
  export type Operation_T =
    | Fiat.Operation
    // | "-" // name = arguments[0] - arguments[1] - arguments[2]
    // | "<<" // name = arguments[0] >> arguments [1]
    // | ">>" // name = arguments[0] >> arguments [1] (logical shift right)
    | "sar" // arithmetic shift right
    | "shrd" // name = arguments[0], arguments [1] >> arguments [2]; shift arg0 arg2-bits to the right, filling up with bits from arg1
    | "ror"
    | "^" //xor
    | "limb" // only available on u128 variables. selects limb arguments[1] form arguments[0] (x2=limb(x1, 1) with x1 a u128, with assign x2 the high limb from x1;
    | "cmp"
    | "zext";
  // grep operation -r *.json |tr -s '[[:space:]]' |  cut -d":" -f 3 | sed -e 's/,/|/' |sort |uniq

  export type Datatype_T = Fiat.Datatype;
  export type VarnameL = `${Fiat.VarName}_${number}`; // limb
  export type VarnameNL = Fiat.VarName; // no-limb
  export type Varname = VarnameL | VarnameNL; // either
  export type HexConstant = Fiat.HexConstant | `-${Fiat.HexConstant}`; // 0x{string} or -0x{string}
  export type ConstArgument =
    | Exclude<Fiat.ConstArgument, Fiat.HexConstant | Fiat.VarName>
    | HexConstant //-0xabc, 0xabe
    | Varname; // extends Fiat Types to x1_1
  export type Argument = ConstArgument | DynArgument;

  /**
   *
   * This is more specific, using tuples rather than arrays.
   */
  export type DynArgumentName =
    | []
    | [Fiat.OutVarName] // out1[0]
    | [Fiat.OutName] // out1 (used in addcarryx)
    | [Varname] // x1
    | [Varname | "_", Varname] // x1, x2 and _, x2 for the case one does not care about HI limb
    | [Varname, "_"]; //  x2, _ for the case one does not care about LO limb /** cant combine them to avoid "_","_" which does not make sense.
  export interface DynArgument extends Omit<Fiat.DynArgument, "operation" | "arguments" | "name"> {
    name: DynArgumentName;
    operation: Operation_T;
    arguments: Argument[];
    decisions: {
      [DECISION_IDENTIFIER.DI_FLAG]?: [number, Flags[]];
      [DECISION_IDENTIFIER.DI_HANDLE_FLAGS_KK]?: [number, C_DI_HANDLE_FLAGS_KK[]];
      [DECISION_IDENTIFIER.DI_CHOOSE_ARG]?: [number, string[]]; // probably len 2 or three (rdx or add(a,b,c))
      [DECISION_IDENTIFIER.DI_CHOOSE_IMM]?: [number, string[]]; // probably len 2 ["0x0", "-0x1"]
      [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]?: [number, C_DI_MULTIPLICATION_IMM[]]; //
      [DECISION_IDENTIFIER.DI_INSTRUCTION_AND]?: [number, string[]]; // probably len 2  bzhi / and
    };
    decisionsHot: string[];
  }

  export type Function = Omit<Fiat.FiatFunction, "body"> & { body: StringInstruction[] };

  export interface StaticCastInstruction extends DynArgument {
    name: [];
    operation: "static_cast";
    arguments: Argument[];
  }

  export interface ArgumentWithStringArguments extends DynArgument {
    arguments: ConstArgument[];
  }

  /**
   * This is more specific, using tuples rather than arrays.
   * Also it narrows down to not use empty arrays
   */
  export interface ArgumentWithStringNames extends DynArgument {
    name: Exclude<DynArgument["name"], []>;
  }

  export interface StringInstruction
    extends Omit<ArgumentWithStringNames, "arguments">,
      Omit<ArgumentWithStringArguments, "name"> {}
}
