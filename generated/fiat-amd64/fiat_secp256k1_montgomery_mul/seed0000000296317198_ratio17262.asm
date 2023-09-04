SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r10
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, r9
mov r9, rdi
xor rdx, rdx
adox r9, r13
mov r13, rdi
adox r13, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r14
mov [ rsp - 0x38 ], rbp
mulx rbp, r14, [ rax + 0x8 ]
adox rdi, rbx
mov rdx, 0x0 
adox rbx, rdx
adcx r14, r15
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r14
mulx r14, r15, [ rax + 0x10 ]
adcx r15, rbp
adcx rcx, r14
mov rdx, [ rsi + 0x0 ]
mulx r14, rbp, [ rax + 0x8 ]
adc r8, 0x0
test al, al
adox rbp, r11
adcx r12, r10
adcx r9, rbp
mov rdx, [ rax + 0x10 ]
mulx r10, r12, [ rsi + 0x0 ]
adox r12, r14
adcx r13, r12
mov rdx, [ rax + 0x18 ]
mulx r14, r11, [ rsi + 0x0 ]
adox r11, r10
adcx rdi, r11
mov rdx, 0x0 
adox r14, rdx
adcx rbx, r14
mov rdx, [ rax + 0x8 ]
mulx r10, rbp, [ rsi + 0x18 ]
mov rdx, -0x2 
inc rdx
adox rbp, [ rsp - 0x38 ]
setc r12b
clc
adcx r9, [ rsp - 0x40 ]
adcx r13, [ rsp - 0x30 ]
mov r11, 0xd838091dd2253531 
mov rdx, r11
mulx r14, r11, r9
adcx r15, rdi
adcx rcx, rbx
movzx r14, r12b
adcx r14, r8
mov rdx, [ rsi + 0x18 ]
mulx rdi, r8, [ rax + 0x10 ]
adox r8, r10
mov rdx, 0xfffffffefffffc2f 
mulx rbx, r12, r11
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], r8
mulx r8, r10, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x20 ], rbp
mov [ rsp - 0x18 ], r14
mulx r14, rbp, r11
adox r10, rdi
mov r11, rbp
setc dil
clc
adcx r11, rbx
mov rbx, rbp
adcx rbx, r14
adcx rbp, r14
mov rdx, 0x0 
adox r8, rdx
adc r14, 0x0
mov [ rsp - 0x10 ], r8
xor r8, r8
adox r12, r9
adox r11, r13
adox rbx, r15
adox rbp, rcx
mov rdx, [ rsi + 0x10 ]
mulx r9, r12, [ rax + 0x0 ]
adcx r12, r11
mov rdx, [ rsi + 0x10 ]
mulx r15, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ rax + 0x18 ]
adox r14, [ rsp - 0x18 ]
movzx rdx, dil
adox rdx, r8
mov rdi, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x8 ], r10
mulx r10, r8, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r13, r9
adcx r13, rbx
adox r8, r15
adox rcx, r10
mov rbx, 0x0 
adox r11, rbx
adcx r8, rbp
adcx rcx, r14
mov rbp, 0xd838091dd2253531 
mov rdx, rbp
mulx r9, rbp, r12
mov r9, 0xfffffffefffffc2f 
mov rdx, rbp
mulx r15, rbp, r9
adcx r11, rdi
mov r14, 0xffffffffffffffff 
mulx r10, rdi, r14
mov rdx, -0x3 
inc rdx
adox rbp, r12
mov rbp, rdi
setc r12b
clc
adcx rbp, r15
adox rbp, r13
mov r13, rdi
adcx r13, r10
adcx rdi, r10
adox r13, r8
adcx r10, rbx
clc
adcx rbp, [ rsp - 0x48 ]
mov r8, 0xd838091dd2253531 
mov rdx, r8
mulx r15, r8, rbp
adcx r13, [ rsp - 0x20 ]
adox rdi, rcx
mov rdx, r8
mulx r15, r8, r14
adox r10, r11
movzx rcx, r12b
adox rcx, rbx
adcx rdi, [ rsp - 0x28 ]
adcx r10, [ rsp - 0x8 ]
adcx rcx, [ rsp - 0x10 ]
mulx r11, r12, r9
mov rdx, -0x3 
inc rdx
adox r12, rbp
mov r12, r8
setc bpl
clc
adcx r12, r11
mov r11, r8
adcx r11, r15
adcx r8, r15
adox r12, r13
adox r11, rdi
adox r8, r10
adcx r15, rbx
adox r15, rcx
movzx r13, bpl
adox r13, rbx
mov rdi, r12
sub rdi, r9
mov r10, r11
sbb r10, r14
mov rbp, r8
sbb rbp, r14
mov rcx, r15
sbb rcx, r14
sbb r13, rbx
cmovc rcx, r15
cmovc r10, r11
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x18 ], rcx
cmovc rbp, r8
cmovc rdi, r12
mov [ r13 + 0x10 ], rbp
mov [ r13 + 0x0 ], rdi
mov [ r13 + 0x8 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7262
; seed 1761998377381170 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1570017 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=64, initial num_batches=31): 94978 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.060494886361103097
; number reverted permutation / tried permutation: 71235 / 95287 =74.758%
; number reverted decision / tried decision: 62829 / 94712 =66.337%
; validated in 3.767s
