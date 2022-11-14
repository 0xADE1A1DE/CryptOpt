// maps from the llvm icmp-modifer to the x86-64 setCC mnemonic
// https://llvm.moe/ocaml/Llvm.Icmp.html
export const llvm2CC: { [llvm in "eq" | "ne" | `${"u" | "s"}${"g" | "l"}${"t" | "e"}`]: `set${string}` } = {
  eq: "sete", //   Equal
  ne: "setne", //  Not equal
  ugt: "seta", //  Unsigned greater than
  uge: "setae", // Unsigned greater or equal
  ult: "setb", //  Unsigned less than
  ule: "setbe", // Unsigned less or equal
  sgt: "setg", //  Signed greater than
  sge: "setge", // Signed greater or equal
  slt: "setl", //  Signed less than
  sle: "setle", // Signed less or equal
};
