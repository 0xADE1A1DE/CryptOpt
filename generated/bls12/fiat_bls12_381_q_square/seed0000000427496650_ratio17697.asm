SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
test al, al
adox rbx, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r9, [ rsi + 0x10 ]
adcx rax, r13
adcx r14, r10
mov rdx, [ rsi + 0x18 ]
mulx r13, r10, [ rsi + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r14
mulx r14, rbx, r12
adcx r10, r15
mov r14, 0x53bda402fffe5bfe 
mov rdx, r14
mulx r15, r14, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], r10
mov [ rsp - 0x30 ], r8
mulx r8, r10, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx r13, rdx
clc
adcx r9, r8
adcx r11, rdi
mov rdx, [ rsi + 0x18 ]
mulx r8, rdi, [ rsi + 0x10 ]
adcx rdi, rcx
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x28 ], rdi
mulx rdi, rcx, rbx
mov rdx, 0x0 
adcx r8, rdx
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x20 ], r8
mov [ rsp - 0x18 ], r11
mulx r11, r8, rbx
clc
adcx r14, rdi
adcx r8, r15
mov rdx, [ rsi + 0x8 ]
mulx rdi, r15, [ rsi + 0x10 ]
adox r15, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], r9
mulx r9, rbp, [ rsi + 0x18 ]
adox rbp, rdi
mov rdx, 0x73eda753299d7d48 
mov [ rsp - 0x8 ], r10
mulx r10, rdi, rbx
adcx rdi, r11
mov rbx, 0x0 
adox r9, rbx
adc r10, 0x0
test al, al
adox rcx, r12
adox r14, rax
adcx r14, [ rsp - 0x30 ]
adox r8, [ rsp - 0x40 ]
adox rdi, [ rsp - 0x38 ]
adox r10, r13
adcx r8, [ rsp - 0x48 ]
adcx r15, rdi
adcx rbp, r10
mov rcx, 0xfffffffeffffffff 
mov rdx, rcx
mulx r12, rcx, r14
mov r12, 0xffffffff00000001 
mov rdx, r12
mulx rax, r12, rcx
seto r13b
mov r11, -0x3 
inc r11
adox r12, r14
movzx r12, r13b
adcx r12, r9
mov r9, 0x53bda402fffe5bfe 
mov rdx, rcx
mulx r14, rcx, r9
setc dil
clc
adcx rcx, rax
mov r13, 0x3339d80809a1d805 
mulx rax, r10, r13
adcx r10, r14
adox rcx, r8
adox r10, r15
mov r8, 0x73eda753299d7d48 
mulx r14, r15, r8
adcx r15, rax
adcx r14, rbx
adox r15, rbp
adox r14, r12
clc
adcx rcx, [ rsp - 0x8 ]
mov rbp, 0xfffffffeffffffff 
mov rdx, rcx
mulx r12, rcx, rbp
mov r12, 0xffffffff00000001 
xchg rdx, rcx
mulx rbx, rax, r12
movzx r11, dil
mov r8, 0x0 
adox r11, r8
adcx r10, [ rsp - 0x10 ]
mulx r8, rdi, r9
mulx r9, r12, r13
mov r13, -0x2 
inc r13
adox rdi, rbx
adox r12, r8
mov rbx, 0x73eda753299d7d48 
mulx r13, r8, rbx
adox r8, r9
mov rdx, 0x0 
adox r13, rdx
mov r9, -0x3 
inc r9
adox rax, rcx
adcx r15, [ rsp - 0x18 ]
adox rdi, r10
adcx r14, [ rsp - 0x28 ]
adcx r11, [ rsp - 0x20 ]
adox r12, r15
mov rdx, [ rsi + 0x18 ]
mulx rcx, rax, [ rsi + 0x0 ]
adox r8, r14
adox r13, r11
mov rdx, [ rsi + 0x18 ]
mulx r15, r10, [ rsi + 0x10 ]
setc dl
clc
adcx rax, rdi
xchg rdx, rax
mulx r14, rdi, rbp
movzx r14, al
mov r11, 0x0 
adox r14, r11
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r11, [ rsi + 0x18 ]
mov rdx, -0x2 
inc rdx
adox r11, rcx
adcx r11, r12
adox r10, r9
mov rdx, [ rsi + 0x18 ]
mulx rcx, r12, rdx
adox r12, r15
mov rdx, 0x0 
adox rcx, rdx
adcx r10, r8
adcx r12, r13
adcx rcx, r14
mov r8, 0x53bda402fffe5bfe 
mov rdx, r8
mulx r13, r8, rdi
mov r15, 0xffffffff00000001 
mov rdx, rdi
mulx r14, rdi, r15
mov r9, -0x2 
inc r9
adox rdi, rax
setc dil
clc
adcx r8, r14
mov rax, 0x3339d80809a1d805 
mulx r9, r14, rax
adcx r14, r13
adox r8, r11
adox r14, r10
mulx r10, r11, rbx
adcx r11, r9
adox r11, r12
mov rdx, 0x0 
adcx r10, rdx
adox r10, rcx
movzx r12, dil
adox r12, rdx
mov rdi, r8
sub rdi, r15
mov rcx, r14
mov r13, 0x53bda402fffe5bfe 
sbb rcx, r13
mov r9, r11
sbb r9, rax
mov rdx, r10
sbb rdx, rbx
sbb r12, 0x00000000
cmovc rdi, r8
cmovc r9, r11
cmovc rdx, r10
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x0 ], rdi
mov [ r12 + 0x18 ], rdx
cmovc rcx, r14
mov [ r12 + 0x8 ], rcx
mov [ r12 + 0x10 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.7697
; seed 0267847897906282 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2485053 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=98, initial num_batches=31): 107508 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.04326185397253097
; number reverted permutation / tried permutation: 69463 / 89989 =77.191%
; number reverted decision / tried decision: 47042 / 90010 =52.263%
; validated in 3.106s
