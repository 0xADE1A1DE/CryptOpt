import { delimbify, limbify, limbifyImm } from "@/helper";
import type { AllocationReq, CryptOpt } from "@/types";

export function populateClobbers(clobs: Set<string>, req: AllocationReq): void {
  // As AllocationReq is not typed yet, lets type assert here.
  const r = req.in.concat(req.oReg) as CryptOpt.StringInstruction["arguments"];

  r.forEach((t) => clobs.add(t));
  r.flatMap(limbify).forEach((t) => clobs.add(t));
  r.flatMap(limbifyImm).forEach((t) => clobs.add(t));
  r.flatMap(delimbify).forEach((t) => clobs.add(t));
}
