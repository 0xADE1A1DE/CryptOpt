

# Error exit codes:
`node /dist/CryptOpt.js` may return a non-zero exit code. Here is what each means:
( I'm trying to put the error into `errors/errors.ts`, not entirely completed yet.)
(**whisper**...This may be out of date, I'm giving my best to keep it up to date, so that I can look up error-codes myself - but you know how things are with documentation...)


| Code  | Meaning |
--|--
| 1     | deprecated
| 2     | deprecated
| 3     | deprecated
| 4     | When parsing the mean-Values from executing the measuresuite, one of the means is NaN. This should not happen.
| 5     | deprecated
| 6     | The generated code was not proven correct.
| 7     | Internal. Models' instance has been requested, but there is no method set. Set `Model.method=...` first.
| 8     | deprecated
| 9     | deprecated
| 10    | deprecated
| 11    | deprecated
| 12    | deprecated
| 13    | program was interruped with SIGINT/SIGTERM. State was persisted at the current evaluation.
| 14    | When Statistics could not be calculated, it exits.
| 15    | When measuresuite does not yield more than one datapoint.
| 16    | When there is no hot decisions to mutate.
| 17    | deprecated
| 18    | deprecated
| 20    | When calling the measuresuite.measure an error was thrown. 
| 21    | The result was incorrect (compared to the function\_check). `./tested_incorrect_A.asm` and `./tested_incorrect_B.asm` was written.
| 22    | The asmfunction could not be assembled. `./tested_incorrect_A.asm` and `./tested_incorrect_B.asm` was written.
| 30    | deprecated
| 1000  | Other; Fingers Crossed, that something has been printed to `stderr`.
---------------

