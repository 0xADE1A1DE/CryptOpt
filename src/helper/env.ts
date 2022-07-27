import { defaults } from "lodash-es";

export const env = defaults(process.env, {
  CC: "gcc",
  CFLAGS: "-march=native -mtune=native -O3",
});
