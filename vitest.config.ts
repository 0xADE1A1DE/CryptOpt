import tsconfigPaths from "vite-tsconfig-paths";
import { configDefaults, defineConfig } from "vitest/config";

export default defineConfig({
  plugins: [tsconfigPaths()],
  test: {
    coverage: {
      reporter: ["text", "json", "html", "cobertura"],
      include: ["src"],
    },
    include: ["**/tests/**/*.ts"],
    exclude: [...configDefaults.exclude, "tests/test-helpers.ts"],
  },
});
