import { BINS } from "./enums";

// TODO: the bounds property should be parsed from the json-output when using
export const PRIMES = {
  prime1: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^127 - 1" }, // same as prime 2 but wbw
  prime2: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^127 - 1" },
  prime3: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^129 - 25" },
  prime4: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^130 - 5" },
  prime5: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^137 - 13" },
  prime6: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^140 - 27" },
  prime7: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^141 - 9" },
  prime8: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^150 - 3" },
  prime9: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^150 - 5" },
  prime10: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^152 - 17" },
  prime11: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^158 - 15" },
  prime12: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^165 - 25" },
  prime13: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^166 - 5" },
  prime14: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^171 - 19" },
  prime15: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^174 - 17" },
  prime16: { bounds: [], argwidth: 3, bitwidth: 64, binary: BINS.unsaturated, prime: "2^174 - 3" },
  prime17: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^189 - 25" }, // same as prime18 but wbw
  prime18: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^189 - 25" },
  prime19: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^190 - 11" },
  prime20: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^190 - 11" },
  prime21: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^191 - 19" },
  // prime22: { bounds:[], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^192 - 2^64 - 1" }, // fails with argw 4-5
  prime22: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^192 - 2^64 - 1" },
  prime23: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^194 - 33" },
  prime24: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^196 - 15" },
  prime25: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^198 - 17" },
  prime26: {
    bounds: [],
    argwidth: 4,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^205 - 45*2^198 -1",
  },
  prime27: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^206 - 5" },
  prime28: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^212 - 29" },
  prime29: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^213 - 3" },
  prime30: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^216 - 2^108 -1" },
  prime31: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^221 - 3" },
  prime32: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^222 - 117" },
  prime33: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^224 - 2^96 + 1" },
  prime34: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.unsaturated, prime: "2^226 - 5" },
  prime35: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^230 - 27" },
  prime36: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^235 - 15" },
  prime37: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^243 - 9" },
  prime38: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^251 - 9" },
  prime39: {
    bounds: [],
    argwidth: 4,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^254 - 127 *2^240 -1",
  },
  prime40: {
    bounds: [],
    argwidth: 5,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^254 - 127 *2^240 -1",
  },
  prime41: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^255 - 19" },
  prime42: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^255 - 765" }, // unsaturated fails cause of cryptopt multiply imm something
  prime43: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^256 - 189" },
  prime44: {
    bounds: [],
    argwidth: 5,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^256 - 2^224 +2^192 + 2^96 -1",
  },
  // prime45: { bounds:[], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^256 - 2^32 -977" }, // fails w argw 5-7, could do aw=8
  prime45: { bounds: [], argwidth: 4, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^256 - 2^32 -977" }, // secp256k1
  prime46: {
    bounds: [],
    argwidth: 5,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^256 - 4294968273",
  },
  prime47: {
    bounds: [],
    argwidth: 5,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^256 - 88 *2^240 -1",
  },
  prime48: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^266 - 3" },
  prime49: { bounds: [], argwidth: 5, bitwidth: 64, binary: BINS.unsaturated, prime: "2^285 - 9" },
  prime50: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^291 - 19" }, // == prime 51
  prime51: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^291 - 19" },
  prime52: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^321 - 9" },
  prime53: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^322 - 2^161 -1" },
  prime54: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^336 - 17" },
  prime55: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^336 - 3" },
  prime56: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.unsaturated, prime: "2^338 - 15" },
  prime57: { bounds: [], argwidth: 7, bitwidth: 64, binary: BINS.unsaturated, prime: "2^369 - 25" },
  prime58: { bounds: [], argwidth: 7, bitwidth: 64, binary: BINS.unsaturated, prime: "2^379 - 19" },
  prime59: { bounds: [], argwidth: 7, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^382 - 105" }, // same as prime63 but wbw
  prime60: { bounds: [], argwidth: 7, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^383 - 187" }, // same as prime64 but wbw
  prime61: { bounds: [], argwidth: 7, bitwidth: 64, binary: BINS.unsaturated, prime: "2^383 - 31" }, // same as prime65
  prime62: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^383 - 421" }, // same as prime66 but wbw
  prime63: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^382 - 105" },
  prime64: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^383 - 187" },
  prime65: { bounds: [], argwidth: 7, bitwidth: 64, binary: BINS.unsaturated, prime: "2^383 - 31" },
  prime66: { bounds: [], argwidth: 6, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^383 - 421" }, // unsaturated fails cause of cryptopt multiply imm something
  prime67: {
    bounds: [],
    argwidth: 7,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^384 - 2^128 -2^96 + 2^32 -1",
  },
  prime68: { bounds: [], argwidth: 9, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^384 - 317" }, // fails w unsaturated argw7-9
  prime69: {
    bounds: [],
    argwidth: 7,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^384 - 5 * 2^368 -1",
  },
  prime70: {
    bounds: [],
    argwidth: 7,
    bitwidth: 64,
    binary: BINS.wbw_montgomery,
    prime: "2^384 - 79 * 2^376 -1",
  },
  prime71: { bounds: [], argwidth: 7, bitwidth: 64, binary: BINS.unsaturated, prime: "2^389 - 21" },
  prime72: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^401 - 31" },
  prime73: { bounds: [], argwidth: 9, bitwidth: 64, binary: BINS.unsaturated, prime: "2^413 - 21" }, // fails w argwidth 8
  prime74: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^414 - 17" },
  prime75: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^416 - 2^208 -1" },
  prime76: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^444 - 17" },
  prime77: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^444 - 17" },
  prime78: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^448 - 2^224 -1" },
  prime79: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^450 - 2^225 -1" },
  prime80: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^452 - 3" },
  prime81: { bounds: [], argwidth: 9, bitwidth: 64, binary: BINS.unsaturated, prime: "2^468 - 17" },
  prime82: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.unsaturated, prime: "2^480 - 2^240 -1" },
  prime83: { bounds: [], argwidth: 9, bitwidth: 64, binary: BINS.unsaturated, prime: "2^488 - 17" },
  prime84: { bounds: [], argwidth: 9, bitwidth: 64, binary: BINS.unsaturated, prime: "2^489 - 21" },
  prime85: { bounds: [], argwidth: 9, bitwidth: 64, binary: BINS.unsaturated, prime: "2^495 - 31" },
  prime86: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^511 - 187" }, // same as prime88 but wbw
  prime87: { bounds: [], argwidth: 8, bitwidth: 64, binary: BINS.wbw_montgomery, prime: "2^511 - 481" }, // same as prime89 but wbw
  prime88: { bounds: [], argwidth: 10, bitwidth: 64, binary: BINS.unsaturated, prime: "2^511 - 187" },
  prime89: { bounds: [], argwidth: 10, bitwidth: 64, binary: BINS.unsaturated, prime: "2^511 - 481" },
  prime90: { bounds: [], argwidth: 10, bitwidth: 64, binary: BINS.unsaturated, prime: "2^512 - 569" },
  prime91: { bounds: [], argwidth: 9, bitwidth: 64, binary: BINS.unsaturated, prime: "2^521 - 1" },
};
