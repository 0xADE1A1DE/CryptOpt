SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
test al, al
adox rcx, r12
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x68 ], r13
mulx r13, r12, rbp
mov r13, 0xffffffff00000001 
mov rdx, r12
mov [ rsp - 0x60 ], r14
mulx r14, r12, r13
mov [ rsp - 0x58 ], r15
mov r15, 0x53bda402fffe5bfe 
mov [ rsp - 0x50 ], rdi
mulx rdi, r13, r15
adcx r13, r14
mov r14, 0x3339d80809a1d805 
mov [ rsp - 0x48 ], r11
mulx r11, r15, r14
mov r14, 0x73eda753299d7d48 
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], rbx
mulx rbx, r10, r14
adcx r15, rdi
adcx r10, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, rdi, [ rax + 0x10 ]
mov rdx, 0x0 
adcx rbx, rdx
adox rdi, r8
clc
adcx r12, rbp
adcx r13, rcx
adox r9, r11
adcx r15, rdi
mov rdx, [ rax + 0x0 ]
mulx r8, r12, [ rsi + 0x8 ]
seto dl
mov rbp, -0x2 
inc rbp
adox r12, r13
movzx rcx, dl
mov r11, [ rsp - 0x38 ]
lea rcx, [ rcx + r11 ]
adcx r10, r9
mov r11, 0xfffffffeffffffff 
mov rdx, r11
mulx rdi, r11, r12
mov rdx, [ rsi + 0x8 ]
mulx r13, rdi, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx rbp, r9, [ rax + 0x10 ]
mov rdx, r11
mov [ rsp - 0x30 ], r10
mulx r10, r11, r14
adcx rbx, rcx
setc cl
clc
adcx rdi, r8
adcx r9, r13
adcx rbp, [ rsp - 0x40 ]
adox rdi, r15
adox r9, [ rsp - 0x30 ]
mov r15, [ rsp - 0x48 ]
mov r8, 0x0 
adcx r15, r8
adox rbp, rbx
mov r13, 0xffffffff00000001 
mulx r8, rbx, r13
clc
adcx rbx, r12
mov rbx, 0x53bda402fffe5bfe 
mulx r14, r12, rbx
movzx rbx, cl
adox rbx, r15
seto cl
mov r15, -0x2 
inc r15
adox r12, r8
mov r8, 0x3339d80809a1d805 
mulx r13, r15, r8
adcx r12, rdi
mov rdx, [ rsi + 0x10 ]
mulx r8, rdi, [ rax + 0x8 ]
adox r15, r14
adox r11, r13
mov rdx, [ rax + 0x10 ]
mulx r13, r14, [ rsi + 0x10 ]
adcx r15, r9
adcx r11, rbp
mov rdx, 0x0 
adox r10, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbp, r9, [ rax + 0x0 ]
mov rdx, -0x2 
inc rdx
adox rdi, rbp
adcx r10, rbx
movzx rbx, cl
mov rbp, 0x0 
adcx rbx, rbp
adox r14, r8
clc
adcx r9, r12
mov rdx, [ rax + 0x18 ]
mulx r12, rcx, [ rsi + 0x10 ]
adcx rdi, r15
mov rdx, 0xfffffffeffffffff 
mulx r15, r8, r9
mov r15, 0x53bda402fffe5bfe 
mov rdx, r15
mulx rbp, r15, r8
adox rcx, r13
adcx r14, r11
mov r13, 0x0 
adox r12, r13
mov r11, 0xffffffff00000001 
mov rdx, r8
mulx r13, r8, r11
mov r11, -0x2 
inc r11
adox r15, r13
mov r13, 0x3339d80809a1d805 
mov [ rsp - 0x28 ], r14
mulx r14, r11, r13
adox r11, rbp
adcx rcx, r10
mov r10, 0x73eda753299d7d48 
mulx r13, rbp, r10
adcx r12, rbx
setc bl
clc
adcx r8, r9
adcx r15, rdi
adox rbp, r14
adcx r11, [ rsp - 0x28 ]
mov rdx, [ rax + 0x10 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, 0x0 
adox r13, rdx
adcx rbp, rcx
mov rdx, [ rsi + 0x18 ]
mulx r14, rdi, [ rax + 0x0 ]
adcx r13, r12
mov rdx, -0x2 
inc rdx
adox rdi, r15
mov rdx, [ rsi + 0x18 ]
mulx r12, rcx, [ rax + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mulx r10, r15, rdi
setc r10b
clc
adcx rcx, r14
adox rcx, r11
adcx r8, r12
mov rdx, [ rsi + 0x18 ]
mulx r14, r11, [ rax + 0x18 ]
adcx r11, r9
adox r8, rbp
adox r11, r13
mov rdx, 0x0 
adcx r14, rdx
movzx r9, r10b
movzx rbx, bl
lea r9, [ r9 + rbx ]
mov rbx, 0x53bda402fffe5bfe 
mov rdx, r15
mulx rbp, r15, rbx
adox r14, r9
mov r10, 0xffffffff00000001 
mulx r12, r13, r10
clc
adcx r13, rdi
seto r13b
mov rdi, -0x2 
inc rdi
adox r15, r12
adcx r15, rcx
mov rcx, 0x3339d80809a1d805 
mulx r12, r9, rcx
adox r9, rbp
mov rbp, 0x73eda753299d7d48 
mulx rcx, rdi, rbp
adcx r9, r8
adox rdi, r12
mov rdx, 0x0 
adox rcx, rdx
adcx rdi, r11
adcx rcx, r14
movzx r8, r13b
adc r8, 0x0
mov r11, r15
sub r11, r10
mov r13, r9
sbb r13, rbx
mov r14, rdi
mov r12, 0x3339d80809a1d805 
sbb r14, r12
mov rdx, rcx
sbb rdx, rbp
sbb r8, 0x00000000
cmovc r14, rdi
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x10 ], r14
cmovc rdx, rcx
mov [ r8 + 0x18 ], rdx
cmovc r13, r9
mov [ r8 + 0x8 ], r13
cmovc r11, r15
mov [ r8 + 0x0 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.8606
; seed 3391912901055623 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1485104 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=97, initial num_batches=31): 85259 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.057409447419170645
; number reverted permutation / tried permutation: 66572 / 90093 =73.893%
; number reverted decision / tried decision: 59968 / 89906 =66.701%
; validated in 3.552s
