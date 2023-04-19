SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rax
mov r13, 0x53bda402fffe5bfe 
mov rdx, r12
mov [ rsp - 0x60 ], r14
mulx r14, r12, r13
mov [ rsp - 0x58 ], r15
mov r15, 0x3339d80809a1d805 
mov [ rsp - 0x50 ], rdi
mulx rdi, r13, r15
mov r15, 0x73eda753299d7d48 
mov [ rsp - 0x48 ], r9
mov [ rsp - 0x40 ], r8
mulx r8, r9, r15
mov r15, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], rcx
mov [ rsp - 0x30 ], r11
mulx r11, rcx, [ rsi + 0x10 ]
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x28 ], r11
mov [ rsp - 0x20 ], rcx
mulx rcx, r11, r15
xor r15, r15
adox rbx, r10
adcx r12, rcx
adcx r13, r14
mov rdx, [ rsi + 0x10 ]
mulx r14, r10, [ rsi + 0x0 ]
adox r10, rbp
adcx r9, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, rbp, [ rsi + 0x0 ]
adox rbp, r14
adcx r8, r15
clc
adcx r11, rax
adcx r12, rbx
adcx r13, r10
adcx r9, rbp
adox rdi, r15
mov rdx, [ rsi + 0x8 ]
mulx rax, r11, rdx
adcx r8, rdi
mov rdx, [ rsi + 0x0 ]
mulx rbx, rcx, [ rsi + 0x8 ]
mov rdx, -0x3 
inc rdx
adox rcx, r12
mov r14, 0xfffffffeffffffff 
mov rdx, r14
mulx r10, r14, rcx
setc r10b
clc
adcx r11, rbx
adcx rax, [ rsp - 0x30 ]
mov rbp, [ rsp - 0x38 ]
adcx rbp, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x10 ]
mulx rdi, r12, [ rsi + 0x0 ]
mov rdx, [ rsp - 0x48 ]
adcx rdx, r15
mov rbx, 0x73eda753299d7d48 
xchg rdx, r14
mov [ rsp - 0x18 ], r12
mulx r12, r15, rbx
adox r11, r13
adox rax, r9
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r9, [ rsi + 0x8 ]
adox rbp, r8
clc
adcx r9, rdi
movzx rdx, r10b
adox rdx, r14
mov r10, 0xffffffff00000001 
xchg rdx, r13
mulx rdi, r8, r10
seto r14b
mov r10, -0x2 
inc r10
adox r8, rcx
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mulx r10, rcx, rdx
adcx rcx, rbx
adcx r10, [ rsp - 0x20 ]
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x10 ], r10
mulx r10, rbx, r8
mov rdx, [ rsp - 0x28 ]
mov [ rsp - 0x8 ], rcx
mov rcx, 0x0 
adcx rdx, rcx
clc
adcx rbx, rdi
adox rbx, r11
mov r11, 0x3339d80809a1d805 
xchg rdx, r11
mulx rcx, rdi, r8
adcx rdi, r10
adox rdi, rax
adcx r15, rcx
mov r8, 0x0 
adcx r12, r8
adox r15, rbp
clc
adcx rbx, [ rsp - 0x18 ]
mov rax, 0xfffffffeffffffff 
mov rdx, rbx
mulx rbp, rbx, rax
mov rbp, 0xffffffff00000001 
xchg rdx, rbp
mulx rcx, r10, rbx
adcx r9, rdi
adox r12, r13
movzx r13, r14b
adox r13, r8
adcx r15, [ rsp - 0x8 ]
adcx r12, [ rsp - 0x10 ]
mov r14, 0x53bda402fffe5bfe 
mov rdx, rbx
mulx rdi, rbx, r14
adcx r11, r13
mov r13, -0x3 
inc r13
adox rbx, rcx
mov rcx, 0x3339d80809a1d805 
mulx r13, r8, rcx
adox r8, rdi
setc dil
clc
adcx r10, rbp
mov r10, 0x73eda753299d7d48 
mulx rcx, rbp, r10
adox rbp, r13
adcx rbx, r9
mov rdx, [ rsi + 0x10 ]
mulx r13, r9, [ rsi + 0x18 ]
adcx r8, r15
mov rdx, [ rsi + 0x18 ]
mulx r14, r15, [ rsi + 0x0 ]
mov rdx, 0x0 
adox rcx, rdx
adcx rbp, r12
adcx rcx, r11
mov rdx, [ rsi + 0x8 ]
mulx r11, r12, [ rsi + 0x18 ]
movzx rdx, dil
adc rdx, 0x0
test al, al
adox r15, rbx
adcx r12, r14
xchg rdx, rax
mulx rbx, rdi, r15
adox r12, r8
adcx r9, r11
mov rbx, 0x3339d80809a1d805 
mov rdx, rdi
mulx r8, rdi, rbx
adox r9, rbp
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, rbp, rdx
adcx rbp, r13
mov rdx, 0x0 
adcx r11, rdx
adox rbp, rcx
mov r13, 0xffffffff00000001 
mov rdx, r13
mulx rcx, r13, r14
clc
adcx r13, r15
adox r11, rax
mov r13, 0x53bda402fffe5bfe 
mov rdx, r14
mulx rax, r14, r13
seto r15b
mov rbx, -0x2 
inc rbx
adox r14, rcx
adox rdi, rax
adcx r14, r12
adcx rdi, r9
mulx r9, r12, r10
adox r12, r8
adcx r12, rbp
mov rdx, 0x0 
adox r9, rdx
adcx r9, r11
movzx r8, r15b
adc r8, 0x0
mov rbp, r14
mov rcx, 0xffffffff00000001 
sub rbp, rcx
mov r15, rdi
sbb r15, r13
mov r11, r12
mov rax, 0x3339d80809a1d805 
sbb r11, rax
mov rdx, r9
sbb rdx, r10
sbb r8, 0x00000000
cmovc r15, rdi
cmovc rdx, r9
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x18 ], rdx
mov [ r8 + 0x8 ], r15
cmovc r11, r12
cmovc rbp, r14
mov [ r8 + 0x10 ], r11
mov [ r8 + 0x0 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.7457
; seed 1191463187767692 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2351749 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=98, initial num_batches=31): 103243 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.043900518295107174
; number reverted permutation / tried permutation: 70533 / 89863 =78.489%
; number reverted decision / tried decision: 45467 / 90136 =50.443%
; validated in 3.289s
