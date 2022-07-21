import Bridge from "@bcb/index";
describe("bridge", () => {
  describe("bridge:getCryptOptFunction", () => {
    it("should only have very node once", () => {
      const b = new Bridge().getCryptOptFunction("reduce").body;
      const set = new Set(b.map((n) => n.name[0]));
      expect(b).toHaveLength(set.size);
    });
  });
});
