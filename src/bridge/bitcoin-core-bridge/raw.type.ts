export type StructName = `struct.${string}`;
export type PT = "i64*" | `${StructName}*`; // pointer type
export type ST = "i1" | "i64" | "i128"; // scalar type
export type DT = PT | ST; // datatype
export type OP =
  | "add"
  | "and"
  | "ashr"
  | "getelementptr"
  | "icmp"
  | "load"
  | "lshr"
  | "mul"
  | "or"
  | "shl"
  | "store"
  | "trunc"
  | "xor"
  | "zext"; //raw types
export type varName_T = `x${number}`;

export type SSA = {
  name: [varName_T];
  operation: OP;
  datatype: ST;
  arguments: string;
  modifiers: string;
};

export type raw_T = {
  operation: string;
  arguments: [string];
  returns: [{ datatype: PT; name: varName_T }];
  body: SSA[];
};

export type structDef_T = {
  name: StructName;
  definition: string;
};
