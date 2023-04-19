SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
sub rsp, 136
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rcx
mulx rcx, rdi, r8
xor rcx, rcx
adox rax, r9
mov rdx, [ rsi + 0x0 ]
mulx rcx, r9, [ rsi + 0x10 ]
adox r9, r10
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x40 ], r11
mulx r11, r10, rdi
adox rbx, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r14
mulx r14, rcx, rdx
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x30 ], rbx
mov [ rsp - 0x28 ], r9
mulx r9, rbx, rdi
adcx rcx, r15
adcx r12, r14
mov rdx, [ rsi + 0x18 ]
mulx r14, r15, [ rsi + 0x8 ]
adcx r15, r13
mov rdx, 0x0 
adcx r14, rdx
adox rbp, rdx
mov r13, 0xffffffff00000001 
mov rdx, rdi
mov [ rsp - 0x20 ], r14
mulx r14, rdi, r13
xor r13, r13
adox rdi, r8
adcx r10, r14
adcx rbx, r11
adox r10, rax
adox rbx, [ rsp - 0x28 ]
mov rdi, 0x73eda753299d7d48 
mulx rax, r8, rdi
adcx r8, r9
adox r8, [ rsp - 0x30 ]
adcx rax, r13
adox rax, rbp
clc
adcx r10, [ rsp - 0x38 ]
adcx rcx, rbx
adcx r12, r8
mov rdx, 0xfffffffeffffffff 
mulx r9, r11, r10
adcx r15, rax
setc r9b
movzx r9, r9b
adox r9, [ rsp - 0x20 ]
mov rdx, [ rsi + 0x10 ]
mulx r14, rbp, [ rsi + 0x0 ]
clc
adcx r14, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rbx, rdx
mov rdx, 0xffffffff00000001 
mulx r13, rax, r11
seto dil
mov rdx, -0x2 
inc rdx
adox rax, r10
adcx rbx, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, [ rsi + 0x10 ]
adcx rax, r8
mov rdx, 0x0 
adcx r10, rdx
mov r8, 0x53bda402fffe5bfe 
mov rdx, r11
mov [ rsp - 0x18 ], r10
mulx r10, r11, r8
clc
adcx r11, r13
mov r13, 0x3339d80809a1d805 
mov [ rsp - 0x10 ], rax
mulx rax, r8, r13
adcx r8, r10
adox r11, rcx
adox r8, r12
mov rcx, 0x73eda753299d7d48 
mulx r10, r12, rcx
mov rdx, [ rsi + 0x18 ]
mulx r13, rcx, [ rsi + 0x8 ]
adcx r12, rax
adox r12, r15
mov rdx, 0x0 
adcx r10, rdx
adox r10, r9
movzx r15, dil
adox r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx rdi, r9, [ rsi + 0x0 ]
test al, al
adox rcx, rdi
adcx rbp, r11
adcx r14, r8
mov rdx, 0xfffffffeffffffff 
mulx r11, rax, rbp
mov rdx, [ rsi + 0x18 ]
mulx r8, r11, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], rcx
mulx rcx, rdi, [ rsi + 0x18 ]
adox rdi, r13
adox r11, rcx
adcx rbx, r12
mov rdx, 0x0 
adox r8, rdx
mov r13, 0xffffffff00000001 
mov rdx, rax
mulx r12, rax, r13
adcx r10, [ rsp - 0x10 ]
mov rcx, -0x2 
inc rcx
adox rax, rbp
mov rax, 0x53bda402fffe5bfe 
mulx rcx, rbp, rax
adcx r15, [ rsp - 0x18 ]
setc al
clc
adcx rbp, r12
adox rbp, r14
mov r14, 0x3339d80809a1d805 
mulx r13, r12, r14
adcx r12, rcx
mov rcx, 0x73eda753299d7d48 
mov [ rsp + 0x0 ], r8
mulx r8, r14, rcx
adox r12, rbx
adcx r14, r13
mov rdx, 0x0 
adcx r8, rdx
adox r14, r10
adox r8, r15
movzx rbx, al
adox rbx, rdx
xor r10, r10
adox r9, rbp
adox r12, [ rsp - 0x8 ]
mov rdx, 0xfffffffeffffffff 
mulx r15, rax, r9
adox rdi, r14
mov r15, 0x53bda402fffe5bfe 
mov rdx, rax
mulx rbp, rax, r15
mov r13, 0xffffffff00000001 
mulx r10, r14, r13
adcx r14, r9
adox r11, r8
adox rbx, [ rsp + 0x0 ]
seto r14b
mov r8, -0x2 
inc r8
adox rax, r10
mov r9, 0x3339d80809a1d805 
mulx r8, r10, r9
adox r10, rbp
adcx rax, r12
mulx rbp, r12, rcx
adox r12, r8
mov rdx, 0x0 
adox rbp, rdx
adcx r10, rdi
adcx r12, r11
adcx rbp, rbx
movzx rdi, r14b
adc rdi, 0x0
mov r11, rax
sub r11, r13
mov r14, r10
sbb r14, r15
mov rbx, r12
sbb rbx, r9
mov r8, rbp
sbb r8, rcx
sbb rdi, 0x00000000
cmovc r8, rbp
cmovc r14, r10
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x18 ], r8
cmovc r11, rax
cmovc rbx, r12
mov [ rdi + 0x0 ], r11
mov [ rdi + 0x10 ], rbx
mov [ rdi + 0x8 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 136
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7781
; seed 1164282597681011 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1711985 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=86, initial num_batches=31): 90461 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05283983212469735
; number reverted permutation / tried permutation: 67610 / 90342 =74.838%
; number reverted decision / tried decision: 60832 / 89657 =67.850%
; validated in 3.303s
