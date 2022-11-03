import { lockSync, checkSync } from "proper-lockfile";
import { execSync } from "child_process";
import type { ExecSyncOptions } from "child_process";
// if we dont get the lock, this function will wait until the lock is gone and return.
export function lockAndRunOrReturn(filename: string, cmd: string, opts: ExecSyncOptions = {}): void {
  try {
    //  try to get lock
    const release = lockSync(filename, { realpath: false });

    try {
      // if we've gotten the lock,
      console.log(`executing cmd ${cmd} with opts ${JSON.stringify(opts)}`);
      // execute the command
      execSync(cmd, opts);
    } catch (e1) {
      // any error here is from the ommand
      console.error(`error executing cmd ${cmd}`);
      throw e1;
    }
    // and release
    release();
  } catch (e2: unknown) {
    const flockError = e2 as { code: string; file: string };
    if ("code" in flockError && flockError.code == "ELOCKED") {
      // did not get the lock
      console.log(`could not get lock on ${filename} (which is ok)`);
    } else {
      console.error("lockAndRun errored: ");
      console.warn(e2);
      throw e2;
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
