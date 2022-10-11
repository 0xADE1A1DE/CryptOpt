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

import { uniq } from "lodash-es";

import {
  AllocationFlags,
  ByteRegister,
  C_DI_IMM,
  C_DI_SPILL_LOCATION,
  Flags,
  FlagState,
  Register,
  XmmRegister,
} from "@/enums";
import {
  ALL_XMM_REGISTERS,
  CALLER_SAVE_PREFIX,
  CALLER_SAVE_REGISTERS,
  CALLING_CONVENTION_REGISTER_ORDER,
  IMM_VAL_PREFIX,
  LSB_MAPPING,
  SETX,
  TEMP_VARNAME,
} from "@/helper/constants";
import {
  delimbify,
  isByteRegister,
  isCallerSave,
  isFlag,
  isImm,
  isMem,
  isRegister,
  isU1,
  isU64,
  isXD,
  isXmmRegister,
  limbify,
  limbifyImm,
  matchArg,
  matchArgPrefix,
  matchMem,
  matchXD,
  setToString,
  toImm,
  toMem,
  zx,
} from "@/helper/lamdas";
import { getByteRegFromQwReg, getQwRegFromByteReg } from "@/helper/reg-conversion";
import { Model } from "@/model";
import { Paul } from "@/paul";
import type {
  Allocation,
  AllocationReq,
  AllocationRes,
  Allocations,
  asm,
  CryptOpt,
  imm,
  mem,
  PointerAllocation,
  RegisterAllocation,
  U1FlagAllocation,
  ValueAllocation,
} from "@/types";

import { populateClobbers } from "./RegisterAllocator.helper";

function assertValueAllocation(a: Allocation): asserts a is ValueAllocation | PointerAllocation {
  if (a.datatype === "u128") {
    throw new Error(
      `given allocation has datatype u128., which is not allowed for a ValueAllocation. Assertion failed. ${a}`,
    );
  }
}

// produce<T extends ProduceConditions, U extends { [key in keyof T]: any }>(conditions: T, input: any): Promise<U> | U
export class RegisterAllocator {
  private static _instance: RegisterAllocator | null;
  private _preInstructions: asm[] = [];
  private _ALL_REGISTERS: Register[] = [];
  private _allocations: Allocations = {};
  private _stack: { size: number; name: string }[] = [];
  private _clobbers = new Set<string>();
  private _flagState: {
    [f in Flags]: FlagState;
  } = {
    [Flags.CF]: FlagState.KILLED,
    [Flags.OF]: FlagState.KILLED,
  };

  public static getInstance(): RegisterAllocator {
    if (RegisterAllocator._instance) {
      return RegisterAllocator._instance;
    }
    return new RegisterAllocator();
  }
  public static reset(): RegisterAllocator {
    console.log("getting RA instance");
    const ra = RegisterAllocator.getInstance();
    ra._preInstructions = [];
    ra._stack = [];
    ra._allocations = {};
    ra._flagState = {
      [Flags.CF]: FlagState.KILLED,
      [Flags.OF]: FlagState.KILLED,
    };
    ra._ALL_REGISTERS = [Register.rax, Register.r10, Register.r11]
      .concat(...CALLING_CONVENTION_REGISTER_ORDER)
      .concat(...CALLER_SAVE_REGISTERS);
    const _CALLING_CONVENTION_REGISTER_ORDER = [
      ...CALLING_CONVENTION_REGISTER_ORDER, // working copy
    ];
    // this loop initializes the 'allocations'-member field to the arguments which have been passed to the method.
    // Other Registers are considered `empty` and will be overwritten (callersave are pushed / popped to/from stack)
    console.log("setting up args in calling convention to registers");
    Model.methodParametes.map(({ name, datatype }) => {
      const reg = _CALLING_CONVENTION_REGISTER_ORDER.shift();
      if (!reg) {
        throw new Error(
          "Unsupported. there are more registers occupied then specified in the calling convention. Reading Arguments from the stack is not yet implements.",
        );
      }

      ra._allocations[name] = {
        datatype,
        store: reg,
      };
      ra._preInstructions.push(`; ${reg} contains ${name}`);
    });
    console.log("setting up callersaves");
    CALLER_SAVE_REGISTERS.map((register) => {
      ra._allocations[`${CALLER_SAVE_PREFIX}${register}`] = { datatype: "u64", store: register };
    });
    // treat remaining registes are free registers
    ra._ALL_REGISTERS.push(..._CALLING_CONVENTION_REGISTER_ORDER);

    return ra;
  }

  private constructor() {
    RegisterAllocator._instance = this;
    RegisterAllocator.reset();
  }

  /*
   * Will return a register declared to the @param variableName or false, if no FR was available
   */
  public getFreeRegister(variableName: string): Register | false {
    this.addToPreInstructions(this.allocationString());
    const allocatedRegs = this.valuesAllocations
      .map(({ store }) => store)
      .filter((r) => isRegister(r) || isByteRegister(r)) as Array<ByteRegister | Register>;

    const frs = this._ALL_REGISTERS.filter(
      (r) => !(allocatedRegs.includes(r) || allocatedRegs.includes(getByteRegFromQwReg(r))),
    );

    if (frs.length == 0) {
      this.addToPreInstructions(`; fr: none.`);
      return false;
    }

    this.addToPreInstructions(`; fr: ${frs}`);

    const fr = frs[0];
    this._allocations[variableName] = { datatype: "u64", store: fr };
    return fr;
  }

  /*
   * will not persist to _this._allocatons
   */
  private getFreeXmmRegister(): XmmRegister | false {
    this.addToPreInstructions(this.allocationString());
    const allocatedXmms = this.valuesAllocations
      .map(({ store }) => store)
      .filter((r) => isXmmRegister(r)) as XmmRegister[];

    const freeXmms = ALL_XMM_REGISTERS.filter((r) => !allocatedXmms.includes(r));

    if (freeXmms.length == 0) {
      this.addToPreInstructions(`; free xmm's: none`);
      return false;
    }

    this.addToPreInstructions(`; free xmm's: ${freeXmms}`);
    return freeXmms[0];
  }

  private get valuesAllocations(): ValueAllocation[] {
    return Object.values(this._allocations).filter((a) => "store" in a) as ValueAllocation[];
  }

  // Entries of [x5, ValueAllocation]
  private get entriesAllocations(): [string, ValueAllocation][] {
    return Object.entries(this._allocations).filter(([, a]) => "store" in a) as [string, ValueAllocation][];
  }

  /* will issue the instruction to preinst
   * will update this._allocations
   */
  public static xmm2reg({ store }: Pick<ValueAllocation, "store">): RegisterAllocation {
    //   spareVariableName: string;
    //   targetReg: Register;
    //   spillingXmmReg: XmmRegister;
    // }): void {
    return RegisterAllocator.getInstance().moveXmmToReg({ store });
  }
  private moveXmmToReg({ store }: Pick<ValueAllocation, "store">): RegisterAllocation {
    const varname = this.getVarnameFromStore({ store });
    const dest = this.getW(varname);
    this.addToPreInstructions(`movq ${dest}, ${store}; un-xmm-ify ${varname} `);
    return this._allocations[varname] as RegisterAllocation;
  }

  /*
   * checks it byte / qword
   * will issue the instruction to preinst
   * will update this._allocations
   * */
  private movRegToMem({
    spareVariableName,
    targetMem,
    spillingReg,
  }: {
    spareVariableName: string;
    targetMem: mem;
    spillingReg: Register | ByteRegister;
  }): void {
    // TODO: optimize here, if spilling reg was u1, use movzx instead to avoid possible movzx later on when this val is read.
    if (isU1(this._allocations[spareVariableName])) {
      this.addToPreInstructions(
        `mov byte ${targetMem}, ${spillingReg}; spilling byte ${spareVariableName} to mem`,
      );
    } else {
      this.addToPreInstructions(`mov ${targetMem}, ${spillingReg}; spilling ${spareVariableName} to mem`);
    }

    // update the state
    this._allocations[spareVariableName].store = targetMem;
  }

  public getW(name: string): Register | ByteRegister {
    const fr = this.getFreeRegister(name);
    if (fr) {
      return fr;
    }
    const allocationEntries = this.entriesAllocations; // working copy
    // need to reuse other registers.
    // try to find some var, which has no deps anymore
    let spareVariableName = allocationEntries.find(
      ([varname, { store }]) =>
        (isRegister(store) || isByteRegister(store)) &&
        matchXD(varname) &&
        !Model.hasDependants(varname) &&
        !this._clobbers.has(varname),
    )?.[0];

    if (spareVariableName) {
      const valueacc = this._allocations[spareVariableName] as ValueAllocation;
      this.addToPreInstructions(
        `; freeing ${spareVariableName} (${valueacc.store}) no dependants anymore`,
        // `If you dont trust me: here: clobbers: ${ this.clobbers }; allocs: ${JSON.stringify(this.allocations)}`
      );
    } else {
      spareVariableName = Object.keys(this._allocations).find(
        (varname) =>
          varname.startsWith(IMM_VAL_PREFIX) ||
          (["0x0", "0x1"].includes(varname) && !this._clobbers.has(varname)),
      );
      if (spareVariableName) {
        const valuealloc = this._allocations[spareVariableName] as ValueAllocation;
        this.addToPreInstructions(
          `; freeing ${spareVariableName} (${valuealloc.store}, since all are neeed, but this one is just an immediate value.`,
          // `.. so im fine with sparing it. If you dont trust me(rly?): here: clobbers: ${ this.clobbers }; and allocs:${JSON.stringify(this.allocations)}`
        );
      }
    }
    let checkToSpill = false;
    if (!spareVariableName) {
      // there is no useless var right now ->
      // fallback to choose one which is not being used atm and spill them to mem if necessary down below

      // string[] of argN/xNN's which can potentially be spilled
      const allocs = allocationEntries
        // only spill regs. Does not make sense to spill mem to mem.
        .filter(([, { store }]) => isRegister(store) || isByteRegister(store))
        .map(([name]) => name);

      const clobs = new Set<string>();
      this._clobbers.forEach((clob) => {
        clobs.add(clob);
        const match = matchArg(clob);
        if (match) clobs.add(match[1]);
      });

      // try to find some arg1[n] first, i.e. 'not-xNN'
      const candidatesInArguments = allocs.filter(
        (varname) => !clobs.has(varname) && !(matchXD(varname) || matchArgPrefix(varname)),
      );
      if (candidatesInArguments.length > 0) {
        spareVariableName = Model.chooseSpillValue(candidatesInArguments);
      } else {
        //  choose one which is just right now not being used.
        const candidates = allocs.filter((varname) => !clobs.has(varname));
        if (candidates.length == 0) {
          throw new Error("wow... no candidates which are not clobbed.");
        }
        spareVariableName = Model.chooseSpillValue(candidates);
      }
      this.addToPreInstructions(
        [
          `; freeing, i.e. spilling ${spareVariableName}, because I am out of ideas`,
          `; allocs: ${allocs.map((a) => `${a}(${this._allocations[a].store})`).join(" ,")}`,
          `; clobs ${setToString(clobs)}; will spare: ${spareVariableName} `,
        ].join("\n"),
      );

      checkToSpill = true;
    }
    const valuealloc = this._allocations[spareVariableName] as ValueAllocation;
    // find according register
    let spilling_reg = valuealloc.store as Register | ByteRegister;
    if (
      checkToSpill &&
      (matchXD(spareVariableName) || isCallerSave(spareVariableName) || matchArgPrefix(spareVariableName))
    ) {
      const freeXmm = this.getFreeXmmRegister();
      // we cant always spill to xmms

      let choice =
        // first we need a free xmm
        freeXmm &&
        // then we need to be xdd (cuz they are 'nodes', where we can save the decision to)
        matchXD(spareVariableName)
          ? // then we may ask Paul.
            Paul.chooseSpillLocation(Model.operationByName(spareVariableName))
          : // fallback to
            C_DI_SPILL_LOCATION.C_DI_MEM;

      if (choice == C_DI_SPILL_LOCATION.C_DI_MEM) {
        // if its worth to save, save it to mem.
        const { isNew, targetMem } = this._varToMemStr(spareVariableName);
        if (isNew) {
          this.movRegToMem({ targetMem, spareVariableName, spillingReg: spilling_reg });
        } else {
          // only need to update the state, such that subsequent reads read from memory
          this._allocations[spareVariableName].store = targetMem;
        }
      } else {
        // spill to xmm

        // in case we rant to spill dl to xmm4
        if (isByteRegister(spilling_reg)) {
          // we first need to spill movzx rdx, dl, and then movq xmm4, rdx
          const { inst, reg } = zx(spilling_reg);
          this.addToPreInstructions(inst);
          spilling_reg = reg;
        }
        this.addToPreInstructions(
          `movq ${freeXmm}, ${spilling_reg}; spilling ${spareVariableName} to xmm (Paul said so.)`,
        );

        this._allocations[spareVariableName].store = freeXmm as XmmRegister;
      }
    } else {
      // no need to spill (either unused or memory)
      delete this._allocations[spareVariableName];
    }
    if (isByteRegister(spilling_reg)) {
      spilling_reg = getQwRegFromByteReg(spilling_reg);
    }
    this._clobbers.add(name);
    this._allocations[name] = {
      datatype: "u64",
      store: spilling_reg,
    };
    return spilling_reg as Register;
  }

  public loadImmToReg64(readVariable: string): Register {
    // TODO: Should this function check if @param readVariable is
    // already in clobbers and if so, dont return currentLocation.sore?
    this._clobbers.add(readVariable);
    let currentLocation = this._allocations[readVariable];
    if (!currentLocation) {
      if (!isImm(readVariable)) {
        console.debug(this._allocations);
        console.debug(this._currentInst);
        throw new Error(
          `tried to read ${readVariable} from allocations and it is not an immediate, but could not be found.`,
        );
      }
      const imm = toImm(readVariable);

      const r = this.getW(readVariable) as Register;
      this._preInstructions.push(`mov ${r}, ${imm} ; moving imm to reg`);
      return r;
    }
    if (currentLocation.datatype === "u128") {
      throw new Error(`immediate '${readVariable}' is in u128. Not supported athm.`);
    }
    currentLocation = currentLocation as ValueAllocation;
    if (isMem(currentLocation.store)) {
      return this.loadMemoryToReg(currentLocation.store, readVariable, "movzx") as Register;
    }
    return currentLocation.store;
  }

  public allocate(allocationReq: AllocationReq): AllocationRes {
    populateClobbers(this._clobbers, allocationReq);
    if (uniq(allocationReq.in).length != allocationReq.in.length) {
      throw new Error("not supported to in-the same value ");
    }

    // caf is short for "check Allocation Flags" and is a convenience method, to check wether a particular Allocation Flag is set.
    const caf = (flagToCheck: AllocationFlags): boolean =>
      ((allocationReq.allocationFlags ?? AllocationFlags.NONE) & flagToCheck) === flagToCheck;
    const inAllocationsTemp = allocationReq.in.map((readVariable) => {
      const argMatchRes = matchArg(readVariable);
      if (argMatchRes) {
        // if we read from an argument such as arg1[3], we actually want to find arg1 in the allocations.
        const baseVar = argMatchRes.groups && argMatchRes.groups.base;
        if (baseVar) {
          // should never be false though, since it matched above
          readVariable = baseVar;
        } else {
          throw new Error(`${readVariable} matched ~arg, but has no baseVar? wtf. Giving up.`);
        }
      }
      const currentLocation = this._allocations[readVariable];
      if (!currentLocation) {
        // if is it not already allocated, it must be an immval, cause 'arg1' is always somewhere
        if (caf(AllocationFlags.DISALLOW_IMM)) {
          return this.loadImmToReg64(readVariable);
        }
        return readVariable as imm;
      }
      if (currentLocation.datatype === "u128") {
        throw new Error(`U128 is not supported, when reading ${readVariable}`);
      }
      assertValueAllocation(currentLocation);
      const store = currentLocation.store;
      const disMem = caf(AllocationFlags.DISALLOW_MEM);

      if (isFlag(store)) {
        // this makes sure, that even if the current flag has no _OTHER_ deps, it will be spilled.
        Model.hardDependencies.add(readVariable);
        const bytereg = this._spillFlag(readVariable);
        Model.hardDependencies.delete(readVariable);
        if (bytereg === false) {
          throw new Error(`Cannot read a flag which is not alive`);
        } else {
          return bytereg;
        }
      }
      // This little lambda takes a base register which has the address of arg1
      // Then it checks whether it is allowed to just reutrn [breg + 0x8 * offset]
      // or if that needs to be loaded to register as well.
      const handleArgReturnValue = (baseRegister: Register): mem | Register => {
        if (!argMatchRes?.groups?.offset) {
          throw new Error(`cannot calculate memory offset of argument.`);
        }
        const offset = argMatchRes.groups.offset;
        // could be smth. like [ rax + 0x24 ]
        const memory = toMem(offset, baseRegister);
        if (!disMem) {
          // if we can return memory, do it
          return memory;
        }
        // left with the arg1[2] must be in register.
        return this.loadMemoryToReg(
          memory,
          `${readVariable}[${offset}]`, // could also have saved them earlier
        );
      };
      if (isMem(store)) {
        // if we allow memory and we are not requesting a arg1[2], just return the memory
        if (!disMem && !argMatchRes) {
          return store;
        }
        // in any other case we need the readVar in a register.
        const reg = this.loadVarToReg(readVariable, "movzx");
        if (!isRegister(reg)) {
          throw new Error("TSNH. arg/out should always be u64, esp. after movzx'ing it");
        }

        // if we have no arg, we can just return the reg.
        if (disMem && !argMatchRes) {
          return reg;
        }

        // so we are left with args.
        return handleArgReturnValue(reg);
      }
      // only other possiblity is, that the store is a register.
      if (!argMatchRes) {
        // and we can return it, if we are not requesting an argument.
        return store;
      } else {
        return handleArgReturnValue(store);
      }
    });
    // move to reg if necessary
    if (caf(AllocationFlags.DISALLOW_ALL_MEM) && inAllocationsTemp.every((a) => isMem(a))) {
      const r = this.moveOneMemoryToRegister(
        inAllocationsTemp.map((store) => ({ store })),
        "movzx",
      ).map(({ store }) => store);
      // now we need to check, which one has been moved to reg
      // so we want to find the index in inAllocationsTemp, which is not in the result, i.e. has been moved to reg
      const i = inAllocationsTemp.findIndex((s) => !r.includes(s));
      // and now we can splice that into the inAllocationsTemp.
      inAllocationsTemp.splice(i, 1, r[0]);
    }

    // If we have any xmm's, and we shouldn't have,
    if (caf(AllocationFlags.DISALLOW_XMM) && inAllocationsTemp.some((a) => isXmmRegister(a))) {
      // we go though the current allocations
      inAllocationsTemp.forEach((store, i, arr) => {
        // and for each xmm reg
        if (isXmmRegister(store)) {
          // we move it to a reg
          const newReg = this.moveXmmToReg({ store });
          // and splice that info into the register
          arr.splice(i, 1, newReg.store);
        }
      });
    }

    // now we want to make sure, that, if we need, we read all the same sizes.
    const inAllocations = caf(AllocationFlags.SAME_SIZE_READ)
      ? this._unifySizes(inAllocationsTemp)
      : inAllocationsTemp;

    const localFlags = this._flags;
    if (caf(AllocationFlags.SAVE_FLAG_CF)) {
      this.spillFlag(Flags.CF, localFlags.CF);
      if ([TEMP_VARNAME, "_"].includes(localFlags.CF)) {
        console.warn(`well, we may not have needed to save CF${localFlags.CF}`);
      }
    }
    if (caf(AllocationFlags.SAVE_FLAG_OF)) {
      this.spillFlag(Flags.OF, localFlags.OF);
      if ([TEMP_VARNAME, "_"].includes(localFlags.OF)) {
        console.warn(`well, we may not have needed to save OF${localFlags.OF}`);
      }
    }

    if (caf(AllocationFlags.ONE_IN_MUST_BE_IN_RDX) && !inAllocations.includes(Register.rdx)) {
      // since in inAllocations there is no rdx (otherwise we wont be in this branch)
      // we need to move one of inAllocations to rdx

      // suppose inAllocations is ["[rsi + 0x08 * 4]", "rax"]
      // suppose allocation.in is ["arg1[4]"         , "x12"]
      // that'd mean, that
      // _allocations["x12"].store is "rax"
      // _allocations["arg1[4]"].store is "[rsi + 0x08 * 4]"

      // we want now change any of those inAllocations with rdx.

      // Paul chooses an element, which we'll move to rdx.
      const element = Paul.chooseArg(allocationReq.in);
      const idx = allocationReq.in.indexOf(element);
      //TODO: refactor that a lil bit

      // element is x12|arg1[4]
      // idx is 0|1

      // start with the return value to be correct.
      const oldAllocatedStore = inAllocations.splice(idx, 1, Register.rdx)[0];
      // oldAllocatedStore is rax| [rsi + 0x8 * 4]
      if (isFlag(oldAllocatedStore)) {
        throw new Error("unsupported to put a flag into rdx");
      }

      // get varname of value in rdx\
      let isByte = false;
      let dVarname: string | false = false;
      const rdxSpillVarname = this.getVarnameFromStore({ store: Register.rdx }, false);
      const dlSpillVarname = this.getVarnameFromStore({ store: ByteRegister.dl }, false);
      // we want to move element ('x11') from oldAllocatedStore ("rax") to rdx,
      // but in rdx, currently there is {rdx,dl}SpillVarname ('x12')
      if (rdxSpillVarname === "" && dlSpillVarname !== "") {
        // if there is nothing in rdx, but there is something in dl
        isByte = true;
        dVarname = dlSpillVarname;
      } else if (rdxSpillVarname !== "" && dlSpillVarname === "") {
        // if there is nothing in rdx, but there is something in dl
        isByte = false;
        dVarname = rdxSpillVarname;
      } else if (rdxSpillVarname !== "" && dlSpillVarname !== "") {
        throw new Error(
          `there is something in dl:${dlSpillVarname} and in rdx: ${rdxSpillVarname}. TSNH. Abort`,
        );
      } // else, actually rdx is empty

      // next is to fix the _allocations obj.
      // NOTE: we need to create a new obj here, since element could be "arg1[0]",
      // which itself may not be allocated in a register at this point, thus not in this._allocations
      this._allocations[element] = {
        datatype: "u64",
        store: Register.rdx,
      };
      let movInst = "mov";
      if (isXmmRegister(oldAllocatedStore)) movInst = "movq";
      if (isByteRegister(oldAllocatedStore)) movInst = "movzx"; // not using zx() here, because we may want to movzx rdx, r9b

      // now check if rdx can be discarded:
      // which it can,
      if (
        dVarname === false || // if it has been free
        (!isByte && matchArg(rdxSpillVarname)) || // of if it is not a byte and matches an arg: arg1[\d]|out1[\d]
        isImm(dVarname) || // its an Immediate
        !Model.hasDependants(dVarname) // or if it just has no dependencies
      ) {
        this._preInstructions.push(`${movInst} ${Register.rdx}, ${oldAllocatedStore}; ${element} to rdx`);
        // beacuse we are overwriting the value, which used to be in rdx
        // remove the allocation information, if it existed
        dVarname && delete this._allocations[dVarname];
      } else {
        // register rdx was not free, we may need to save the current value.

        // if that old store is a register,
        if (isRegister(oldAllocatedStore)) {
          // we want to swap the values. (swapreg is definetely a r64)
          this.addToPreInstructions(
            `xchg ${Register.rdx}, ${oldAllocatedStore}; ${element}, swapping with ${dVarname}, which is currently in rdx`,
          );
          (this._allocations[dVarname] as ValueAllocation).store = isU1(this._allocations[dVarname])
            ? getByteRegFromQwReg(oldAllocatedStore)
            : oldAllocatedStore;
        }
        // if instead target to be in RDX is currently in memory (such as an arg1[0]) or in an Xmm,
        else if (isMem(oldAllocatedStore) || isXmmRegister(oldAllocatedStore)) {
          this._clobbers.add(dVarname);
          // then we cant use xchg (would would kill mem) or is not defined for xmm
          // instead want to save current rdx in another reg
          let reg = this.getW(dVarname);
          // then fix the allocation, for the case that we are actually only using u1
          if (isByte) {
            reg = getByteRegFromQwReg(reg as Register);
            (this._allocations[dVarname] as ValueAllocation).store = reg;
            this._allocations[dVarname].datatype = "u1";
          }

          const src = isByte ? ByteRegister.dl : Register.rdx;

          this._preInstructions.push(
            `mov ${reg}, ${src}; preserving value of ${dVarname} into a new reg`,
            `${movInst} ${Register.rdx}, ${oldAllocatedStore}; saving ${element} in rdx.`,
          );
        }

        // now for some very rare cases, if in rdx was an argPrefix (can only happen if its not a byte)
        if (!isByte && matchArgPrefix(rdxSpillVarname)) {
          // and in any inAllocations there
          inAllocations.forEach((inAlloc, idx, arr) => {
            // is a memory-access
            const argMatch = matchMem(inAlloc);
            if (
              // using that base ptr, which used to be in rdx
              argMatch?.groups?.base === Register.rdx
            ) {
              // then that in allocation is of the form `[rdx + 0x08 * N]`
              // and since rdx has not another value, we need to change the base
              const newBase = (this._allocations[rdxSpillVarname] as ValueAllocation).store as Register;
              arr[idx] = toMem(Number(argMatch.groups.offset) / 8, newBase);
            }
          });
        }
      }
    }
    let oReg = [] as Register[];
    if (caf(AllocationFlags.DONT_USE_IN_REGS_AS_OUT)) {
      oReg = allocationReq.oReg.map((outReg) => this.getW(outReg)) as Register[];
    } else {
      // if first in needs to be in out (e.g. for sub)
      if (caf(AllocationFlags.IN_0_AS_OUT_REGISTER)) {
        // get names from in[0] and current out-name
        if (matchArg(allocationReq.in[0])) {
          // e.g.: x4 = arg[0]
          oReg.push(this.loadMemoryToReg(inAllocations[0], allocationReq.oReg[0], "movzx") as Register);
        } else {
          const regforoutvarname = this.backupIfVarHasDependencies(
            allocationReq.in[0],
            allocationReq.oReg[0],
          );
          oReg.push(regforoutvarname);
        }
      }
      // check for reusable registes
      // reusable are _registers_ of in, which have no dependants other the the currently
      // calculated value
      const reusable = inAllocations.filter(
        (inA, i) =>
          isRegister(inA) &&
          !this._clobbers.has(this.getVarnameFromStore({ store: inA })) &&
          !Model.hasDependants(allocationReq.in[i]),
      ) as Register[];
      this.addToPreInstructions(`; currently considered reusable: ${reusable.join(", ")}`);
      // now for each protentially reusable register,
      reusable.forEach((r, i) => {
        if (!isRegister(r)) {
          throw new Error(`${r} should be a register. What happend? TSNH`);
        }
        // if less registers are requested, then we are considering to resuse right now,
        const amountOfRegsStillNeeded = allocationReq.oReg.length - oReg.length;
        if (amountOfRegsStillNeeded <= i) {
          // skip those.
          return;
        }
        // register `r` is reusable. in that reg is var `nameReadReusable`.
        const nameReadReusable = allocationReq.in[inAllocations.indexOf(r)];
        // then we will delete that allocation (because its been consumed (ssa notation.))
        delete this._allocations[nameReadReusable];

        // then the name of the requested var.
        const nameWriteReusable = allocationReq.oReg[i];
        // is meant to be allocated.
        // In other words: We say, now var in `r` is called `nameWriteReusable` instead of `nameReadReusable`
        this._allocations[nameWriteReusable] = {
          datatype: "u64",
          store: r,
        };
        // then this will make its way into the out-registers
        oReg.push(r);
      });
      // fill in remaining needed write-spots with fresh regs
      while (oReg.length < allocationReq.oReg.length) {
        oReg.push(this.getW(allocationReq.oReg[oReg.length]) as Register);
      }
    }

    this._preInstructions.push(this.allocationString());

    return {
      oReg,
      in: inAllocations,
    } as AllocationRes;
  }

  /*
   * same as backupIfVarHasDependencies, but gets varname based on store first
   */
  public backupIfStoreHasDependencies(store: Allocation, destinationName: string): Register | ByteRegister {
    assertValueAllocation(store);
    const varname = this.getVarnameFromStore(store);
    return this.backupIfVarHasDependencies(varname, destinationName);
  }

  /*
   * Will also zx if needed, even flags.
   *
   * this will check a given store, if it has dependencies.
   *
   * It will return a Register, which can be destructively used without destroying
   * the value.
   * If it has deps, it will copy it to a new reg, allocated for name "destinationName"
   * this will check a given variableName, if it has dependencies.
   */
  public backupIfVarHasDependencies(inVarname: string, outVarname: string): Register {
    this._clobbers.add(inVarname);
    const deps = new Set<string>();
    const allocation = this._allocations[inVarname];
    if (typeof allocation === "undefined") {
      if (isImm(inVarname)) {
        const store = this.loadImmToReg64(inVarname);
        // because we will overwrite outVarname (since we are in the backup method),
        // we need to delete the imm-reference (as in: this._allocations[0x0]=>{. store})
        // cause the store will shortly not have this value anymore,
        // TODO: maybe we sould give loadImmoReg64 a dedicated out-var for this particular case...
        // usually immtoreg is just being read, but in the case of some cmov's we want a
        // imm somwehere and then cmov amother imm
        delete this._allocations[inVarname];
        if (isByteRegister(store)) {
          throw new Error(`implement handling for byte reg here.`);
        }
        this._allocations[outVarname] = {
          datatype: "u64",
          store,
        };
        return store;
      }
      throw new Error(
        `TSNH. there is no allocation for ${inVarname}. Maybe it has never been calculated (i.e. has been in 'name:[${inVarname},...])`,
      );
    }
    assertValueAllocation(allocation);
    const hasDeps = Model.hasDependants(inVarname, deps);
    if (isFlag(allocation.store)) {
      // so if we have a flag, we need to put it into a reg, but also put it into another reg, if it has other deps as well.
      if (!hasDeps) {
        // if it has no other deps, declare it as outVarname
        const bytereg = this.spillFlag(allocation.store, outVarname);
        if (!bytereg) {
          throw new Error("TSNH. it is a flag but somehow cannot be spilled?");
        }
        const { reg, inst } = zx(bytereg);
        this.addToPreInstructions(`${inst}; spilling a flag to reg cause it has deps `);
        // since we extended the reg manually, we need to update the allocations manually.
        (this._allocations[outVarname] as ValueAllocation).store = reg;
        this._allocations[outVarname].datatype = "u64";
        return reg;
      } else {
        // else, (it has other deps) just spill the flag to a bytereg and continue down
        const bytereg = this.spillFlag(allocation.store);
        if (!bytereg) {
          throw new Error("TSNH. it is a flag but somehow cannot be spilled?");
        }
      }
    }
    this.addToPreInstructions(
      `; to calculate ${outVarname}, ill backup ${inVarname} from (${
        allocation.store
      }) if it has deps. has it: ${hasDeps}: ${setToString(deps)}`,
    );
    if (
      hasDeps || // if it has deps, then back it up
      !isRegister(allocation.store) // or if its not a register already (usually its a mem such as arg1[2], or has been spilled before).
      // because of AllocationFlags.IN_0_AS_OUT_REGISTER, we want to have a register.
    ) {
      const isByte = isU1(allocation);
      const inst = isByte ? "movzx" : isXmmRegister(allocation.store) ? "movq" : "mov";
      // allocate destination register for out[0]
      const backupReg = this.getW(outVarname) as Register;
      // and copy the value

      const comment = `${outVarname}, copying ${inVarname} here, cause ${inVarname} is needed in a reg. It has those deps: ${setToString(
        deps,
        10,
      )}, current hard deps: ${setToString(Model.hardDependencies, 4)}`;
      this._preInstructions.push(
        `${inst} ${backupReg}, ${isByte && isMem(allocation.store) ? "byte " : ""}${
          allocation.store
        };${comment}`,
      );
      return backupReg;
    } else {
      delete this._allocations[inVarname];
      this._allocations[outVarname] = {
        datatype: allocation.datatype,
        store: allocation.store,
      };
      return allocation.store;
    }
  }

  public declareFlagState(flag: Flags, fs: FlagState): void {
    this._flagState[flag] = fs;
  }

  public declareVarForFlag(flag: Flags, name: string): void {
    const current = this._flags[flag];
    if (current) {
      delete this._allocations[current];
    }
    this._flagState[flag] = FlagState.ALIVE;
    this._allocations[name] = {
      datatype: "u1",
      store: flag,
    };
  }

  public moveOneMemoryToRegister<MA extends { store: mem }>(
    args: Array<MA>,
    moveInstruction = "mov",
  ): [RegisterAllocation, ...(MA | RegisterAllocation)[]] {
    let theChosenOne: MA;
    if (args.length === 1) {
      theChosenOne = args.splice(0, 1)[0];
    } else if (args.length === 2 || args.length === 3) {
      // we want to splice one from args. But by name, not from their memory position!
      // thus: get their respective names
      const names = args.map((a) => this.getVarnameFromStore(a));
      // decide on a name, (either randomly or by descision on that instruction)
      const chosenName = Paul.chooseArg(names);
      // then splice the chosen one from the args
      theChosenOne = args.splice(names.indexOf(chosenName), 1)[0];
    } else {
      theChosenOne = Paul.pick(args);
      console.warn(`choice of ${theChosenOne} will not be saved.`);
    }

    const varname = this.getVarnameFromStore(theChosenOne);
    this.loadVarToReg(varname, moveInstruction);
    const u = uniq(args.map(({ store }) => store));
    if (u.length === 1 && u[0] === theChosenOne.store) {
      // if all the args are at the same location. the loadVarToReg will have moved that one variable to a register.
      // Therefore the old allocation of the var, the memory address technically, is still valid, but the allocation entry has been lost.
      // thus, its better to use the target reg as a return value
      this._preInstructions.push(
        `nop ; this is experimental. Moving ${varname} to reg in moveOneMemToReg function. since all args are the same, returning basically only that reg ${theChosenOne}.`,
      );
      return [
        this._allocations[varname] as RegisterAllocation,
        ...args.map((_) => this._allocations[varname] as RegisterAllocation),
      ];
    }

    return [this._allocations[varname] as RegisterAllocation, ...args];
  }

  /*
   * Given a store, will return the name of the varibale stored in that store.
   * It will throw an error or return emptystring (depending on @param throwIfNotFound), if nothing or more than one has been found.
   */
  public getVarnameFromStore(
    { store: storeNeedle }: Pick<ValueAllocation, "store">,
    throwIfNotFound = true,
  ): string {
    const findings = this.entriesAllocations
      .filter(([_key, { store }]) => store === storeNeedle)
      ?.map(([key]) => key);
    if (findings.length === 1) {
      return findings[0];
    }
    if (findings.length !== 0 || throwIfNotFound) {
      throw new Error(
        `Tried to find the name of data being stored at ${storeNeedle}, but found ${
          findings.length
        }: ${JSON.stringify(findings)} instead of ONE in the current Allocations. TSNH. Abort.`,
      );
    } else {
      return "";
    }
  }

  public getCurrentAllocations(): Allocations {
    return this._allocations;
  }

  /**
   * will spill @param nameOfVar, which must be stored in a flag
   * to a newly aquired register.
   * Then it'll set the flag-reference of that flag to 'null'
   * @returns the register, where the variable is now spilled to
   */
  private _spillFlag(nameOfVar: string): ByteRegister | false {
    const { store } = this._allocations[nameOfVar] as U1FlagAllocation;
    if (!isFlag(store)) {
      throw new Error(`Wanted to spill ${nameOfVar}, but thats not a flag. Giving up.`);
    }
    return this.spillFlag(store, nameOfVar);
  }

  /**
   * @param setcc can be a flag like Flags.CF or can be a string, which must start with 'set'
   * if it is a flag, the flag will be declared as KILLED after.
   */
  public setCC(setcc: `set${string}` | Flags, nameOfVar: string): ByteRegister {
    // const varibaleSavedInFlagToSpill = this.flags[flagToSpill] as string;
    this._clobbers.add(nameOfVar);
    const reg = this.getW(nameOfVar);
    const bytereg = isByteRegister(reg) ? reg : getByteRegFromQwReg(reg);

    this._allocations[nameOfVar] = {
      datatype: "u1",
      store: bytereg,
    };
    if (isFlag(setcc)) {
      const flag = setcc;
      this._preInstructions.push(`${SETX[setcc]} ${bytereg}; spill ${flag} ${nameOfVar} to reg (${reg})`);
      this.declareFlagState(flag, FlagState.KILLED);
    } else {
      if (!setcc.startsWith("set")) {
        throw new Error("must be called with a flag or an instructon, starting with 'set'");
      }
      this._preInstructions.push(`${setcc} ${bytereg}; setCC ${nameOfVar} to reg (${reg})`);
    }
    return bytereg;
  }

  /**
   * returns false, if flag is not alive, or if it didnt need to be saved. Otherwise
   * spills a flag into a Byte reg, and declares the flag as killed. and set the allocations
   * @param flag which flag to spill
   * @param nameOfVar name of outvar, if omitted, defaults to own varname
   */
  public spillFlag(flag: Flags, nameOfVar?: string): ByteRegister | false {
    if (this._flagState[flag] !== FlagState.ALIVE) {
      this.declareFlagState(flag, FlagState.KILLED);
      return false;
    }
    if (!nameOfVar) {
      nameOfVar = this._flags[flag];
    }
    if (!Model.hasDependants(nameOfVar)) {
      this._preInstructions.push(
        `;should save ${flag}(${nameOfVar}) but as it has not dependents, we just ignore it.`,
      );
      this.declareFlagState(flag, FlagState.KILLED);
      return false;
    }
    return this.setCC(flag, nameOfVar);
  }

  public clearFlag(flag: Flags): void {
    if (flag == Flags.CF) {
      this._preInstructions.push("clc;");
      return;
    }
    // TODO: get those registers as byte REGS to save a byte of instruction
    const clearFlagByUsingMinus1 = (debuginfo: string) => {
      const { store } = this._allocations["-0x1"] as ValueAllocation;
      this._preInstructions.push(`inc ${store}; OF<-0x0, preserve CF (${debuginfo})`);
      delete this._allocations["-0x1"];
      this._allocations["0x0"] = {
        datatype: "u64",
        store,
      };
    };

    const clearFlagByUsingZero = (debuginfo: string) => {
      const { store } = this._allocations["0x0"] as ValueAllocation;
      this._preInstructions.push(`dec ${store}; OF<-0x0, preserve CF (${debuginfo})`);
      delete this._allocations["0x0"];
      this._allocations["-0x1"] = {
        datatype: "u64",
        store,
      };
    };
    if (["0x0", "-0x1"].every((v) => this._allocations[v] && !this._clobbers.has(v))) {
      // if there is both allocated and I can use both choose randomly

      if (Paul.chooseImm(["0x0", "-0x1"]) == "0x0") {
        clearFlagByUsingZero("debug: state 1(0x0) (thanks Paul)");
      } else {
        clearFlagByUsingMinus1("debug: state 1(-0x1) (thanks Paul)");
      }
      return;
    }
    // now the complicated part.
    if (
      this._allocations["-0x1"] && // if there is -1
      !this._clobbers.has("-0x1") && // and I can use it
      !this._allocations["0x0"] // and there is no 0,
    ) {
      clearFlagByUsingMinus1("debug: state 2 (y: -1, n: 0)");
      return;
    }

    if (
      this._allocations["0x0"] && // if there is 0
      !this._clobbers.has("0x0") && // and I can use it
      !this._allocations["-0x1"] // and there is no -1
    ) {
      clearFlagByUsingZero("debug: state 3 (y: 0, n: -1)");
      return;
    }

    // if both vals are not in there, and (therefore?) not in clobbers, we can just load a value in there and try again.
    const bothAreNotAllocated = [C_DI_IMM.ZERO, C_DI_IMM.NEG_1].every((v) => !this._allocations[v]);

    if (bothAreNotAllocated && [C_DI_IMM.ZERO, C_DI_IMM.NEG_1].every((v) => !this._clobbers.has(v))) {
      const choice = Paul.chooseImm([C_DI_IMM.ZERO, C_DI_IMM.NEG_1]);
      this.loadImmToReg64(choice as imm);
      if (choice === "0x0") {
        clearFlagByUsingZero("debug: state 4 (thanks Paul)");
        return;
      } else {
        clearFlagByUsingMinus1("debug: state 5 (thanks Paul)");
        return;
      }
    }

    // last resort... So it happens quite often, that we need to add 0x0 to something (0 + a + b) in an addcarryx, which makes 0x0 in clobbers, but not -1
    // So iff: both are not alocated, but only 0x0 is being clobbered, we can load -2, inc it, and save
    // it as -1 for a potential load-flag or next time clear OF

    // in the other case, we load -3, because thats never in clobbers, and inc, and save it as -2 for next clear OF

    // if we can save it as -1, we do.
    if (bothAreNotAllocated && !this._clobbers.has("-0x1")) {
      const val: imm = "-0x2";
      this.loadImmToReg64(val);
      const { store } = this._allocations[val] as ValueAllocation;
      delete this._allocations[val];
      this._preInstructions.push(
        `inc ${store}; OF<-0x0, preserve CF   (debug: 6; load -2, increase it, save as -1)`,
      );
      this._allocations["-0x1"] = {
        datatype: "u64",
        store,
      };
      return;
    }
    // else load -3
    const val: imm = "-0x3";
    this.loadImmToReg64(val);
    const { store } = this._allocations[val] as ValueAllocation;
    delete this._allocations[val];

    const save = !this._allocations["-0x2"] && !this._clobbers.has("-0x2");
    if (save) {
      this._allocations["-0x2"] = {
        datatype: "u64",
        store,
      };
    }
    this._preInstructions.push(
      `inc ${store}; OF<-0x0, preserve CF (debug 7; load -3, increase it, ${
        save ? "save it as -2" : "discard the information #workaround"
      }). #last resort`,
    );

    // if that causes error eventually, just remove the lines for saving -2 in the allocations.
    // and discard the information that we have -2 somewhere
  }

  /**
   * will load @param nameOfVar, which must be stored in memory
   * to a newly aquired register.
   * @returns the register, where the variable is now loaded into
   */
  public loadVarToReg(nameOfVar: string, moveInstruction = "mov"): Register | ByteRegister {
    // // name could be arg1[n]
    // if (matchArg(nameOfVar)) {
    //   const m = this._varToMemStr(nameOfVar).targetMem;
    //   // this one will add nameOfVar (i.e. arg1[n]) to allocations.
    //   return this.loadMemoryToReg(m, nameOfVar, moveInstruction);
    // }
    const alloc = this._allocations[nameOfVar];
    assertValueAllocation(alloc);
    let { store } = alloc as ValueAllocation;
    if (isMem(store)) {
      return this.loadMemoryToReg(store, nameOfVar, moveInstruction);
    }

    // flag=>byte-reg
    if (isFlag(store)) {
      store = this.setCC(store, nameOfVar) as ByteRegister;
    }

    // byte-reg=> reg
    if (isByteRegister(store)) {
      const { reg, inst } = zx(store);
      store = reg as Register;
      this._preInstructions.push(inst);
      this._allocations[nameOfVar].store = store;
      this._allocations[nameOfVar].datatype = "u64";
    }

    // reg-> return
    if (isRegister(store)) {
      return store;
    }
    if (isXmmRegister(store)) {
      this._clobbers.add(nameOfVar);
      const reg = this.getW(nameOfVar);
      this._preInstructions.push(`movq ${reg}, ${store}; loading ${nameOfVar} from spilled xmm`);
      this._allocations[nameOfVar].store = reg;
      return reg;
    }
    throw new Error(
      `Wanted to load ${nameOfVar} to a register, but thats not a memory reference nor a byte reg not xmm. Giving up.`,
    );
  }

  /**
   * if @param moveInstruction is "movzx", its guaranteed that it returns a reg64
   * if nothing or /mov/ is passed, the same size as mem is passed back:
   * if mem is m64, return r64, if mem is m8, will return m8
   */
  private loadMemoryToReg(memory: mem, nameOfVar: string, moveInstruction = "mov"): Register | ByteRegister {
    this._clobbers.add(nameOfVar);
    // CRUCIAL TO HAVE ISU1 BEFORE GETW
    const isSourceU1 = matchArg(nameOfVar)
      ? false // since arg[x] dont have a datatype
      : this._allocations[nameOfVar] && isU1(this._allocations[nameOfVar]);
    // CRUCIAL TO HAVE ISU1 BEFORE GETW
    const reg = this.getW(nameOfVar) as Register;

    // moveInstruction === "movzx"  means: destination should be r64
    // moveInstruction === "mov"    means dest is the same size as requested mem
    if (moveInstruction === "mov" && isSourceU1) {
      // r8 <- m8
      const br = getByteRegFromQwReg(reg);
      this._allocations[nameOfVar] = {
        datatype: "u1",
        store: br,
      };
      this._preInstructions.push(`mov ${br}, byte ${memory}; load byte ${nameOfVar} to register8`);
      return br;
    } else {
      // destination is r64
      this._allocations[nameOfVar] = {
        datatype: "u64",
        store: reg,
      };

      if (moveInstruction === "movzx" && isSourceU1) {
        // r64 <-m8 : movzx r64, byte [mem]
        this._preInstructions.push(`movzx ${reg}, byte ${memory}; load byte mem${nameOfVar} to register64`);
      } else {
        // r64 <- m64: mov r64,  [mem]
        this._preInstructions.push(`mov ${reg}, ${memory}; load m64 ${nameOfVar} to register64`);
      }
      return reg;
    }
  }

  // only use that to read current flags, maps from FLAG to varname
  private get _flags(): { [k in Flags]: string } {
    return this.entriesAllocations
      .filter(([_varname, allocation]) => isFlag(allocation.store))
      .reduce((prev, [varname, allocation]) => {
        prev[allocation.store as Flags] = varname;
        return prev;
      }, {} as { [k in Flags]: string });
  }

  public flagStateString(): string {
    return Object.entries(this._flagState)
      .map(([flag, state]) => `${flag}: ${FlagState[state]}`)
      .join(",");
  }

  public allocationString(sep = ", "): string {
    const pad = sep != ", ";
    return `;-- allocation: ${sep}${this.entriesAllocations
      .filter(
        ([, { store }]) =>
          isRegister(store) || isByteRegister(store) || isFlag(store) || isXmmRegister(store),
      )
      .sort(([, a], [, b]) => a.store.localeCompare(b.store))
      .map(([k, { store }]) => `${pad ? k.padStart(10) : k} ${store}`)
      .join(sep)}`;
  }

  public flagState(): { [f in Flags]: FlagState } {
    return this._flagState;
  }

  // isNew means 'has been added to stackstructure'
  // this is not the case, if its an argument i.e. (arg1[n]). If arg1 was not in a register, it will have been moved to one (e.g. rax) and then this function will return [rax + n * 0x08]
  // however, arg1[n] is not added to this._allocations{store : [rax + n ..]} because rax is not guaranteed the value of arg1 in subsequent checks in allocations
  private _varToMemStr(varname: string): { targetMem: mem; isNew: boolean } {
    if (matchXD(varname) || isCallerSave(varname) || matchArgPrefix(varname)) {
      let varname_index = this._stack.findIndex(({ name }) => name === varname);
      const isNew = varname_index === -1;
      if (isNew) {
        // aka not found in stack
        // push and get length-1 as index of pushed element
        varname_index =
          this._stack.push({
            size: 64,
            name: varname,
          }) - 1;
        this.addToPreInstructions(`; stacking up for ${varname}`);
      }
      return { isNew, targetMem: toMem(varname_index, Register.rsp) };
    } else {
      // not of the form of a 'variable', so maybe its argument as in arg1[3]
      // then the result must be mov rax, &arg1; [rax + 3 * 0x08]
      const match = matchArg(varname);
      if (match) {
        const arg_reg = this.loadVarToReg(match[1]);

        if (isByteRegister(arg_reg)) {
          throw new Error("TSNH, since 'arg' cannot be u1, thus should not be in Byte reg");
        }
        return { isNew: false, targetMem: toMem(Number(match[2]), arg_reg) };
      }
      throw new Error(`Cannot handle ${varname} `);
    }
  }

  // for debugging only
  private _currentInst: CryptOpt.Argument | null = null;
  private set currentInstruction(c: CryptOpt.Argument) {
    this._currentInst = c;
  }

  // this is to not return the string args publicly (because I dont know about the lifetime)
  public addToClobbers(c: CryptOpt.DynArgument | CryptOpt.StringOperation): void {
    this._addToClobbers(c);
  }
  private _addToClobbers(arg: CryptOpt.DynArgument | CryptOpt.StringOperation): string[] {
    const c = arg as CryptOpt.DynArgument; // TDOO why doesnt  TS get this by itself:

    const stringArgs = c.arguments.filter((a) => typeof a === "string") as string[];
    const a = [...c.name, ...stringArgs] as CryptOpt.Varname[];
    const b = uniq(a.map(delimbify).flatMap(limbifyImm)) as CryptOpt.Varname[];
    a.concat(b)
      .concat(a.flatMap(limbify))
      .forEach((v) => this._clobbers.add(v));

    const allImmValsPotentiallyUsedForBZHI = stringArgs
      .filter(isImm)
      .filter((immvalue) => immvalue in LSB_MAPPING);
    if (allImmValsPotentiallyUsedForBZHI.length > 0) {
      allImmValsPotentiallyUsedForBZHI
        .map((immVal_0x7ffffish) => LSB_MAPPING[immVal_0x7ffffish])
        .forEach((v) => this._clobbers.add(v));
      // this is a tricky one...
      // the result of the mapping is a collection of 0x33 for 0x7ffffffffffff or so.
      // So although in the instructions we have the constant 0x7fff,
      // in the register what we'd need and shouldn't destroy is the bitcount i.e. 0x33.
      // Thus both must be in the clobbers
    }

    return stringArgs;
  }

  public initNewInstruction(ni: CryptOpt.StringOperation): void {
    const newInstruction = ni as CryptOpt.DynArgument; // TDOO why doesnt  TS get this by itself:

    this.currentInstruction = newInstruction;
    this._clobbers.clear();
    const stringArgs = this._addToClobbers(newInstruction);
    // now we introduced u128, we have long numbers.

    this._preInstructions = [];

    stringArgs.filter(matchArg).forEach((arg) => {
      // those are arguments like arg1[3] which will be read. If this is happening in an add / sub operation,
      // they will read this.getCurrentAlloctaions()['arg1[2]']. We are making sure here, that this is not
      // undefined but a memory address.
      if (typeof this._allocations[arg] === "undefined") {
        const { groups } = matchArg(arg) as RegExpMatchArray;

        if (!groups) {
          throw new Error("must have matched an Arg");
        }
        const { base, offset } = groups;
        const baseAllocation = this._allocations[base];
        if (!baseAllocation) {
          throw new Error(`${base} must be somewhere but cant be found in allocations. Aborting`);
        }
        assertValueAllocation(baseAllocation);
        let store: mem | Register = baseAllocation.store;

        if (isMem(store)) {
          // if arg1  is in menory, we need to get that first
          store = this.loadMemoryToReg(store as mem, base, "movzx") as Register;
        }
        const mem = toMem(offset, store as Register);
        this._allocations[arg] = {
          datatype: "u64", // because we assume all arg's are u64
          store: mem,
        };
        // however, we need to remove that allocation (e.g. arg1[2] => [r15+0x10]), once we are done with that instuction, because we
        // dont have track of e.g. r15 getting another value. and than this mem ref is wrong.
        // anyway, thats not a big problem, because if in the next instruction we need arg1[2] again, then we'll meet
        // here again and see: hey, nice, arg1 is in r15 (if it still is) and we just calculate [r15+0x10] again.
        // We do this in the this.pres-getter.
      }
    });

    // also remove unused temp regs
    [TEMP_VARNAME, "_"].forEach((varname) => {
      if (varname in this._allocations) {
        const { store } = this._allocations[varname] as ValueAllocation;
        if (isMem(store)) {
          console.log(
            ` interesting. That should not happen usually, that _ or TEMP_VARNAME (${TEMP_VARNAME}) is in memory ${store} and not in a register... one may want to investigate.`,
          );
        }
        delete this._allocations[varname];
      }
    });
  }
  // if the allocation-phase is done, call this method.
  // It returns an object with instructions, which should be put before and after the assembly instructions.

  public finalize(): { pre: asm[]; stacklength: number; post: asm[] } {
    const stacklength = this._stack.length;

    const pre = [] as asm[];
    const post = ["ret"] as asm[];
    if (stacklength > 0) {
      // CALLER SAVE REGS must be placed at the end.
      const stacksizeInBytes = stacklength * 8;

      pre.push(`sub rsp, ${stacksizeInBytes}`);

      post.unshift(`add rsp, ${stacksizeInBytes}`);
      post.unshift(
        ...this.entriesAllocations
          .filter(([name]) => isCallerSave(name))
          .map(([name, allo]) => {
            const dest = name.split(CALLER_SAVE_PREFIX)[1]; // like rbp
            const src = allo.store; // like xmm0 or [rsp + 0x08]
            const instr = isXmmRegister(src) ? "movq" : "mov";
            return `${instr} ${dest}, ${src}; pop`;
          }),
      );
    }
    return {
      stacklength,
      pre,
      post,
    };
  }
  public get pres(): asm[] {
    // we do this, because explained in  init new instuction
    Object.keys(this._allocations)
      .filter(matchArg)
      .forEach((v) => {
        delete this._allocations[v];
      });

    // empty and get current pres
    return this._preInstructions.splice(0, this._preInstructions.length);
  }

  public addToPreInstructions(a: asm): void {
    this._preInstructions.push(a);
  }
  public declare128(name: string): void {
    if (!isXD(name)) {
      throw new Error(`${name} must be an xDD`);
    }

    if (name in this._allocations) {
      throw new Error(`${name} cannot be in allocation aleady`);
    }
    if (
      limbify(name).some((limb) => !(limb in this._allocations) || this._allocations[limb].datatype !== "u64")
    ) {
      throw new Error(
        `all limbs from ${name} must be in allocation with u64 ${JSON.stringify(
          this._allocations,
          undefined,
          2,
        )}`,
      );
    }
    this._allocations[name] = { datatype: "u128" };
  }

  public zext(from: string, to: string): ValueAllocation {
    const alloc = this._allocations[from];
    assertValueAllocation(alloc);
    if (!isXD(to)) {
      throw new Error(`cannot zext if ${to} is no xd`);
    }
    const partialAlloc: Partial<ValueAllocation> = {
      datatype: "u64",
    };
    // if they are the same, we just want to make x5(whatever_store,u64) -> x5(u128) + x5_0(whatever_store,u64)
    if (from === to) {
      partialAlloc.store = alloc.store;
    } else {
      //otherwise, we want to backup if needed
      const newReg = this.backupIfVarHasDependencies(from, to);
      if (newReg == alloc.store) {
        // delete from, if the var stayed the same.
        // if newReg !== alloc.store, that means that it had dependencies, thus we wont delete it
        delete this._allocations[from];
      }
      // and make to_0.store <- from_0.store
      partialAlloc.store = newReg;
    }
    // in any case, to will be extended
    this._allocations[to] = {
      datatype: "u128",
    };

    // typecast it
    const loAlloc = partialAlloc as ValueAllocation;

    // and set to_0 to new allocation
    this._allocations[limbify(to)[0]] = loAlloc;
    return loAlloc;
  }

  /* basically takes the store from @param from and puts it into @to*/
  public lazyMov(from: string, to: string): void {
    // if from is in allocs and has a store, and 'to' is not,
    if (from in this._allocations && this._allocations[from].store && !(to in this._allocations)) {
      this._allocations[to] = this._allocations[from];
      this.addToPreInstructions(`; renamed ${from} to ${to} `);
      delete this._allocations[from];
    } else {
      this.addToPreInstructions(`; not renamed ${from} to ${to} `);
      throw new Error("unsupported");
    }
  }

  // will clear all u128 allocations which dont have any limbs allocated.
  public clearOrphans(): void {
    Object.entries(this._allocations)
      .filter(([_name, { datatype }]) => datatype === "u128")
      .filter(([name]) => {
        if (limbify(name as CryptOpt.Varname).every((limb) => typeof this._allocations[limb] === "undefined"))
          delete this._allocations[name];
      });
  }
  private _unifySizes(a: string[]): string[] {
    // NOTE: we can't really use filter's here, becuse we want to keep the imms in the right position
    // check if we have different sizes
    const storesAsVarnames = a.map((store) => (isImm(store) ? store : this.getVarnameFromStore({ store })));
    const { hasU1, hasU64 } = storesAsVarnames.reduce(
      (acc, varname) => {
        if (!isImm(varname)) {
          acc.hasU1 ||= isU1(this._allocations[varname]);
          acc.hasU64 ||= isU64(this._allocations[varname]);
        }
        return acc;
      },
      { hasU1: false, hasU64: false },
    );
    // if that is different, which means we have only one or the other,
    if (hasU64 !== hasU1) {
      // we can return
      return a;
    }
    // otherwise we need to move the u1's to u64
    // and since we can only zx to r/64 , we can use

    return storesAsVarnames.map((varname) =>
      isImm(varname) ? varname : this.loadVarToReg(varname, "movzx"),
    );
  }
  public declareDatatypeForVar(name: CryptOpt.Varname, dt: CryptOpt.Datatype_T): void {
    if (!(name in this._allocations)) {
      throw new Error(`cannot find ${name}  in allocations`);
    }
    this._allocations[name].datatype = dt;
    //also change register, if applicaple
    const st = this._allocations[name].store;
    switch (dt) {
      case "u8":
      case "u1":
        if (isRegister(st)) {
          // u64 -> u8
          this._allocations[name].store = getByteRegFromQwReg(st);
        }
        return;

      case "u64":
        if (isByteRegister(st)) {
          // u64 -> u8
          this._allocations[name].store = getQwRegFromByteReg(st);
        }
        return;
    }
  }
}
