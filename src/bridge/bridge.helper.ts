import { lockSync, checkSync } from "proper-lockfile";
import { execSync } from "child_process";

export function lockAndRun(filename: string, cmd: string): void {
  try {
    //  try to get lock
    const release = lockSync(filename, { realpath: false });

    try {
      // if we've gotten the lock,
      console.log(`executing cmd ${cmd}`);
      // execute the command
      execSync(cmd);
    } catch (e1) {
      // any error here is from the ommand
      console.error(`error executing cmd ${cmd}`);
      process.exit();
    }
    // and release
    release();
  } catch (e2: unknown) {
    const flockError = e2 as { code: string; file: string };
    if (flockError.code == "ELOCKED") {
      // did not get the lock
      console.log(`could not get lock on ${filename} (which is ok)`);
    } else {
      console.warn(e2);
    }

    // else, we got to wait for another proc to release the lock
    while (checkSync(filename, { realpath: false })) {
      console.log(`${filename} is locked. waiting...${Date()}`);

      // TODO: how can this be done more nicely ...
      execSync("sleep 1");
    }
    console.log(`${filename} is no longer locked. returning...${Date()}`);
  }
}
