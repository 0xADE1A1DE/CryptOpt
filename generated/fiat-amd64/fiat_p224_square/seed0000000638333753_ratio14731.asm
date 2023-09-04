SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbx
mov r15, 0xffffffff 
mov rdx, r14
mov [ rsp - 0x50 ], rdi
mulx rdi, r14, r15
mov r15, rdx
mov [ rsp - 0x48 ], r9
xor r9, r9
adox r15, rbx
mov r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], rbx
mov [ rsp - 0x38 ], r8
mulx r8, rbx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r9
mov [ rsp - 0x28 ], r8
mulx r8, r9, [ rsi + 0x8 ]
adcx r12, rbp
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], r8
mulx r8, rbp, [ rsi + 0x18 ]
adcx r11, r13
adcx rbp, rcx
mov rdx, 0x0 
adcx r8, rdx
mov rcx, 0xffffffffffffffff 
mov rdx, r15
mulx r13, r15, rcx
mov rcx, 0xffffffff00000000 
mov [ rsp - 0x18 ], r9
mov [ rsp - 0x10 ], rbx
mulx rbx, r9, rcx
adox r9, r12
clc
adcx r15, rbx
adcx r14, r13
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx rax, r9
adox r15, r11
adox r14, rbp
mov rdx, [ rsi + 0x8 ]
mulx r11, r12, rdx
adox rdi, r8
mov rdx, 0xffffffffffffffff 
mulx r8, rbp, rax
mov rdx, [ rsi + 0x10 ]
mulx r13, r8, [ rsi + 0x8 ]
seto dl
mov rbx, -0x2 
inc rbx
adox r12, r10
adcx r12, r15
adox r8, r11
mov r10b, dl
mov rdx, [ rsi + 0x18 ]
mulx r15, r9, [ rsi + 0x8 ]
adox r9, r13
mov rdx, 0x0 
adox r15, rdx
adcx r8, r14
mov rdx, rbp
mulx r14, rbp, rcx
adcx r9, rdi
mov r11, rdx
inc rbx
adox r11, rax
adox rbp, r12
movzx r11, r10b
adcx r11, r15
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r10, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mulx r12, r13, rax
setc r15b
clc
adcx r13, r14
adox r13, r8
mov r8, 0xffffffff 
mov rdx, rax
mulx r14, rax, r8
adcx rax, r12
adcx r14, rbx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r12, [ rsi + 0x10 ]
clc
adcx r10, rbp
mov rdx, 0xffffffffffffffff 
mulx r8, rbp, r10
adox rax, r9
adox r14, r11
mulx r9, r8, rbp
seto r11b
mov rcx, -0x2 
inc rcx
adox r12, rdi
movzx rdi, r11b
movzx r15, r15b
lea rdi, [ rdi + r15 ]
adcx r12, r13
adox rbx, [ rsp - 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r13, r15, [ rsi + 0x18 ]
adox r15, [ rsp - 0x28 ]
mov rdx, 0x0 
adox r13, rdx
adcx rbx, rax
mov rax, 0xffffffff 
mov rdx, rbp
mulx r11, rbp, rax
adcx r15, r14
adcx r13, rdi
mov r14, 0xffffffff00000000 
mulx rcx, rdi, r14
mov rax, -0x2 
inc rax
adox r8, rcx
adox rbp, r9
mov r9, 0x0 
adox r11, r9
mov rcx, -0x3 
inc rcx
adox rdx, r10
adox rdi, r12
adox r8, rbx
adox rbp, r15
adox r11, r13
mov rdx, [ rsp - 0x30 ]
seto r10b
mov r12, -0x3 
inc r12
adox rdx, [ rsp - 0x18 ]
mov r12, [ rsp - 0x20 ]
adox r12, [ rsp - 0x38 ]
movzx rbx, r10b
adcx rbx, r9
mov r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, r13, rdx
clc
adcx rdi, [ rsp - 0x40 ]
adox r13, [ rsp - 0x48 ]
adcx r15, r8
adcx r12, rbp
adcx r13, r11
mov rdx, 0xffffffffffffffff 
mulx rbp, r8, rdi
adox r10, r9
adcx r10, rbx
mov rdx, r8
mulx rbp, r8, r14
mov r11, 0xffffffffffffffff 
mulx r9, rbx, r11
inc rax
adox rbx, rbp
mov rbp, 0xffffffff 
mulx rcx, rax, rbp
setc bpl
clc
adcx rdx, rdi
adcx r8, r15
adcx rbx, r12
adox rax, r9
adcx rax, r13
mov rdx, 0x0 
adox rcx, rdx
adcx rcx, r10
movzx rdi, bpl
adc rdi, 0x0
mov r15, r8
sub r15, 0x1
mov r12, rbx
sbb r12, r14
mov r13, rax
sbb r13, r11
mov rbp, 0xffffffff 
mov r10, rcx
sbb r10, rbp
sbb rdi, rdx
cmovc r12, rbx
cmovc r10, rcx
cmovc r15, r8
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x0 ], r15
cmovc r13, rax
mov [ rdi + 0x10 ], r13
mov [ rdi + 0x8 ], r12
mov [ rdi + 0x18 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.4731
; seed 3189074680423529 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1071365 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=119, initial num_batches=31): 78144 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0729387276978434
; number reverted permutation / tried permutation: 73342 / 95204 =77.037%
; number reverted decision / tried decision: 65040 / 94795 =68.611%
; validated in 1.87s
