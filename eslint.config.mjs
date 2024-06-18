// @ts-check

import eslint from "@eslint/js";
import tseslint from "typescript-eslint";

export default tseslint.config(
  {
    ignores: ["dist/*.js", "coverage", "modules", "rollup.config.js"],
  },
  eslint.configs.recommended,
  ...tseslint.configs.recommended,
  {
    rules: {
      "@typescript-eslint/no-unused-vars": [
        1,
        {
          argsIgnorePattern: "^_",
        },
      ],
    },
  },
);

// module.exports = [
//   {
//     languageOptions: {
//       parser: "@typescript-eslint/parser",
//     },
//
//     ignorePatterns: ["*.js", "dist", "coverage"],
//     rules: {
//       "import/first": "warn"                     , /// all imports before any line of code
//       "import/newline-after-import": "warn",
//       "import/no-duplicates": "warn",            /Forbid repeated import of the same module in multiple places.
//
// ];
// "eslint-config-prettier": "^9.1.0",
// "eslint-plugin-import": "^2.29.1",
// "eslint-plugin-prettier": "^5.1.3",
// "eslint-plugin-simple-import-sort": "^12.1.0",
// "@typescript-eslint/eslint-plugin": "^7.13.1",
// "@typescript-eslint/parser": "^7.13.1",
// "eslint": "^9.5.0",
