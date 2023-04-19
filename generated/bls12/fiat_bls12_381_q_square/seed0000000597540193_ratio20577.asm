SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x10 ]
xor rdx, rdx
adox rbx, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, r9, rdx
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
adcx r14, r12
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x50 ], rdi
mulx rdi, r12, r13
mov rdx, 0x73eda753299d7d48 
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r8
mulx r8, rbx, r13
adcx rax, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], rax
mulx rax, r15, [ rsi + 0x18 ]
adox r11, rbp
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r11
mulx r11, rbp, [ rsi + 0x0 ]
adcx rbp, r10
adox r15, rcx
mov rdx, 0x0 
adcx r11, rdx
mov r10, 0xffffffff00000001 
mov rdx, r13
mulx rcx, r13, r10
mov r10, 0x0 
adox rax, r10
mov r10, 0x3339d80809a1d805 
mov [ rsp - 0x28 ], rax
mov [ rsp - 0x20 ], r15
mulx r15, rax, r10
xor rdx, rdx
adox r12, rcx
adox rax, rdi
adox rbx, r15
adcx r13, r9
adcx r12, r14
adox r8, rdx
adcx rax, [ rsp - 0x38 ]
adcx rbx, rbp
mov rdx, [ rsi + 0x8 ]
mulx r9, r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r14, [ rsi + 0x0 ]
adcx r8, r11
mov rdx, -0x2 
inc rdx
adox r13, rdi
setc bpl
clc
adcx r14, r12
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, 0xfffffffeffffffff 
mulx r12, r15, r14
adox r11, r9
mov rdx, [ rsi + 0x18 ]
mulx r9, r12, [ rsi + 0x8 ]
adox r12, rcx
adcx r13, rax
mov rdx, 0x0 
adox r9, rdx
adcx r11, rbx
adcx r12, r8
mov rax, 0xffffffff00000001 
mov rdx, r15
mulx rbx, r15, rax
mov rdi, -0x2 
inc rdi
adox r15, r14
mov r15, 0x53bda402fffe5bfe 
mulx r14, r8, r15
movzx rcx, bpl
adcx rcx, r9
setc bpl
clc
adcx r8, rbx
mulx rbx, r9, r10
adox r8, r13
adcx r9, r14
adox r9, r11
mov r13, 0x73eda753299d7d48 
mulx r14, r11, r13
adcx r11, rbx
mov rdx, 0x0 
adcx r14, rdx
adox r11, r12
clc
adcx r8, [ rsp - 0x40 ]
adcx r9, [ rsp - 0x48 ]
mov r12, 0xfffffffeffffffff 
mov rdx, r12
mulx rbx, r12, r8
adox r14, rcx
adcx r11, [ rsp - 0x30 ]
movzx rbx, bpl
mov rcx, 0x0 
adox rbx, rcx
adcx r14, [ rsp - 0x20 ]
mov rdx, r12
mulx rbp, r12, rax
adcx rbx, [ rsp - 0x28 ]
mulx rdi, rcx, r15
mov r15, -0x2 
inc r15
adox rcx, rbp
setc bpl
clc
adcx r12, r8
adcx rcx, r9
mulx r8, r12, r10
adox r12, rdi
adcx r12, r11
mulx r11, r9, r13
adox r9, r8
adcx r9, r14
mov rdx, [ rsi + 0x18 ]
mulx rdi, r14, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r15, r8, [ rsi + 0x0 ]
mov rdx, 0x0 
adox r11, rdx
adcx r11, rbx
movzx rbx, bpl
adc rbx, 0x0
mov rdx, [ rsi + 0x8 ]
mulx r13, rbp, [ rsi + 0x18 ]
xor rdx, rdx
adox r8, rcx
adcx rbp, r15
adcx r14, r13
adox rbp, r12
adox r14, r9
mov rdx, [ rsi + 0x18 ]
mulx r12, rcx, rdx
adcx rcx, rdi
mov rdx, 0x0 
adcx r12, rdx
mov r9, 0xfffffffeffffffff 
mov rdx, r9
mulx rdi, r9, r8
adox rcx, r11
mov rdx, rax
mulx rdi, rax, r9
adox r12, rbx
mov r15, 0x53bda402fffe5bfe 
mov rdx, r9
mulx r11, r9, r15
mulx r13, rbx, r10
clc
adcx r9, rdi
adcx rbx, r11
seto dil
mov r11, -0x2 
inc r11
adox rax, r8
adox r9, rbp
adox rbx, r14
mov rax, 0x73eda753299d7d48 
mulx rbp, r8, rax
adcx r8, r13
mov r14, 0x0 
adcx rbp, r14
adox r8, rcx
adox rbp, r12
movzx rdx, dil
adox rdx, r14
mov rcx, r9
mov rdi, 0xffffffff00000001 
sub rcx, rdi
mov r12, rbx
sbb r12, r15
mov r13, r8
sbb r13, r10
mov r14, rbp
sbb r14, rax
sbb rdx, 0x00000000
cmovc r13, r8
cmovc r14, rbp
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], r14
cmovc rcx, r9
mov [ rdx + 0x0 ], rcx
cmovc r12, rbx
mov [ rdx + 0x10 ], r13
mov [ rdx + 0x8 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 2.0577
; seed 4037760109215507 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2270812 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=130, initial num_batches=31): 143562 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.06322055722798717
; number reverted permutation / tried permutation: 69139 / 89971 =76.846%
; number reverted decision / tried decision: 61840 / 90028 =68.690%
; validated in 4.847s
