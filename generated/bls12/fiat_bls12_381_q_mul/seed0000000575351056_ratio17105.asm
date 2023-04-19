SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mulx r8, rcx, r10
mov rdx, [ rax + 0x18 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
mov [ rsp - 0x70 ], r12
mov r12, 0xffffffff00000001 
mov rdx, r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rcx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r15
mulx r15, rdi, [ rax + 0x8 ]
test al, al
adox rdi, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r14
mulx r14, r11, [ rax + 0x10 ]
adox r11, r15
adox r8, r14
adcx rbx, r13
mov rdx, 0x0 
adox r9, rdx
mov r13, 0x3339d80809a1d805 
mov rdx, r13
mulx r15, r13, rcx
adcx r13, rbp
mov rbp, 0x73eda753299d7d48 
mov rdx, rbp
mulx r14, rbp, rcx
adcx rbp, r15
adc r14, 0x0
xor rcx, rcx
adox r12, r10
adox rbx, rdi
adox r13, r11
mov rdx, [ rax + 0x8 ]
mulx r10, r12, [ rsi + 0x8 ]
adox rbp, r8
mov rdx, [ rsi + 0x8 ]
mulx r11, rdi, [ rax + 0x0 ]
adcx r12, r11
mov rdx, [ rsi + 0x8 ]
mulx r15, r8, [ rax + 0x10 ]
adcx r8, r10
mov rdx, [ rax + 0x18 ]
mulx r11, r10, [ rsi + 0x8 ]
adcx r10, r15
adcx r11, rcx
clc
adcx rdi, rbx
adcx r12, r13
adcx r8, rbp
adox r14, r9
adcx r10, r14
mov rdx, 0xfffffffeffffffff 
mulx rbx, r9, rdi
mov rbx, 0x3339d80809a1d805 
mov rdx, r9
mulx r13, r9, rbx
mov rbp, 0x53bda402fffe5bfe 
mulx r14, r15, rbp
mov rcx, 0xffffffff00000001 
mulx rbx, rbp, rcx
setc cl
clc
adcx r15, rbx
movzx rbx, cl
adox rbx, r11
adcx r9, r14
seto r11b
mov rcx, -0x2 
inc rcx
adox rbp, rdi
adox r15, r12
mov rbp, rdx
mov rdx, [ rax + 0x8 ]
mulx r12, rdi, [ rsi + 0x10 ]
mov rdx, 0x73eda753299d7d48 
mulx rcx, r14, rbp
adox r9, r8
adcx r14, r13
adox r14, r10
mov r8, 0x0 
adcx rcx, r8
mov rdx, [ rax + 0x0 ]
mulx rbp, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, r13, [ rax + 0x18 ]
adox rcx, rbx
clc
adcx rdi, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbp, rbx, [ rax + 0x10 ]
adcx rbx, r12
adcx r13, rbp
mov rdx, 0x0 
adcx r8, rdx
clc
adcx r10, r15
adcx rdi, r9
adcx rbx, r14
mov r15, 0xfffffffeffffffff 
mov rdx, r15
mulx r12, r15, r10
mov r12, 0xffffffff00000001 
mov rdx, r12
mulx r9, r12, r15
adcx r13, rcx
mov r14, 0x3339d80809a1d805 
mov rdx, r15
mulx rcx, r15, r14
movzx rbp, r11b
mov r14, 0x0 
adox rbp, r14
adcx r8, rbp
mov r11, -0x3 
inc r11
adox r12, r10
mov r12, 0x53bda402fffe5bfe 
mulx rbp, r10, r12
setc r11b
clc
adcx r10, r9
mov r9, 0x73eda753299d7d48 
mulx r12, r14, r9
mov rdx, [ rax + 0x0 ]
mov byte [ rsp - 0x38 ], r11b
mulx r11, r9, [ rsi + 0x18 ]
adox r10, rdi
adcx r15, rbp
adcx r14, rcx
adox r15, rbx
adox r14, r13
mov rdx, [ rax + 0x10 ]
mulx rbx, rdi, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx r12, rdx
adox r12, r8
movzx r13, byte [ rsp - 0x38 ]
adox r13, rdx
xor rcx, rcx
adox r9, r10
mov rdx, [ rax + 0x18 ]
mulx rbp, r8, [ rsi + 0x18 ]
adcx r11, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
adcx r8, rbx
mov rdx, 0xfffffffeffffffff 
mulx rbx, r10, r9
mov rbx, 0x53bda402fffe5bfe 
mov rdx, r10
mulx rcx, r10, rbx
adox r11, r15
adox rdi, r14
adox r8, r12
mov r15, 0x0 
adcx rbp, r15
mov r14, 0xffffffff00000001 
mulx r15, r12, r14
clc
adcx r12, r9
adox rbp, r13
seto r12b
mov r13, -0x2 
inc r13
adox r10, r15
mov r9, 0x3339d80809a1d805 
mulx r13, r15, r9
adox r15, rcx
adcx r10, r11
mov rcx, 0x73eda753299d7d48 
mulx r14, r11, rcx
adox r11, r13
mov rdx, 0x0 
adox r14, rdx
adcx r15, rdi
adcx r11, r8
adcx r14, rbp
movzx rdi, r12b
adc rdi, 0x0
mov r8, r10
mov r12, 0xffffffff00000001 
sub r8, r12
mov rbp, r15
sbb rbp, rbx
mov r13, r11
sbb r13, r9
mov rdx, r14
sbb rdx, rcx
sbb rdi, 0x00000000
cmovc r13, r11
cmovc rbp, r15
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x8 ], rbp
cmovc r8, r10
cmovc rdx, r14
mov [ rdi + 0x18 ], rdx
mov [ rdi + 0x0 ], r8
mov [ rdi + 0x10 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.7105
; seed 1533014943087430 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1632098 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=99, initial num_batches=31): 89263 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05469218147439676
; number reverted permutation / tried permutation: 65140 / 89821 =72.522%
; number reverted decision / tried decision: 45365 / 90178 =50.306%
; validated in 2.79s
