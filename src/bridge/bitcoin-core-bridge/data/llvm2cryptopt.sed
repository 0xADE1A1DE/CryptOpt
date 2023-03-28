#!/usr/bin/env sed
# %N -> xN
s/%\([[:digit:]]\+\)/x\1/g

#for now, make i32->i64, lets see if we produce correct results.
s/i32/i64/g


# xNN = function_name OPT_args iNN (datatype) whatever -> JSON
s/\(x[[:digit:]]\+\) = \([[:lower:]]\+\) \([[:lower:][:space:]]\+\)*\(\(%\(struct\.[[:alnum:]_]\+\)\)\|\(i[[:digit:]]\{1,3\}\)\)\([[:graph:][:space:]]\+\)/{ "name":["\1"],"operation":"\2","modifiers":"\3","datatype":"\6\7","arguments": "\6\7\8"},\t/p

# stores are a little differnt
s/store i64 \(x[[:digit:]]*\), [i64ptr]* \(x[[:digit:]]*\), \(.*\)/{ "name":["_"],"operation":"store", "datatype":"i64", "arguments":"i64* \2, i64 \1", "modifiers":"\3"},/p

# json-boilerplate
s/ret void/]/p
s/^}/},/p

#function name
s/define dso_local void @\([[:alnum:]_]\+\)(\([a-z ]\+\) \(x0\)\(\(, [a-z ]\+ x[[:digit:]]\+\)\+\)) local_unnamed_addr #. {/{  "operation":"\1", "arguments":["\4"], "returns": [{ "datatype": "i64*", "name": "\3"}], "body":[/p

# s/%\(struct\.[[:alnum:]_]\+\) = type { \(\[[[:alnum:] ]*\]\) }/{ "name": "\1", "definition": "\2"},/p
