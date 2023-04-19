SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r10
mov rbx, 0x53bda402fffe5bfe 
mov rdx, rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r9
mov [ rsp - 0x70 ], r12
mov r12, 0x73eda753299d7d48 
mov rdx, r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r9
mov [ rsp - 0x60 ], r14
mov r14, 0xffffffff00000001 
mov rdx, r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r9
xor rdx, rdx
adox rbx, r15
mov r15, 0x3339d80809a1d805 
mov rdx, r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r9
adox r15, rbp
mov rdx, [ rax + 0x0 ]
mulx rbp, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], r9
mulx r9, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], r8
mulx r8, rbx, [ rax + 0x10 ]
adcx r15, rbp
adox r12, rdi
adcx rbx, r9
mov rdx, 0x0 
adox r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, rdi, [ rax + 0x18 ]
adcx rdi, r8
adc rbp, 0x0
test al, al
adox rcx, r11
adcx r14, r10
mov rdx, [ rsi + 0x0 ]
mulx r10, r14, [ rax + 0x10 ]
adox r14, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r11, [ rax + 0x18 ]
adox r11, r10
mov rdx, 0x0 
adox r9, rdx
adcx rcx, [ rsp - 0x38 ]
mov r8, -0x3 
inc r8
adox rcx, [ rsp - 0x40 ]
adcx r14, [ rsp - 0x48 ]
adcx r12, r11
mov r10, 0xfffffffeffffffff 
mov rdx, rcx
mulx r11, rcx, r10
mov r11, 0x53bda402fffe5bfe 
xchg rdx, r11
mulx r10, r8, rcx
adcx r13, r9
mov r9, 0x3339d80809a1d805 
mov rdx, r9
mov [ rsp - 0x28 ], r10
mulx r10, r9, rcx
adox r15, r14
adox rbx, r12
mov r14, 0xffffffff00000001 
mov rdx, r14
mulx r12, r14, rcx
adox rdi, r13
setc r13b
clc
adcx r14, r11
movzx r14, r13b
adox r14, rbp
seto bpl
mov r11, -0x2 
inc r11
adox r8, r12
adcx r8, r15
adox r9, [ rsp - 0x28 ]
mov r13, 0x73eda753299d7d48 
mov rdx, r13
mulx r15, r13, rcx
adcx r9, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, rcx, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx r11, r12, [ rsi + 0x10 ]
adox r13, r10
mov rdx, 0x0 
adox r15, rdx
mov r10, -0x3 
inc r10
adox rcx, r11
adcx r13, rdi
adcx r15, r14
mov rdx, [ rsi + 0x10 ]
mulx r14, rdi, [ rax + 0x10 ]
movzx rdx, bpl
mov r11, 0x0 
adcx rdx, r11
clc
adcx r12, r8
adox rdi, rbx
adcx rcx, r9
adcx rdi, r13
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rax + 0x18 ]
mov rdx, 0xfffffffeffffffff 
mulx r13, rbx, r12
mov r13, 0x3339d80809a1d805 
mov rdx, rbx
mulx r11, rbx, r13
adox r8, r14
mov r14, 0xffffffff00000001 
mulx r13, r10, r14
adcx r8, r15
mov r15, 0x0 
adox r9, r15
adcx r9, rbp
mov rbp, 0x53bda402fffe5bfe 
mulx r14, r15, rbp
mov rbp, -0x2 
inc rbp
adox r15, r13
adox rbx, r14
setc r13b
clc
adcx r10, r12
adcx r15, rcx
mov r10, 0x73eda753299d7d48 
mulx rcx, r12, r10
adox r12, r11
mov rdx, [ rax + 0x8 ]
mulx r14, r11, [ rsi + 0x18 ]
mov rdx, 0x0 
adox rcx, rdx
adcx rbx, rdi
adcx r12, r8
adcx rcx, r9
mov rdx, [ rax + 0x0 ]
mulx r8, rdi, [ rsi + 0x18 ]
inc rbp
adox r11, r8
movzx rdx, r13b
adcx rdx, rbp
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, r9, [ rax + 0x10 ]
adox r9, r14
clc
adcx rdi, r15
mov rdx, [ rsi + 0x18 ]
mulx r14, r15, [ rax + 0x18 ]
adcx r11, rbx
adcx r9, r12
adox r15, r8
adcx r15, rcx
mov rdx, 0xfffffffeffffffff 
mulx r12, rbx, rdi
mov r12, 0xffffffff00000001 
mov rdx, rbx
mulx rcx, rbx, r12
mov r8, 0x53bda402fffe5bfe 
mulx r10, rbp, r8
mov r12, 0x0 
adox r14, r12
mov r8, -0x3 
inc r8
adox rbp, rcx
adcx r14, r13
setc r13b
clc
adcx rbx, rdi
mov rbx, 0x3339d80809a1d805 
mulx rcx, rdi, rbx
adox rdi, r10
adcx rbp, r11
adcx rdi, r9
mov r11, 0x73eda753299d7d48 
mulx r10, r9, r11
adox r9, rcx
adox r10, r12
adcx r9, r15
adcx r10, r14
movzx r15, r13b
adc r15, 0x0
mov rdx, rbp
mov r13, 0xffffffff00000001 
sub rdx, r13
mov r14, rdi
mov rcx, 0x53bda402fffe5bfe 
sbb r14, rcx
mov r12, r9
sbb r12, rbx
mov r8, r10
sbb r8, r11
sbb r15, 0x00000000
cmovc r12, r9
cmovc r14, rdi
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x8 ], r14
mov [ r15 + 0x10 ], r12
cmovc rdx, rbp
mov [ r15 + 0x0 ], rdx
cmovc r8, r10
mov [ r15 + 0x18 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.7651
; seed 0971466458532622 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2515322 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=67, initial num_batches=31): 129416 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05145106670239437
; number reverted permutation / tried permutation: 68140 / 90052 =75.667%
; number reverted decision / tried decision: 43780 / 89947 =48.673%
; validated in 3.557s
