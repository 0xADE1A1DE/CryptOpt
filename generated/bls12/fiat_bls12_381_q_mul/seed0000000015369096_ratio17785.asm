SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r9
xor r12, r12
adox rcx, r11
mov r11, 0xffffffff00000001 
mov rdx, r11
mulx r12, r11, rbp
mov [ rsp - 0x68 ], r13
mov r13, 0x53bda402fffe5bfe 
mov rdx, r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbp
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x8 ]
adcx r15, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], rcx
mulx rcx, rbx, [ rax + 0x10 ]
adcx rbx, rdi
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r10
mulx r10, rdi, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], r15
mulx r15, rbx, [ rsi + 0x8 ]
adcx rdi, rcx
mov rdx, 0x0 
adcx r10, rdx
adox rbx, r8
mov rdx, [ rsi + 0x8 ]
mulx rcx, r8, [ rax + 0x18 ]
adox r8, r15
mov rdx, 0x0 
adox rcx, rdx
xor r15, r15
adox r11, r9
adcx r13, r12
mov r11, 0x3339d80809a1d805 
mov rdx, rbp
mulx r9, rbp, r11
adcx rbp, r14
adox r13, [ rsp - 0x30 ]
mov r12, 0x73eda753299d7d48 
mulx r15, r14, r12
adox rbp, [ rsp - 0x38 ]
adcx r14, r9
adox r14, rdi
mov rdx, 0x0 
adcx r15, rdx
clc
adcx r13, [ rsp - 0x40 ]
adcx rbp, [ rsp - 0x48 ]
mov rdi, 0xfffffffeffffffff 
mov rdx, r13
mulx r9, r13, rdi
mov r9, 0xffffffff00000001 
xchg rdx, r13
mulx r12, rdi, r9
adox r15, r10
adcx rbx, r14
adcx r8, r15
mov r10, 0x53bda402fffe5bfe 
mulx r15, r14, r10
setc r9b
movzx r9, r9b
adox r9, rcx
mulx r10, rcx, r11
clc
adcx r14, r12
adcx rcx, r15
seto r12b
mov r15, -0x2 
inc r15
adox rdi, r13
adox r14, rbp
mov rdi, 0x73eda753299d7d48 
mulx rbp, r13, rdi
adox rcx, rbx
adcx r13, r10
mov rdx, [ rsi + 0x10 ]
mulx r10, rbx, [ rax + 0x0 ]
mov rdx, 0x0 
adcx rbp, rdx
mov rdx, [ rax + 0x8 ]
mulx rdi, r15, [ rsi + 0x10 ]
adox r13, r8
clc
adcx rbx, r14
mov rdx, 0xfffffffeffffffff 
mulx r14, r8, rbx
adox rbp, r9
movzx r14, r12b
mov r9, 0x0 
adox r14, r9
mov rdx, [ rsi + 0x10 ]
mulx r9, r12, [ rax + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r15, r10
mov rdx, [ rax + 0x18 ]
mulx r11, r10, [ rsi + 0x10 ]
adcx r15, rcx
adox r12, rdi
adcx r12, r13
adox r10, r9
mov rdx, 0x0 
adox r11, rdx
adcx r10, rbp
adcx r11, r14
mov rcx, 0x3339d80809a1d805 
mov rdx, rcx
mulx rdi, rcx, r8
mov r13, 0xffffffff00000001 
mov rdx, r8
mulx rbp, r8, r13
mov r14, 0x53bda402fffe5bfe 
mulx r13, r9, r14
mov r14, -0x2 
inc r14
adox r9, rbp
adox rcx, r13
mov rbp, 0x73eda753299d7d48 
mulx r14, r13, rbp
setc dl
clc
adcx r8, rbx
adcx r9, r15
adcx rcx, r12
adox r13, rdi
mov r8, 0x0 
adox r14, r8
adcx r13, r10
mov bl, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, r15, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx rdi, r10, [ rax + 0x0 ]
adcx r14, r11
mov rdx, -0x3 
inc rdx
adox r10, r9
movzx r11, bl
adcx r11, r8
mov rbx, 0xfffffffeffffffff 
mov rdx, r10
mulx r9, r10, rbx
mov r9, rdx
mov rdx, [ rax + 0x18 ]
mulx rbx, r8, [ rsi + 0x18 ]
clc
adcx r15, rdi
adox r15, rcx
mov rdx, [ rsi + 0x18 ]
mulx rdi, rcx, [ rax + 0x10 ]
adcx rcx, r12
adcx r8, rdi
mov rdx, 0x0 
adcx rbx, rdx
adox rcx, r13
adox r8, r14
adox rbx, r11
mov r13, 0xffffffff00000001 
mov rdx, r13
mulx r12, r13, r10
clc
adcx r13, r9
mov r13, 0x53bda402fffe5bfe 
mov rdx, r10
mulx r14, r10, r13
seto r9b
mov r11, -0x2 
inc r11
adox r10, r12
mov rdi, 0x3339d80809a1d805 
mulx r11, r12, rdi
adox r12, r14
adcx r10, r15
adcx r12, rcx
mulx rcx, r15, rbp
adox r15, r11
mov rdx, 0x0 
adox rcx, rdx
adcx r15, r8
adcx rcx, rbx
movzx r8, r9b
adc r8, 0x0
mov r9, r10
mov rbx, 0xffffffff00000001 
sub r9, rbx
mov r14, r12
sbb r14, r13
mov r11, r15
sbb r11, rdi
mov rdx, rcx
sbb rdx, rbp
sbb r8, 0x00000000
cmovc r14, r12
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x8 ], r14
cmovc r9, r10
cmovc r11, r15
mov [ r8 + 0x10 ], r11
cmovc rdx, rcx
mov [ r8 + 0x18 ], rdx
mov [ r8 + 0x0 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.7785
; seed 0338243487719562 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2283473 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=64, initial num_batches=31): 126330 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05532362327034303
; number reverted permutation / tried permutation: 67789 / 89957 =75.357%
; number reverted decision / tried decision: 43192 / 90042 =47.969%
; validated in 3.729s
