SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbx
test al, al
adox rax, rcx
mov r15, 0x53bda402fffe5bfe 
mov rdx, r15
mulx rcx, r15, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, rdx
adox rdi, r10
adcx r8, rbp
mov rdx, [ rsi + 0x18 ]
mulx rbp, r10, [ rsi + 0x10 ]
adox r10, r13
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x40 ], r12
mulx r12, r13, r14
mov rdx, 0x0 
adox rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], rbp
mov [ rsp - 0x30 ], r10
mulx r10, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], rdi
mov [ rsp - 0x20 ], rax
mulx rax, rdi, [ rsi + 0x0 ]
adcx rbp, r9
adcx rdi, r10
adc rax, 0x0
xor rdx, rdx
adox r15, r12
adcx r13, rbx
adcx r15, r8
mov r13, 0x3339d80809a1d805 
mov rdx, r13
mulx r9, r13, r14
adox r13, rcx
mov rbx, 0x73eda753299d7d48 
mov rdx, rbx
mulx rcx, rbx, r14
mov rdx, [ rsi + 0x8 ]
mulx r8, r14, rdx
mov rdx, [ rsi + 0x0 ]
mulx r10, r12, [ rsi + 0x8 ]
adox rbx, r9
seto dl
mov r9, -0x2 
inc r9
adox r14, r10
movzx r10, dl
lea r10, [ r10 + rcx ]
adcx r13, rbp
adcx rbx, rdi
adcx r10, rax
setc bpl
clc
adcx r12, r15
mov rdi, 0xfffffffeffffffff 
mov rdx, rdi
mulx rax, rdi, r12
mov rdx, [ rsi + 0x10 ]
mulx r15, rax, [ rsi + 0x8 ]
adcx r14, r13
mov rdx, 0x53bda402fffe5bfe 
mulx r13, rcx, rdi
adox rax, r8
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
adcx rax, rbx
adox r8, r15
adcx r8, r10
mov rdx, 0x0 
adox r9, rdx
mov rbx, 0xffffffff00000001 
mov rdx, rdi
mulx r10, rdi, rbx
mov r15, -0x2 
inc r15
adox rcx, r10
movzx r10, bpl
adcx r10, r9
setc bpl
clc
adcx rdi, r12
adcx rcx, r14
mov rdi, 0x3339d80809a1d805 
mulx r14, r12, rdi
adox r12, r13
mov r13, 0x73eda753299d7d48 
mulx r15, r9, r13
adox r9, r14
mov rdx, 0x0 
adox r15, rdx
mov r14, -0x3 
inc r14
adox r11, rcx
adcx r12, rax
adox r12, [ rsp - 0x20 ]
mov rax, 0xfffffffeffffffff 
mov rdx, rax
mulx rcx, rax, r11
adcx r9, r8
mov rdx, rax
mulx rcx, rax, r13
adcx r15, r10
movzx r8, bpl
mov r10, 0x0 
adcx r8, r10
mov rbp, 0x53bda402fffe5bfe 
mulx r14, r10, rbp
adox r9, [ rsp - 0x28 ]
adox r15, [ rsp - 0x30 ]
mulx r13, rbp, rbx
clc
adcx r10, r13
adox r8, [ rsp - 0x38 ]
seto r13b
mov rdi, -0x2 
inc rdi
adox rbp, r11
adox r10, r12
mov rbp, 0x3339d80809a1d805 
mulx r12, r11, rbp
adcx r11, r14
adox r11, r9
adcx rax, r12
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r14, [ rsi + 0x0 ]
adox rax, r15
adox rcx, r8
mov rdx, [ rsi + 0x18 ]
mulx r8, r15, [ rsi + 0x8 ]
clc
adcx r15, r9
movzx rdx, r13b
mov r12, 0x0 
adox rdx, r12
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, r9, [ rsi + 0x18 ]
adcx r9, r8
adcx r12, [ rsp - 0x40 ]
inc rdi
adox r14, r10
mov rdx, 0xfffffffeffffffff 
mulx r8, r10, r14
adox r15, r11
mov r8, [ rsp - 0x48 ]
adcx r8, rdi
adox r9, rax
adox r12, rcx
mov rdx, r10
mulx r11, r10, rbx
clc
adcx r10, r14
mulx rax, r10, rbp
mov rcx, 0x53bda402fffe5bfe 
mulx rdi, r14, rcx
adox r8, r13
seto r13b
mov rbx, -0x2 
inc rbx
adox r14, r11
adcx r14, r15
adox r10, rdi
adcx r10, r9
mov r15, 0x73eda753299d7d48 
mulx r11, r9, r15
adox r9, rax
mov rdx, 0x0 
adox r11, rdx
adcx r9, r12
adcx r11, r8
movzx r12, r13b
adc r12, 0x0
mov rax, r14
mov rdi, 0xffffffff00000001 
sub rax, rdi
mov r13, r10
sbb r13, rcx
mov r8, r9
sbb r8, rbp
mov rdx, r11
sbb rdx, r15
sbb r12, 0x00000000
cmovc rax, r14
cmovc r13, r10
cmovc rdx, r11
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x8 ], r13
cmovc r8, r9
mov [ r12 + 0x10 ], r8
mov [ r12 + 0x18 ], rdx
mov [ r12 + 0x0 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7650
; seed 1244469051328518 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1615963 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=82, initial num_batches=31): 88983 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.0550649983941464
; number reverted permutation / tried permutation: 68104 / 90380 =75.353%
; number reverted decision / tried decision: 61543 / 89619 =68.672%
; validated in 3.42s
