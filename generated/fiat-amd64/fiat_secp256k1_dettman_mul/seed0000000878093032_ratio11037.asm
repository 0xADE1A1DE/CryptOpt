SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x48 ], r14
mov [ rsp - 0x40 ], r13
mulx r13, r14, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], r10
mulx r10, r11, [ rsi + 0x0 ]
add r15, r14
adcx r13, rdi
mov rdx, [ rsi + 0x0 ]
mulx r14, rdi, [ rax + 0x8 ]
add rbp, r9
adcx rbx, r12
mov rdx, [ rsi + 0x20 ]
mulx r12, r9, [ rax + 0x0 ]
xor rdx, rdx
adox r15, rcx
adox r8, r13
adcx rbp, [ rsp - 0x30 ]
adcx rbx, [ rsp - 0x38 ]
mov rdx, [ rax + 0x18 ]
mulx r13, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], r11
mulx r11, r10, [ rsi + 0x18 ]
test al, al
adox r9, r10
adox r11, r12
mov rdx, [ rsi + 0x10 ]
mulx r10, r12, [ rax + 0x10 ]
mov rdx, [ rsp - 0x40 ]
adcx rbp, rcx
adcx r13, rbx
mov rbx, 0x1000003d10 
mov [ rsp - 0x18 ], r14
mulx r14, rcx, rbx
xor rdx, rdx
adox rcx, rbp
adox r13, r14
mov rdx, [ rax + 0x20 ]
mulx r14, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], rdi
mulx rdi, rbx, [ rax + 0x18 ]
adcx r9, r12
adcx r10, r11
mov rdx, [ rsp - 0x48 ]
test al, al
adox r9, rbx
adox rdi, r10
adcx r9, rbp
adcx r14, rdi
mov r11, 0x1000003d10000 
mulx rbp, r12, r11
mov rbx, rcx
shrd rbx, r13, 52
mov r13, 0xfffffffffffff 
and rcx, r13
adox r9, rbx
mov r10, 0x0 
adox r14, r10
adcx r12, r9
adcx r14, rbp
mov rdx, r12
and rdx, r13
shrd r12, r14, 52
mov rdi, rdx
shr rdi, 48
mov rbp, rdx
mov rdx, [ rax + 0x20 ]
mulx r9, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox r15, rbx
adox r9, r8
adcx r15, r12
adc r9, 0x0
mov r10, r15
shrd r10, r9, 52
mov r8, 0xffffffffffff 
and rbp, r8
and r15, r13
mov rdx, [ rax + 0x18 ]
mulx r12, r14, [ rsi + 0x18 ]
shl r15, 4
mov rdx, [ rax + 0x20 ]
mulx r9, rbx, [ rsi + 0x10 ]
lea rdi, [ rdi + r15 ]
mov rdx, [ rsi + 0x20 ]
mulx r8, r15, [ rax + 0x10 ]
test al, al
adox r15, r14
adox r12, r8
adcx r15, rbx
adcx r9, r12
mov rdx, 0x1000003d1 
mulx rbx, r14, rdi
mov rdx, [ rsi + 0x8 ]
mulx r8, rdi, [ rax + 0x0 ]
xor rdx, rdx
adox r15, r10
adox r9, rdx
mov r10, r15
and r10, r13
mov rdx, [ rsi + 0x20 ]
mulx r13, r12, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x8 ], rbp
mulx rbp, r11, [ rax + 0x20 ]
adox r12, r11
adox rbp, r13
shrd r15, r9, 52
test al, al
adox r12, r15
mov rdx, 0x0 
adox rbp, rdx
mov rdx, [ rax + 0x0 ]
mulx r13, r9, [ rsi + 0x0 ]
adcx rdi, [ rsp - 0x10 ]
adcx r8, [ rsp - 0x18 ]
test al, al
adox r14, r9
adox r13, rbx
mov rdx, 0x1000003d10 
mulx r11, rbx, r10
mov r10, r14
shrd r10, r13, 52
xor r15, r15
adox rdi, r10
adox r8, r15
adcx rbx, rdi
adcx r8, r11
mov r9, rbx
shrd r9, r8, 52
mov r13, 0xfffffffffffff 
and rbx, r13
mov rdx, [ rsi + 0x10 ]
mulx r10, r11, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rdi, [ rax + 0x8 ]
adox r11, rdi
adox r8, r10
adcx r11, [ rsp - 0x20 ]
adcx r8, [ rsp - 0x28 ]
mov rdx, 0x1000003d10 
mulx rdi, r10, r12
test al, al
adox r11, r9
adox r8, r15
adcx r10, r11
adcx r8, rdi
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x8 ], rbx
mov r9, 0x1000003d10000 
mov rdx, rbp
mulx rbx, rbp, r9
mov rdx, r10
shrd rdx, r8, 52
lea rdx, [ rdx + rcx ]
xor rcx, rcx
adox rbp, rdx
adox rbx, rcx
and r14, r13
mov r15, rbp
and r15, r13
and r10, r13
mov [ r12 + 0x10 ], r10
mov [ r12 + 0x18 ], r15
mov [ r12 + 0x0 ], r14
shrd rbp, rbx, 52
add rbp, [ rsp - 0x8 ]
mov [ r12 + 0x20 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.1037
; seed 2360667305336568 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2345310 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=118, initial num_batches=31): 146690 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06254610264741121
; number reverted permutation / tried permutation: 74208 / 95086 =78.043%
; number reverted decision / tried decision: 56100 / 94913 =59.107%
; validated in 0.549s
