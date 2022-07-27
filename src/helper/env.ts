import { defaults } from "lodash-es";
import { resolve } from "path";
import { cwd } from "process";

export const env = defaults(process.env, {
  CC: "gcc",
  CFLAGS: "-march=native -mtune=native -O3",
});

export const datadir = resolve(cwd(), "dist", "data");
