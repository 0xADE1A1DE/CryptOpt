CC?=gcc
tmp=./pre-

all: field.c

%.json: %.ll llvm2cryptopt.sed
	@echo "["> $(tmp)${@}
	sed -f llvm2cryptopt.sed -n ${<} >>$(tmp)${@}
	@echo "]" >>$(tmp)${@}
	tr -d '\n' <$(tmp)${@} |\
		sed -e 's/},[\t ]*]/}]/g' |\
		jq >${@}

%.ll: %.c
	clang -S ${<} -emit-llvm -O1 -o - |\
	opt -S -enable-new-pm  -passes='default<O1>' -print-after-all \
		-o ${@} 2>passes
	
# preprocessed.ssa: preprocessed.c
# gcc -S -fdump-tree-all -O1 ${?}
# -time-passes -print-after-all
# -fdump-tree-all-all -fdump-rtl-all-all -fdump-ipa-all-all -O1

# from https://github.com/bitcoin-core/secp256k1/blob/423b6d19d373f1224fd671a982584d7e7900bc93/src/field_5x52_int128_impl.h
field.c: field_5x52_int128_impl.h
	printf "%s\n%s\n%s\n%s\n" 'typedef __int128 uint128_t;' '#define static' '#define SECP256K1_INLINE' '#define SECP256K1_RESTRICT restrict ' > $(tmp)${@}
	sed -e '/^  VERIFY_CHECK/d' -e '/^  VERIFY_BITS/d' ${?} >> $(tmp)${@}
	$(CC) $(CFLAGS) -E $(tmp)${@} -o ${@}


%.so: field.c 
	$(CC) $(CFLAGS) -fPIC -shared -o ${@} ${?}
	# $(CC) $(CFLAGS) -DUSE_ASM_X86_64 -fPIC -shared -o ${@} ${?}

distclean:
	rm -f *.c
	rm -f *.ll
	rm -f passes
	rm -f $(tmp)field.json field.json
