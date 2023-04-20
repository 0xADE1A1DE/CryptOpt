![Unit Tests](https://github.com/0xADE1A1DE/CryptOpt/actions/workflows/check.yml/badge.svg) ![Code Style](https://github.com/0xADE1A1DE/CryptOpt/actions/workflows/ts-formatting.yml/badge.svg)

# CryptOpt: Verified Compilation with Random Program Search for Cryptographic Primitives

CryptOpt is the result of a research project aiming to enhance the state-of-the-art of how we generate fast code for cryptographic primitives. 
CryptOpt is an optimizer which feeds itself from [Fiat Cryptography](https://github.com/mit-plv/fiat-crypto), generates and optimized x86-64 Assembly for field arithmetic feeds that assembly back into Fiat Cryptography for end-to-end formal verification.
With doing that, CryptOpt achieves much higher performance than GCC and Clang on many different micro-architectures, and in some cases even surpassing the performance hand-optimized assembly.

The generated fast and verified assembly files are in the `fiat-amd64`-directory in the Fiat project, here the table from the research paper showcasing average speedups against GCC 12 / Clang 15 with respective highest optimization settings.

### Geometric means of Speedup CryptOpt vs. off- the-shelf compilers.
| Primitive   | Mul (Clang) | Mul (GCC)  | Square (Clang) | Square (GCC) |
|-------------|-------------|------------|----------------|--------------|
| Curve25519  | 1.25        | 1.16       | 1.18           | 1.17         |
| P-224       | 1.54        | 2.52       | 1.40           | 2.56         |
| P-256       | 1.70        | 2.61       | 1.63           | 2.59         |
| P-384       | 1.45        | 2.49       | 1.37           | 2.51         |
| SIKEp434    | 1.70        | 2.43       | 1.73           | 2.39         |
| Curve448    | 1.19        | 0.98       | 1.07           | 1.05         |
| P-521       | 1.30        | 0.97       | 1.35           | 1.03         |
| Poly1305    | 1.12        | 1.22       | 1.11           | 1.26         |
| secp256k1   | 1.80        | 2.62       | 1.71           | 2.54         |

## Use CryptOpt

If you want to optimize on your own machine, or a different primitive you can
1. Follow the instructions [in the INSTALL document](./INSTALL.md).
1. Run `./CryptOpt --help` to check if the installation worked.
1. Run `./CryptOpt` to see an optimization in action.
1. Follow the instructions [in the Frist Steps document](./First_Steps.md) to get a feeling of what is going on.

The CryptOpt optimizer can also be used with non-Fiat Cryptography input. For more information see the `./test/manual-bridge/`

## Research Paper

A preprint of the CryptOpt paper titled *CryptOpt: Verified Compilation with Random Program Search for Cryptographic Primitives* [is available here](./papers/CryptOpt-preprint.pdf). The BibTex citation is [here](./papers/CryptOpt-preprint.bib).


## Tracking usage of CryptOpt

We have used CryptOpt to generate code for:

1. `libsecp256k1`-compatible code (`./CryptOpt --curve secp256k1_dettman`)
1. BLS12-381 Curves (`./CryptOpt --curve bls12_381_p`, `./CryptOpt --curve bls12_381_q`)

## Acknowledgements
#### This project was supported by:  
* The Air Force Office of Scientific Research (AFOSR) under award number FA9550-20-1-0425
* the ARC Discovery Early Career Researcher Award  DE200101577
* the ARC Discovery Projects DP200102364 and DP210102670
* The Blavatnik ICRC at Tel-Aviv University  
* Data61, CSIRO
* the National Science Foundation under grants CNS-1954712 and CNS-2130671
* the National Science Foundation Expedition on the Science of Deep Specification (award CCF-1521584)
* the Phoenix HPC service at the University of Adelaide
* and gifts from Amazon Web Services, AMD, Facebook, Google, Intel and the Tezos Foundation.
