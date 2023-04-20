SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
test al, al
adox r11, r13
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x60 ], r14
mulx r14, r13, r12
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, r13
adox r14, rcx
mov rcx, 0xffffffff00000001 
mov rdx, rcx
mov [ rsp - 0x40 ], r14
mulx r14, rcx, r13
adcx rax, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], rax
mulx rax, r9, [ rsi + 0x10 ]
adcx r9, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r9
mulx r9, r10, [ rsi + 0x18 ]
adcx r10, rax
adox rbx, r15
mov rdx, 0x0 
adox rbp, rdx
mov r15, -0x3 
inc r15
adox rcx, r12
adcx r9, rdx
mov rcx, 0x3339d80809a1d805 
mov rdx, r13
mulx r12, r13, rcx
clc
adcx rdi, r14
mov r14, 0x73eda753299d7d48 
mulx r15, rax, r14
adox rdi, r11
adcx r13, r8
adcx rax, r12
mov r11, 0x0 
adcx r15, r11
adox r13, [ rsp - 0x40 ]
clc
adcx rdi, [ rsp - 0x48 ]
adcx r13, [ rsp - 0x38 ]
mov rdx, 0xfffffffeffffffff 
mulx r12, r8, rdi
adox rax, rbx
adox r15, rbp
mov rdx, rcx
mulx r12, rcx, r8
adcx rax, [ rsp - 0x30 ]
adcx r10, r15
mov rbx, 0xffffffff00000001 
mov rdx, rbx
mulx rbp, rbx, r8
seto r15b
movzx r15, r15b
adcx r15, r9
mov r9, 0x53bda402fffe5bfe 
mov rdx, r9
mulx r11, r9, r8
mov r14, -0x2 
inc r14
adox rbx, rdi
mov rbx, 0x73eda753299d7d48 
mov rdx, rbx
mulx rdi, rbx, r8
setc r8b
clc
adcx r9, rbp
adcx rcx, r11
adcx rbx, r12
adox r9, r13
mov r13, 0x0 
adcx rdi, r13
adox rcx, rax
adox rbx, r10
adox rdi, r15
mov rdx, [ rsi + 0x10 ]
mulx rax, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx rbp, r10, [ rsi + 0x10 ]
movzx rdx, r8b
adox rdx, r13
xor r15, r15
adox r10, r9
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r8, [ rsi + 0x10 ]
mov rdx, 0xfffffffeffffffff 
mulx r15, r9, r10
mov rdx, [ rsi + 0x10 ]
mulx r14, r15, rdx
adcx r8, rbp
adcx r15, r11
adcx r12, r14
mov rdx, 0x0 
adcx rax, rdx
adox r8, rcx
adox r15, rbx
adox r12, rdi
mov rcx, 0xffffffff00000001 
mov rdx, rcx
mulx rbx, rcx, r9
mov rdx, [ rsi + 0x18 ]
mulx rbp, rdi, [ rsi + 0x10 ]
adox rax, r13
mov rdx, 0x53bda402fffe5bfe 
mulx r11, r13, r9
clc
adcx r13, rbx
mov r14, 0x3339d80809a1d805 
mov rdx, r14
mulx rbx, r14, r9
adcx r14, r11
mov r11, 0x73eda753299d7d48 
mov rdx, r11
mov [ rsp - 0x28 ], rbp
mulx rbp, r11, r9
adcx r11, rbx
seto r9b
mov rbx, -0x2 
inc rbx
adox rcx, r10
adox r13, r8
mov rdx, [ rsi + 0x8 ]
mulx r10, rcx, [ rsi + 0x18 ]
adox r14, r15
adox r11, r12
mov rdx, [ rsi + 0x0 ]
mulx r15, r8, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx rbp, rdx
clc
adcx r8, r13
mov r12, 0xfffffffeffffffff 
mov rdx, r8
mulx r13, r8, r12
mov r13, 0xffffffff00000001 
xchg rdx, r8
mulx r12, rbx, r13
adox rbp, rax
seto al
mov r13, -0x2 
inc r13
adox rcx, r15
adox rdi, r10
adcx rcx, r14
mov r10, rdx
mov rdx, [ rsi + 0x18 ]
mulx r15, r14, rdx
adox r14, [ rsp - 0x28 ]
mov rdx, 0x0 
adox r15, rdx
adcx rdi, r11
adcx r14, rbp
movzx r11, al
movzx r9, r9b
lea r11, [ r11 + r9 ]
mov r9, 0x53bda402fffe5bfe 
mov rdx, r9
mulx rax, r9, r10
adcx r15, r11
inc r13
adox rbx, r8
mov rbx, 0x73eda753299d7d48 
mov rdx, rbx
mulx r8, rbx, r10
setc bpl
clc
adcx r9, r12
mov r12, 0x3339d80809a1d805 
mov rdx, r10
mulx r11, r10, r12
adcx r10, rax
adcx rbx, r11
adox r9, rcx
adox r10, rdi
adcx r8, r13
adox rbx, r14
adox r8, r15
movzx rdx, bpl
adox rdx, r13
mov rcx, r9
mov rdi, 0xffffffff00000001 
sub rcx, rdi
mov r14, r10
mov rax, 0x53bda402fffe5bfe 
sbb r14, rax
mov rbp, rbx
sbb rbp, r12
mov r15, r8
mov r11, 0x73eda753299d7d48 
sbb r15, r11
sbb rdx, 0x00000000
cmovc r14, r10
cmovc r15, r8
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], r15
cmovc rbp, rbx
cmovc rcx, r9
mov [ rdx + 0x0 ], rcx
mov [ rdx + 0x10 ], rbp
mov [ rdx + 0x8 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.6687
; seed 2809117334955608 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2500624 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=73, initial num_batches=31): 128083 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.051220415384320074
; number reverted permutation / tried permutation: 73631 / 90200 =81.631%
; number reverted decision / tried decision: 47610 / 89799 =53.018%
; validated in 3.09s
