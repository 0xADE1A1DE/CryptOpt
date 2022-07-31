# CryptOpt

1. Follow the instructions [in the INSTALL document](./INSTALL.md).
1. Run `./run.sh --help` to check if the installation worked.
1. Run `./run.sh` to see an optimization in action.

## Research Paper

A preprint of the CryptOpt paper titled *CryptOpt: Compiling Cryptographic Primitives with High Performance and Formal Assurance* [is available here](./papers/CryptOpt-preprint.pdf). The BibTex citation is [here](./CITATION.bib).

## Understand Output

While optimizing, CryptOpt will output the current status of the optimization.
Each line has this format:
```
curve25519-square|0-10| 14|bs  181|#inst: 140|cyclΔ     70|G  58 cycl σ  0|B  59 cycl σ  0|L  55|l/g 0.9519| P|P[ -14/   0/  14/ -11]|D[MU/ 31/ 59]| 90.0( 1%)  60/s
```
Lets break this down:

Field                 |Example    | Comment
--|--|--
Primitive             | curve25519-square		| Format is `<BRIDGE>-<CURVE>-<METHOD>` (BRIDGE omitted if used with Fiat)
Comment               | 0-10                    | Arbitrary comment. Usually used in Population Mode. Then, it means Bet `0` from `10`, (`10` begin the `run`)
Stack size            | 14	                 	| How many spills to memory there are. E.g. `6` for all spills of the six callee-saved registers
Batch Size            | bs  181		            | `BS` in the paper, How big is the batch. i.e. how many iterations of Primitive are counted
Instr. Count          | #inst: 140		        | How many instructions are used to implement the primitive
Raw Cycle Delta       | cyclΔ     70		    | Measure both batches `nob=31` times, take difference of medians. Based on this a mutation is kept or not.
Cycles +stddev (good) | G  58 cycl σ  0		    | Number of cycles for the `good` candidate, scaled by `bs` i.e. per on *one* iteration. Also states the stdDev of the `nob` measurements
Cycles +stddev (bad)  | B  59 cycl σ  0		    | Same, but for the `bad` candidate
Cycles Library        | L  55		            | Cycles that the CC-Compiled version takes
Ratio                 | l/g 0.9519              | Ratio of cycles lib / cycles good. i.e. 55 / 58 -> 0.9519 (uses the non-scaled counts) This is green if the ratio is `>1` which means that CryptOpt Code is faster than CC's.
Mutation              |  P		                | Which mutation has been applied. **P**ermuation or **D**ecision. (Permutation means mutation in operation order; Decision means which template to use, or how to load operands.)
P-Mutation-Detail     | P[ -14/   0/  14/ -11]  | Details on last P-Mutation. [steps to go back / steps to go forward / absolute index of operation to move / applied relative movement ]
D-Mutation-Detail     | D[MU/ 31/ 59]		    | Details on last D-Mutation. [new chosen template / absolute index of operation to change decision / number of operations with changeable decisions ]
Progress, speed       |  90.0( 1%)  60/s        | Number of the current Mutation, then in Percent, then how many mutations per second can be evaluated. This is green if the mutation is kept.

More on the *D-Mutation*-Details:

Template Short | Description
--|--
AR | A different argument is loaded from memory
KK | The flags `CF`/ `OF` flags are cleared differently
FL | A different flag `CF`/ `OF` is used as an accumulator
B& | For a binary-and a different instruction-template is used
MU | For a multiplication-with-immediate a different instruction-template is used
IM | A different immediate value is loaded


## Understand Output Files

While Optimizing, CryptOpt will generate files in the `./results/<CURVE>/<METHOD>` folder.

CryptOpt writes out intermediate ASM-files whenever *it finishes a bet* and an additional file when finished the *run*.
CryptOpt also generates the internal state (in `*.json` files) of the optimization for each *bet*-outcome.
The directory also contains a `*.dat` file with `l/g` value every time it is printed to the terminal.
From that `*.dat` file, the generated `*.gp` file will generate the `*.pdf` file, which shows the optimization in progress.

## Play around w/ Fiat

We can give CryptOpt a wide range of parameters:

Parameter    | default     | possible / typical values | description
-------------|-------------|---------------------------|----------
--bridge     | fiat        | fiat, bitcoin-core, manual| which *connection* i.e. input should be used.
--evals      | 10000       | 100, 1k, 100k, 1M         | `t`; How many mutations to evaluate
--curve      | curve25519  | curve25519, p224, p256, p384, p434, p448\_solinas, p521, poly1305, secp256k1 | which field - this determines the prime, the implementation strategy and number of limbs
--method     | square      | mul, square               | Method (i.e. function) to optimize. Multiply or Square
--cyclegoal  | 10000       | 1, 100, 100000            | How many cycles to measure, and adjust batch size `bs` accordingly
--bets       | 10          | 10, 30, 100               | How many 'bets' for the bet-and-run heuristic
--betRatio   | 0.2         | 0.1, 0.3                  | The share from parameter `--evals`, which are spent for all bets, in per cent (i.e. 0.2 means 20% of --evals will be used for the bet part, and 80% for the final run-part)
--resultDir  | ./results   | /tmp/myresults            | The directory under which `<CURVE>/<METHOD>` will be created and the result files will be stored
--no-proof   |             | --no-proof, --proof       | [en]ables the Fiat-Proofing system. It is enabled by default for `fiat`-bridge, disabled for the rest.

For more information check `./run.sh --help`

As next example, use `CC=clang ./run.sh --curve p256 --method mul --evals 10k` to generate an optimized version for NIST P-256 multiply and compare the function with `clang`.

## Play around w/ Bitcoin

1. Run `./run.sh --bridge bitcoin-core --curve secp256k1 --method mul --bets 5`  
This will try 5 different *bets* for the primitive *mul* of *libsecp256k1*.

1. Find the result files (`*.asm`,`*.pdf`) for this run in `./results/bitcoin-core-secp256k1/mul`


## Acknowledgements
#### This project was supported by:  
* The Air Force Office of Scientific Research (AFOSR) under award number FA9550-20-1-0425
* the ARC Discovery Early Career Researcher Award  DE200101577
* the ARC Discovery Projects DP200102364 and DP210102670
* The Blavatnik ICRC at Tel-Aviv University  
* the National Science Foundation under grants CNS-1954712 and CNS-2130671
* the National Science Foundation Expedition on the Science of Deep Specification (award CCF-1521584)
* the Phoenix HPC service at the University of Adelaide
* and gifts from Amazon Web Services, AMD, Facebook, Google, Intel and the Tezos Foundation.
