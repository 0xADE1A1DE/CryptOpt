SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, 0xd838091dd2253531 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r10
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r14
mulx r14, rdi, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], r15
mov [ rsp - 0x38 ], r12
mulx r12, r15, [ rax + 0x10 ]
test al, al
adox rdi, r11
adox rcx, r14
mov rdx, 0xfffffffefffffc2f 
mulx r14, r11, r13
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x30 ], r12
mov [ rsp - 0x28 ], r15
mulx r15, r12, r13
mov r13, r12
adcx r13, r14
mov r14, r12
adcx r14, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r9
mov [ rsp - 0x18 ], rbp
mulx rbp, r9, [ rax + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x10 ], rbp
mov [ rsp - 0x8 ], r9
mulx r9, rbp, [ rsi + 0x0 ]
adox rbp, r8
mov rdx, 0x0 
adox r9, rdx
mov r8, -0x3 
inc r8
adox r11, r10
adox r13, rdi
adox r14, rcx
adcx r12, r15
adox r12, rbp
adcx r15, rdx
adox r15, r9
mov rdx, [ rsi + 0x8 ]
mulx r10, r11, [ rax + 0x10 ]
clc
adcx rbx, [ rsp - 0x18 ]
seto dl
inc r8
adox r13, [ rsp - 0x20 ]
mov rdi, 0xd838091dd2253531 
xchg rdx, rdi
mulx rbp, rcx, r13
adcx r11, [ rsp - 0x38 ]
adox rbx, r14
mov rbp, 0xfffffffefffffc2f 
mov rdx, rbp
mulx r9, rbp, rcx
adox r11, r12
mov rdx, [ rax + 0x18 ]
mulx r12, r14, [ rsi + 0x8 ]
adcx r14, r10
mov rdx, 0xffffffffffffffff 
mulx r8, r10, rcx
mov rcx, 0x0 
adcx r12, rcx
mov rdx, r10
clc
adcx rdx, r9
adox r14, r15
mov r15, r10
adcx r15, r8
adcx r10, r8
movzx r9, dil
adox r9, r12
setc dil
clc
adcx rbp, r13
adcx rdx, rbx
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r12, [ rax + 0x8 ]
adcx r15, r11
adcx r10, r14
movzx rdx, dil
lea rdx, [ rdx + r8 ]
adcx rdx, r9
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, r8, [ rax + 0x10 ]
seto dl
mov rdi, -0x2 
inc rdi
adox r13, rbp
movzx r9, dl
mov rbp, 0x0 
adcx r9, rbp
clc
adcx r12, rbx
adox r12, r15
adcx r8, rcx
adox r8, r10
mov rdx, 0xd838091dd2253531 
mulx rcx, rbx, r13
mov rdx, [ rax + 0x18 ]
mulx r15, rcx, [ rsi + 0x10 ]
adcx rcx, r14
adox rcx, r11
adcx r15, rbp
adox r15, r9
mov rdx, 0xffffffffffffffff 
mulx r11, r10, rbx
mov r14, 0xfffffffefffffc2f 
mov rdx, r14
mulx r9, r14, rbx
mov rbx, r10
clc
adcx rbx, r9
mov r9, r10
adcx r9, r11
adcx r10, r11
adcx r11, rbp
clc
adcx r14, r13
adcx rbx, r12
adcx r9, r8
adcx r10, rcx
adcx r11, r15
mov rdx, [ rax + 0x8 ]
mulx r13, r14, [ rsi + 0x18 ]
seto dl
mov r12, -0x3 
inc r12
adox r14, [ rsp - 0x40 ]
movzx r8, dl
adcx r8, rbp
clc
adcx rbx, [ rsp - 0x48 ]
adcx r14, r9
mov rcx, 0xd838091dd2253531 
mov rdx, rcx
mulx r15, rcx, rbx
adox r13, [ rsp - 0x28 ]
adcx r13, r10
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx r9, r15, rcx
mov r10, [ rsp - 0x30 ]
adox r10, [ rsp - 0x8 ]
adcx r10, r11
mov r11, [ rsp - 0x10 ]
adox r11, rbp
mov rbp, 0xfffffffefffffc2f 
mov rdx, rcx
mulx r12, rcx, rbp
inc rdi
adox rcx, rbx
adcx r11, r8
mov rcx, r15
setc r8b
clc
adcx rcx, r12
mov rbx, r15
adcx rbx, r9
adcx r15, r9
adox rcx, r14
adox rbx, r13
adcx r9, rdi
adox r15, r10
adox r9, r11
movzx r14, r8b
adox r14, rdi
mov rdx, rcx
sub rdx, rbp
mov r13, 0xffffffffffffffff 
mov r10, rbx
sbb r10, r13
mov r12, r15
sbb r12, r13
mov r8, r9
sbb r8, r13
sbb r14, rdi
cmovc r10, rbx
cmovc rdx, rcx
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x8 ], r10
cmovc r12, r15
cmovc r8, r9
mov [ r14 + 0x18 ], r8
mov [ r14 + 0x0 ], rdx
mov [ r14 + 0x10 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.7036
; seed 3019824927725863 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1448595 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=92, initial num_batches=31): 70878 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.048928789620287245
; number reverted permutation / tried permutation: 80848 / 95230 =84.898%
; number reverted decision / tried decision: 66307 / 94769 =69.967%
; validated in 2.403s
