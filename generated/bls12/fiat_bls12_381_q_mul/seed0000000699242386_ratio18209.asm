SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x0 ]
xor rdx, rdx
adox r12, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r11, [ rax + 0x10 ]
adox r11, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r15
mulx r15, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x40 ], r13
mov [ rsp - 0x38 ], r14
mulx r14, r13, [ rsi + 0x10 ]
adox rcx, rdi
adcx r9, r15
adcx r13, rbx
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbx, [ rax + 0x18 ]
adcx rbx, r14
mov rdx, 0x53bda402fffe5bfe 
mulx r14, r15, rbp
mov rdx, 0x0 
adox r8, rdx
adc rdi, 0x0
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x30 ], rdi
mov [ rsp - 0x28 ], rbx
mulx rbx, rdi, rbp
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x20 ], r13
mov [ rsp - 0x18 ], r9
mulx r9, r13, rbp
test al, al
adox r15, rbx
adox r13, r14
adcx rdi, r10
mov rdi, 0x73eda753299d7d48 
mov rdx, rbp
mulx r10, rbp, rdi
adox rbp, r9
adcx r15, r12
adcx r13, r11
mov rdx, [ rax + 0x10 ]
mulx r11, r12, [ rsi + 0x8 ]
mov rdx, 0x0 
adox r10, rdx
adcx rbp, rcx
mov rcx, -0x3 
inc rcx
adox r15, [ rsp - 0x38 ]
adcx r10, r8
mov rdx, [ rax + 0x8 ]
mulx r8, r14, [ rsi + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mulx r9, rbx, r15
setc r9b
clc
adcx r14, [ rsp - 0x48 ]
adox r14, r13
adcx r12, r8
mov rdx, rdi
mulx r13, rdi, rbx
adox r12, rbp
mov rdx, [ rax + 0x18 ]
mulx r8, rbp, [ rsi + 0x8 ]
adcx rbp, r11
mov rdx, 0x0 
adcx r8, rdx
adox rbp, r10
mov r11, 0xffffffff00000001 
mov rdx, rbx
mulx r10, rbx, r11
movzx rcx, r9b
adox rcx, r8
mov r9, 0x53bda402fffe5bfe 
mulx r11, r8, r9
clc
adcx rbx, r15
seto bl
mov r15, -0x2 
inc r15
adox r8, r10
adcx r8, r14
mov r14, 0x3339d80809a1d805 
mulx r15, r10, r14
adox r10, r11
adox rdi, r15
mov rdx, 0x0 
adox r13, rdx
mov r11, -0x3 
inc r11
adox r8, [ rsp - 0x40 ]
mov r15, 0xfffffffeffffffff 
mov rdx, r15
mulx r11, r15, r8
adcx r10, r12
adcx rdi, rbp
adcx r13, rcx
mov r11, 0xffffffff00000001 
mov rdx, r15
mulx r12, r15, r11
movzx rbp, bl
mov rcx, 0x0 
adcx rbp, rcx
mulx rcx, rbx, r14
mulx r11, r14, r9
clc
adcx r14, r12
adcx rbx, r11
adox r10, [ rsp - 0x18 ]
adox rdi, [ rsp - 0x20 ]
mov r12, 0x73eda753299d7d48 
mulx r9, r11, r12
adcx r11, rcx
setc dl
clc
adcx r15, r8
adcx r14, r10
adcx rbx, rdi
adox r13, [ rsp - 0x28 ]
adcx r11, r13
adox rbp, [ rsp - 0x30 ]
movzx r15, dl
lea r15, [ r15 + r9 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r8, [ rax + 0x8 ]
adcx r15, rbp
seto dl
adc dl, 0x0
movzx rdx, dl
mov r10b, dl
mov rdx, [ rax + 0x10 ]
mulx r9, rdi, [ rsi + 0x18 ]
mov rdx, [ rax + 0x0 ]
mulx rbp, r13, [ rsi + 0x18 ]
adox r8, rbp
adox rdi, rcx
adcx r13, r14
adcx r8, rbx
adcx rdi, r11
mov rdx, 0xfffffffeffffffff 
mulx rbx, r14, r13
mov rdx, [ rsi + 0x18 ]
mulx r11, rbx, [ rax + 0x18 ]
adox rbx, r9
mov rdx, 0x0 
adox r11, rdx
adcx rbx, r15
mov rcx, 0x53bda402fffe5bfe 
mov rdx, rcx
mulx r15, rcx, r14
movzx r9, r10b
adcx r9, r11
mov r10, 0xffffffff00000001 
mov rdx, r14
mulx rbp, r14, r10
mov r11, -0x2 
inc r11
adox r14, r13
setc r14b
clc
adcx rcx, rbp
mov r13, 0x3339d80809a1d805 
mulx r11, rbp, r13
adox rcx, r8
adcx rbp, r15
mulx r15, r8, r12
adcx r8, r11
adox rbp, rdi
mov rdi, 0x0 
adcx r15, rdi
adox r8, rbx
adox r15, r9
movzx rdx, r14b
adox rdx, rdi
mov rbx, rcx
sub rbx, r10
mov r14, rbp
mov r9, 0x53bda402fffe5bfe 
sbb r14, r9
mov r11, r8
sbb r11, r13
mov rdi, r15
sbb rdi, r12
sbb rdx, 0x00000000
cmovc r14, rbp
cmovc rdi, r15
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], r14
mov [ rdx + 0x18 ], rdi
cmovc rbx, rcx
cmovc r11, r8
mov [ rdx + 0x0 ], rbx
mov [ rdx + 0x10 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.8209
; seed 2188863371923057 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2353952 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=140, initial num_batches=31): 153580 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.06524347140468455
; number reverted permutation / tried permutation: 65943 / 89983 =73.284%
; number reverted decision / tried decision: 60165 / 90016 =66.838%
; validated in 5.442s
