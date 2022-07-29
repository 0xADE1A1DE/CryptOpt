

# Error exit codes:
`node /dist/CryptOpt.js` may return a non-zero exit code. Here is what each means:
( I'm trying to put the error into `errors/errors.ts`, not entirely completed yet.)
(**whisper**...This may be out of date, I'm giving my best to keep it up to date, so that I can look up error-codes myself - but you know how things are with documentation...)


| Code  | Meaning |
--|--
| 4     | When parsing the mean-Values from executing the measuresuite, one of the means is NaN. This should not happen.
| 7     | Internal. Models' instance has been requested, but there is no method set. Set `Model.method=...` first.
| 13    | program was interrupted with SIGINT/SIGTERM. State was persisted at the current evaluation.
| 16    | When there is no hot decisions to mutate.
| 1000  | Other; Fingers Crossed, that something has been printed to `stderr`.
---------------

