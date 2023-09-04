SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rax
mulx rax, rdi, [ rsi + 0x18 ]
xor rdx, rdx
adox r8, rbp
adcx r12, r10
mov rdx, [ rsi + 0x10 ]
mulx rbp, r10, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], r12
mov [ rsp - 0x38 ], r8
mulx r8, r12, [ rsi + 0x10 ]
adcx r10, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r10
mulx r10, r13, rdx
adcx r12, rbp
adox r14, r9
adox r11, r15
mov rdx, 0xffffffffffffffff 
mulx r15, r9, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, 0x0 
adox rcx, rdx
adc r8, 0x0
mov [ rsp - 0x20 ], r8
xor r8, r8
adox r9, r13
adcx rbp, r10
mov rdx, [ rsi + 0x10 ]
mulx r10, r9, [ rsi + 0x0 ]
adcx r9, r12
adcx rdi, r10
adcx rax, r8
mov rdx, 0xffffffff 
mulx r10, r12, r13
clc
adcx r12, r15
adox r12, rbp
adcx r10, r8
clc
adcx rbx, r12
adox r10, r9
mulx rbp, r15, rbx
mov rdx, [ rsi + 0x18 ]
mulx r12, r9, [ rsi + 0x0 ]
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x18 ], r9
mulx r9, r8, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x10 ], rbp
mulx rbp, r13, [ rsi + 0x10 ]
adox r8, rdi
adcx r10, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x8 ], rbp
mulx rbp, rdi, [ rsi + 0x8 ]
adox r9, rax
adcx r14, r8
adcx r11, r9
seto dl
mov rax, -0x2 
inc rax
adox rdi, r12
adox r13, rbp
movzx r12, dl
adcx r12, rcx
mov rcx, 0xffffffffffffffff 
mov rdx, rbx
mulx r8, rbx, rcx
setc bpl
clc
adcx r15, r8
mov r9, [ rsp - 0x10 ]
mov r8, 0x0 
adcx r9, r8
clc
adcx rbx, rdx
adcx r15, r10
adcx r9, r14
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r10, rdx
adox r10, [ rsp - 0x8 ]
mov rdx, 0xffffffff00000001 
mulx rax, r8, rbx
mov rbx, 0x0 
adox r14, rbx
adcx r8, r11
adcx rax, r12
mov r11, -0x3 
inc r11
adox r15, [ rsp - 0x48 ]
mov rdx, r15
mulx r12, r15, rcx
adox r9, [ rsp - 0x40 ]
adox r8, [ rsp - 0x30 ]
movzx rbx, bpl
mov r11, 0x0 
adcx rbx, r11
adox rax, [ rsp - 0x28 ]
mov rbp, 0xffffffff 
mulx rcx, r11, rbp
adox rbx, [ rsp - 0x20 ]
clc
adcx r11, r12
mov r12, 0x0 
adcx rcx, r12
clc
adcx r15, rdx
adcx r11, r9
adcx rcx, r8
setc r15b
clc
adcx r11, [ rsp - 0x18 ]
mov r9, 0xffffffff00000001 
mulx r12, r8, r9
adcx rdi, rcx
seto dl
mov rcx, 0x0 
dec rcx
movzx r15, r15b
adox r15, rcx
adox rax, r8
adox r12, rbx
movzx rbx, dl
mov r15, 0x0 
adox rbx, r15
mov rdx, 0xffffffffffffffff 
mulx r15, r8, r11
inc rcx
adox r8, r11
adcx r13, rax
adcx r10, r12
adcx r14, rbx
mov rdx, r11
mulx r8, r11, rbp
setc al
clc
adcx r11, r15
adcx r8, rcx
adox r11, rdi
adox r8, r13
mulx r12, rdi, r9
adox rdi, r10
adox r12, r14
movzx rdx, al
adox rdx, rcx
mov rbx, 0xffffffffffffffff 
mov r15, r11
sub r15, rbx
mov r13, r8
sbb r13, rbp
mov r10, rdi
sbb r10, rcx
mov rax, r12
sbb rax, r9
sbb rdx, rcx
cmovc r10, rdi
cmovc r15, r11
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], r15
mov [ rdx + 0x10 ], r10
cmovc r13, r8
cmovc rax, r12
mov [ rdx + 0x8 ], r13
mov [ rdx + 0x18 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4628
; seed 1438751944750812 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1894339 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=77, initial num_batches=31): 122800 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06482472250214982
; number reverted permutation / tried permutation: 88610 / 94898 =93.374%
; number reverted decision / tried decision: 88537 / 95101 =93.098%
; validated in 2.45s
