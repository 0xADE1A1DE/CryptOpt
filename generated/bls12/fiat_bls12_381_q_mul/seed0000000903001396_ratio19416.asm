SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r9
mov r14, 0xffffffff00000001 
mov rdx, r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r13
test al, al
adox r14, r9
mov r14, 0x53bda402fffe5bfe 
mov rdx, r14
mulx r9, r14, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r10
mulx r10, rdi, [ rax + 0x10 ]
adcx rbp, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r10
mulx r10, r11, [ rax + 0x10 ]
adcx r11, r12
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x38 ], rdi
mulx rdi, r12, [ rsi + 0x8 ]
adcx r12, r10
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx rcx, rbx
mov rdx, [ rsi + 0x0 ]
mulx r10, rbx, [ rax + 0x10 ]
adcx rbx, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], rdi
mulx rdi, r8, [ rax + 0x18 ]
adcx r8, r10
setc dl
clc
adcx r14, r15
adox r14, rcx
movzx r15, dl
lea r15, [ r15 + rdi ]
mov rcx, 0x3339d80809a1d805 
mov rdx, r13
mulx r10, r13, rcx
adcx r13, r9
mov r9, 0x73eda753299d7d48 
mulx rcx, rdi, r9
adcx rdi, r10
mov rdx, 0x0 
adcx rcx, rdx
adox r13, rbx
clc
adcx r14, [ rsp - 0x48 ]
adcx rbp, r13
mov rbx, 0xfffffffeffffffff 
mov rdx, rbx
mulx r10, rbx, r14
adox rdi, r8
adox rcx, r15
mov r10, 0xffffffff00000001 
mov rdx, rbx
mulx r8, rbx, r10
adcx r11, rdi
adcx r12, rcx
seto r15b
movzx r15, r15b
adcx r15, [ rsp - 0x30 ]
mov r13, 0x53bda402fffe5bfe 
mulx rcx, rdi, r13
mov r10, -0x2 
inc r10
adox rbx, r14
setc bl
clc
adcx rdi, r8
adox rdi, rbp
mov r14, 0x3339d80809a1d805 
mulx r8, rbp, r14
mulx r14, r10, r9
mov rdx, [ rax + 0x0 ]
mulx r13, r9, [ rsi + 0x10 ]
adcx rbp, rcx
adox rbp, r11
adcx r10, r8
mov rdx, 0x0 
adcx r14, rdx
adox r10, r12
adox r14, r15
mov rdx, [ rax + 0x8 ]
mulx r12, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r15, [ rax + 0x18 ]
clc
adcx r11, r13
adcx r12, [ rsp - 0x38 ]
adcx r15, [ rsp - 0x40 ]
mov rdx, 0x0 
adcx rcx, rdx
clc
adcx r9, rdi
adcx r11, rbp
movzx rdi, bl
adox rdi, rdx
mov rbx, 0xfffffffeffffffff 
mov rdx, rbx
mulx r8, rbx, r9
mov r8, 0xffffffff00000001 
mov rdx, rbx
mulx r13, rbx, r8
mov rbp, -0x2 
inc rbp
adox rbx, r9
adcx r12, r10
adcx r15, r14
adcx rcx, rdi
mov rbx, 0x53bda402fffe5bfe 
mulx r14, r10, rbx
setc r9b
clc
adcx r10, r13
mov rdi, 0x73eda753299d7d48 
mulx rbp, r13, rdi
mov rbx, 0x3339d80809a1d805 
mulx rdi, r8, rbx
mov rdx, [ rax + 0x8 ]
mov byte [ rsp - 0x28 ], r9b
mulx r9, rbx, [ rsi + 0x18 ]
adcx r8, r14
adcx r13, rdi
adox r10, r11
adox r8, r12
mov rdx, [ rax + 0x0 ]
mulx r12, r11, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx rbp, rdx
adox r13, r15
adox rbp, rcx
movzx r15, byte [ rsp - 0x28 ]
adox r15, rdx
xor rcx, rcx
adox r11, r10
mov rdx, [ rax + 0x10 ]
mulx rdi, r14, [ rsi + 0x18 ]
adcx rbx, r12
mov rdx, 0xfffffffeffffffff 
mulx r12, r10, r11
adcx r14, r9
adox rbx, r8
mov rdx, [ rax + 0x18 ]
mulx r9, r12, [ rsi + 0x18 ]
adcx r12, rdi
adcx r9, rcx
mov rdx, 0xffffffff00000001 
mulx rdi, r8, r10
adox r14, r13
clc
adcx r8, r11
adox r12, rbp
mov r8, 0x3339d80809a1d805 
mov rdx, r8
mulx r13, r8, r10
mov rbp, 0x53bda402fffe5bfe 
mov rdx, r10
mulx r11, r10, rbp
adox r9, r15
seto r15b
mov rbp, -0x3 
inc rbp
adox r10, rdi
mov rdi, 0x73eda753299d7d48 
mulx rbp, rcx, rdi
adcx r10, rbx
adox r8, r11
adox rcx, r13
adcx r8, r14
mov rdx, 0x0 
adox rbp, rdx
adcx rcx, r12
adcx rbp, r9
movzx rbx, r15b
adc rbx, 0x0
mov r14, r10
mov r12, 0xffffffff00000001 
sub r14, r12
mov r13, r8
mov r11, 0x53bda402fffe5bfe 
sbb r13, r11
mov r15, rcx
mov r9, 0x3339d80809a1d805 
sbb r15, r9
mov rdx, rbp
sbb rdx, rdi
sbb rbx, 0x00000000
cmovc r15, rcx
cmovc r14, r10
cmovc r13, r8
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x10 ], r15
cmovc rdx, rbp
mov [ rbx + 0x18 ], rdx
mov [ rbx + 0x8 ], r13
mov [ rbx + 0x0 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.9416
; seed 1601329604499960 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1589031 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=104, initial num_batches=31): 88125 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05545832648953985
; number reverted permutation / tried permutation: 66528 / 89820 =74.068%
; number reverted decision / tried decision: 61029 / 90179 =67.675%
; validated in 3.4s
