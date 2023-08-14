# Generated source files

## libsecp256k1 --  Curve secp256k1

The [Bitcoin core library](https://github.com/bitcoin-core/secp256k1) has hand-tuned assembly. Fiat Cryptography is able to generate code with a compatible API. CryptOpt optimized the code for nine architectures and the on-average-best is here.

The prime field is `p = 2^256 - 4294968273`.

Fiat invocation: 
```bash
./dettman_multiplication --lang C --inline-internal --internal-static --use-value-barrier secp256k1_dettman 64 5 48 '2^256 - 4294968273'
```
Average speedup over *AMD Ryzen Theadripper 1900X*, *AMD Ryzen 7 5800X*, *AMD Ryzen 9 5950X*, *AMD Ryzen 9 7950X*, *Intel Core i7-6770HQ*, *Intel Core i7-10710U*, *Intel Core i9-10900K*, *Intel Core i7-11700KF*, *Intel Core i9-13900KF*:

| Primitive  | Mul (Clang) | Mul (GCC)  | Square (Clang) | Square (GCC) |
| -----------|-------------|------------|----------------|--------------|
| secp256k1  | 1.10        | 1.19       | 1.08           | 1.22         |

X-Validation Matrix [here](./secp256k1/xval.pdf) and average Cycle Mean - count per file [here](./secp256k1/Readme.md).

## BLS12 Curves
The [AU-COBRA/AUCurves project](https://github.com/AU-COBRA/AUCurves) works on the BLS12-381 elliptic curves.

The prime fields are `p=(z-1)^2*(z^4-z^2+1)/3+z` and `q=z^4-z^2+1` for `z=-0xd201000000010000`.

Fiat invocations:
```bash
./word_by_word_montgomery --lang C --inline-internal --internal-static --use-value-barrier bls12_381_q 64 '(-0xd201000000010000)^4 -(-0xd201000000010000)^2 + 1'
./word_by_word_montgomery --lang C --inline-internal --internal-static --use-value-barrier bls12_381_p 64 '(-0xd201000000010000 -1)^2 * ((-0xd201000000010000)^4 - (-0xd201000000010000)^2 + 1)/3 + (-0xd201000000010000)'
```

Average speedup over *AMD Ryzen Theadripper 1900X*, *AMD Ryzen 7 5800X*, *AMD Ryzen 9 5950X*, *AMD Ryzen 9 7950X*, *Intel Core i7-6770HQ*, *Intel Core i7-10710U*, *Intel Core i9-10900K*, *Intel Core i7-11700KF*, *Intel Core i9-13900KF*:

| Primitive   | Mul (Clang) | Mul (GCC)  | Square (Clang) | Square (GCC) |
| ------------|-------------|------------|----------------|--------------|
| BLS12-381 q | 1.76        | 2.51       | 1.74           | 2.61         |
| BLS12-381 p | 1.80        | 2.52       | 1.73           | 2.46         |

X-Validation Matrix [here](./bls12/xval.pdf) and average Cycle Mean - count per file [here](./bls12/Readme.md).

## Fiat Cryptography

X-Validation Matrix [here](./fiat-amd64/xval.pdf) and average Cycle Mean - count per file [here](./fiat-amd64/Readme.md).

| Primitive          | Mul (Clang) | Mul (GCC)  | Square (Clang) | Square (GCC) |
| -------------------|-------------|------------|----------------|--------------|
|         Curve25519 | 1.25        | 1.15       |   1.22         | 1.16         |
| Curve25519-Solinas | 1.61        | 2.52       |   1.43         | 2.74         |
|              P-224 | 1.56        | 2.53       |   1.42         | 2.58         |
|              P-256 | 1.69        | 2.60       |   1.64         | 2.58         |
|              P-384 | 1.47        | 2.48       |   1.38         | 2.53         |
|           SIKEp434 | 1.91        | 2.74       |   1.81         | 2.55         |
|           Curve448 | 1.19        | 0.99       |   1.08         | 1.04         |
|              P-521 | 1.32        | 1.00       |   1.36         | 1.06         |
|           Poly1305 | 1.16        | 1.23       |   1.14         | 1.27         |
|  secp256k1-Dettman | 1.08        | 1.22       |   1.05         | 1.14         |
|          secp256k1 | 1.85        | 2.66       |   1.76         | 2.59         |
