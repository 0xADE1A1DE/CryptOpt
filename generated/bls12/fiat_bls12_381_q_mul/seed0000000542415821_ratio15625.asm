SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mulx r8, rcx, r10
mov r8, 0xffffffff00000001 
mov rdx, rcx
mulx r9, rcx, r8
mov [ rsp - 0x80 ], rbx
mov rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r8, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], r8
mov [ rsp - 0x38 ], rdi
mulx rdi, r8, [ rsi + 0x8 ]
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x30 ], r15
mov [ rsp - 0x28 ], rdi
mulx rdi, r15, rbx
xor rdx, rdx
adox rcx, r10
mov rcx, 0x3339d80809a1d805 
mov rdx, rcx
mulx r10, rcx, rbx
adcx r15, r9
mov r9, 0x73eda753299d7d48 
mov rdx, r9
mov [ rsp - 0x20 ], r8
mulx r8, r9, rbx
adcx rcx, rdi
adcx r9, r10
mov rdx, [ rax + 0x10 ]
mulx rdi, rbx, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx r8, rdx
clc
adcx r13, r11
adox r15, r13
adcx rbx, r14
adcx rbp, rdi
adox rcx, rbx
adox r9, rbp
adcx r12, rdx
mov rdx, [ rsi + 0x8 ]
mulx r14, r11, [ rax + 0x8 ]
adox r8, r12
mov rdx, [ rsi + 0x8 ]
mulx rdi, r10, [ rax + 0x0 ]
clc
adcx r10, r15
mov rdx, 0xfffffffeffffffff 
mulx r15, r13, r10
mov r15, 0x53bda402fffe5bfe 
mov rdx, r15
mulx rbx, r15, r13
mov rbp, 0x3339d80809a1d805 
mov rdx, r13
mulx r12, r13, rbp
seto bpl
mov [ rsp - 0x18 ], r12
mov r12, -0x2 
inc r12
adox r11, rdi
mov rdi, 0xffffffff00000001 
mov byte [ rsp - 0x10 ], bpl
mulx rbp, r12, rdi
adcx r11, rcx
mov rcx, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x8 ], r11
mulx r11, rdi, [ rsi + 0x8 ]
adox rdi, r14
adox r11, [ rsp - 0x20 ]
adcx rdi, r9
adcx r11, r8
setc dl
clc
adcx r15, rbp
mov r9, [ rsp - 0x28 ]
mov r14, 0x0 
adox r9, r14
adcx r13, rbx
mov r8, -0x3 
inc r8
adox r12, r10
mov r12, 0x73eda753299d7d48 
xchg rdx, r12
mulx rbx, r10, rcx
adcx r10, [ rsp - 0x18 ]
adox r15, [ rsp - 0x8 ]
adox r13, rdi
adcx rbx, r14
adox r10, r11
mov rdx, [ rsi + 0x10 ]
mulx rbp, rcx, [ rax + 0x0 ]
clc
mov rdx, -0x1 
movzx rdi, byte [ rsp - 0x10 ]
movzx r12, r12b
adcx r12, rdx
adcx r9, rdi
adox rbx, r9
mov rdx, [ rax + 0x10 ]
mulx r12, rdi, [ rsi + 0x10 ]
setc dl
clc
adcx rbp, [ rsp - 0x30 ]
adcx rdi, [ rsp - 0x48 ]
movzx r11, dl
adox r11, r14
mov r9, -0x3 
inc r9
adox rcx, r15
mov r9, 0xfffffffeffffffff 
mov rdx, rcx
mulx r15, rcx, r9
mov r15, 0xffffffff00000001 
xchg rdx, rcx
mulx r8, r14, r15
adox rbp, r13
adox rdi, r10
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, r10, [ rax + 0x18 ]
adcx r10, r12
adox r10, rbx
mov rdx, 0x0 
adcx r15, rdx
adox r15, r11
clc
adcx r14, rcx
mov r14, 0x53bda402fffe5bfe 
mov rdx, r13
mulx rbx, r13, r14
seto r12b
mov r11, -0x2 
inc r11
adox r13, r8
adcx r13, rbp
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbp, r8, [ rax + 0x0 ]
mov rdx, 0x3339d80809a1d805 
mulx r14, r11, rcx
adox r11, rbx
adcx r11, rdi
mov rdi, 0x73eda753299d7d48 
mov rdx, rdi
mulx rbx, rdi, rcx
adox rdi, r14
mov rcx, 0x0 
adox rbx, rcx
mov r14, -0x3 
inc r14
adox r8, r13
mov rdx, r9
mulx r13, r9, r8
adcx rdi, r10
adcx rbx, r15
mov rdx, [ rax + 0x8 ]
mulx r10, r13, [ rsi + 0x18 ]
setc dl
clc
adcx r13, rbp
adox r13, r11
adcx r10, [ rsp - 0x38 ]
adox r10, rdi
mov r15b, dl
mov rdx, [ rsi + 0x18 ]
mulx r11, rbp, [ rax + 0x18 ]
adcx rbp, [ rsp - 0x40 ]
adox rbp, rbx
adcx r11, rcx
mov rdx, 0xffffffff00000001 
mulx rbx, rdi, r9
movzx rcx, r15b
movzx r12, r12b
lea rcx, [ rcx + r12 ]
adox r11, rcx
clc
adcx rdi, r8
mov rdi, 0x53bda402fffe5bfe 
mov rdx, rdi
mulx r12, rdi, r9
mov r8, 0x3339d80809a1d805 
mov rdx, r9
mulx r15, r9, r8
seto cl
inc r14
adox rdi, rbx
adcx rdi, r13
adox r9, r12
adcx r9, r10
mov r13, 0x73eda753299d7d48 
mulx rbx, r10, r13
adox r10, r15
adcx r10, rbp
mov rdx, 0x0 
adox rbx, rdx
adcx rbx, r11
movzx rbp, cl
adc rbp, 0x0
mov rcx, rdi
mov r11, 0xffffffff00000001 
sub rcx, r11
mov r12, r9
mov r15, 0x53bda402fffe5bfe 
sbb r12, r15
mov rdx, r10
sbb rdx, r8
mov r14, rbx
sbb r14, r13
sbb rbp, 0x00000000
cmovc r12, r9
cmovc rcx, rdi
cmovc rdx, r10
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x10 ], rdx
cmovc r14, rbx
mov [ rbp + 0x8 ], r12
mov [ rbp + 0x0 ], rcx
mov [ rbp + 0x18 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.5625
; seed 0253585284276948 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1705044 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=100, initial num_batches=31): 75875 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.044500317880359685
; number reverted permutation / tried permutation: 64092 / 90153 =71.092%
; number reverted decision / tried decision: 44614 / 89846 =49.656%
; validated in 2.263s
