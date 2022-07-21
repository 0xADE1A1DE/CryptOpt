import { defaults } from "lodash";

export const env = defaults(process.env, {
  CC: "gcc",
  CFLAGS: "-march=native -mtune=native -O3",
});
