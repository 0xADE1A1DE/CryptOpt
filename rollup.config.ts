// rollup.config.js
import typescript from "@rollup/plugin-typescript";
import copy from "rollup-plugin-copy";
// import { terser } from "rollup-plugin-terser";

const external = [
  "child_process",
  "crypto",
  "fs-extra",
  "fs",
  "fs",
  "lodash",
  "measuresuite",
  "os",
  "path",
  "simple-statistics",
  "yargs",
];
export default [
  {
    input: "src/CryptOpt.ts",
    output: {
      dir: "dist",
      format: "cjs",
    },
    external,
    plugins: [
      typescript(),
      //  terser()
      copy({
        hook: "parallel",
        targets: [
          {
            src: [
              "src/bridge/fiat-bridge/word_by_word_montgomery",
              "src/bridge/fiat-bridge/unsaturated_solinas",
              "src/bridge/fiat-bridge/sha256sums",
            ],
            dest: "./dist",
          },
        ],
      }),
    ],
  },
];
