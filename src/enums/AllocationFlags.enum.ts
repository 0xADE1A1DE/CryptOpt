/**
 * Copyright 2022 University of Adelaide
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * Those are the allocationFlags which need to be passed to the RegisterAllocator
 */
export enum AllocationFlags {
  NONE = 0,
  DONT_USE_IN_REGS_AS_OUT = 1 << 0,

  // will by default re-use registers, if the read do not have any other dependants as the write-vars
  // e.g. x1(rax) = x2(rbx) + x3(rcx), if x2 has no other uses then x1, rbx may be used as an out-reg
  // this behaviour can be diabled, using this flag
  ONE_IN_MUST_BE_IN_RDX = 1 << 1,
  IN_0_AS_OUT_REGISTER = 1 << 2,
  DISALLOW_IMM = 1 << 3,
  DISALLOW_MEM = 1 << 4,

  SAVE_FLAG_OF = 1 << 9,
  SAVE_FLAG_CF = 1 << 10,
  // will check if all the in-variables are the same size. if they are not, will issue a movzx before.
  // if IMMs are allowed (i.e. DISALLOW_IMM is not set) those will be returned as is, and not loaded into a register or padded.
  SAME_SIZE_READ = 1 << 11,
  // this avoids, that the allocated stores, are ALL in memory (used for CMP)
  DISALLOW_ALL_MEM = 1 << 12,
}
