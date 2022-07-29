type Err = { exitCode: number; msg: string };
export const ERRORS: { [k: string]: Err } = {
  measureGeneric: {
    exitCode: 20,
    msg: "measuresuite.measure should return a result but didn't. TSNH.",
  },
  measureIncorrect: {
    exitCode: 21,
    msg: `measuresuite.measure should return a result but didn't, because the result is not the same as per measureCheck.`,
  },
  measureInvalid: {
    exitCode: 22,
    msg: `measuresuite.measure should return a result but didn't, because the asmstring could not be assembled.`,
  },
  proofUnsuccessful: {
    exitCode: 50,
    msg: `Could not prove correct. Aborting mission. I repeat: Abort mission now.`,
  },
  bcbMakeFail: {
    exitCode: 30,
    msg: "While Executing `make` in bitcoin-core-bridge, there was an error.",
  },
  bcbFail: {
    exitCode: 31,
    msg: "While reading files in bitcoin-core-bridge, there was an error.",
  },
  parameterParseFail: {
    exitCode: 41,
    msg: "A paramter from the command line could not be parsed.",
  },
};

export function errorOut(e: Err): never {
  console.error(e.msg);
  process.exit(e.exitCode);
}
