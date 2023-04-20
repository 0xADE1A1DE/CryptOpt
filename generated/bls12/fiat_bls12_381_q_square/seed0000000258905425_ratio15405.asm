SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r8
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, 0x53bda402fffe5bfe 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r12
mov rdx, 0x73eda753299d7d48 
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], rbp
mulx rbp, rbx, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], rbp
mulx rbp, r13, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], rbx
mov [ rsp - 0x20 ], rdi
mulx rdi, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox r13, r14
adox rbx, rbp
adox r11, rdi
adox rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r14, [ rsi + 0x0 ]
adcx r14, r9
adcx rax, rbp
mov rdx, [ rsi + 0x0 ]
mulx rdi, r9, [ rsi + 0x18 ]
adcx r9, r10
mov rdx, 0xffffffff00000001 
mulx rbp, r10, r12
mov rdx, -0x2 
inc rdx
adox r15, rbp
mov rbp, 0x0 
adcx rdi, rbp
clc
adcx r10, r8
mov r10, 0x3339d80809a1d805 
mov rdx, r10
mulx r8, r10, r12
adox r10, [ rsp - 0x20 ]
adcx r15, r14
adox r8, [ rsp - 0x28 ]
adcx r10, rax
mov r12, [ rsp - 0x30 ]
adox r12, rbp
mov r14, -0x3 
inc r14
adox r15, [ rsp - 0x38 ]
adcx r8, r9
adcx r12, rdi
adox r13, r10
adox rbx, r8
adox r11, r12
mov rdx, [ rsi + 0x10 ]
mulx r9, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mulx r10, rdi, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, r8, [ rsi + 0x8 ]
setc dl
clc
adcx r8, [ rsp - 0x40 ]
adcx rdi, r12
adcx rax, r10
movzx r10, dl
adox r10, rcx
mov rcx, 0xfffffffeffffffff 
mov rdx, rcx
mulx r12, rcx, r15
mov r12, 0x3339d80809a1d805 
mov rdx, r12
mulx rbp, r12, rcx
mov r14, 0xffffffff00000001 
mov rdx, rcx
mov [ rsp - 0x18 ], rax
mulx rax, rcx, r14
seto r14b
mov [ rsp - 0x10 ], rdi
mov rdi, -0x2 
inc rdi
adox rcx, r15
mov rcx, 0x0 
adcx r9, rcx
mov r15, 0x53bda402fffe5bfe 
mulx rdi, rcx, r15
clc
adcx rcx, rax
adcx r12, rdi
adox rcx, r13
mov r13, 0x73eda753299d7d48 
mulx rdi, rax, r13
adcx rax, rbp
adox r12, rbx
adox rax, r11
mov rbx, 0x0 
adcx rdi, rbx
adox rdi, r10
movzx r11, r14b
adox r11, rbx
xor r14, r14
adox rcx, [ rsp - 0x48 ]
mov rbx, 0xfffffffeffffffff 
mov rdx, rcx
mulx r10, rcx, rbx
mov r10, 0xffffffff00000001 
xchg rdx, r10
mulx r14, rbp, rcx
adox r8, r12
adcx rbp, r10
adox rax, [ rsp - 0x10 ]
adox rdi, [ rsp - 0x18 ]
mov rdx, r15
mulx r15, rbp, rcx
adox r9, r11
seto r12b
mov r11, -0x2 
inc r11
adox rbp, r14
mov r10, 0x3339d80809a1d805 
mov rdx, rcx
mulx r14, rcx, r10
adox rcx, r15
adcx rbp, r8
mulx r15, r8, r13
adox r8, r14
adcx rcx, rax
mov rdx, 0x0 
adox r15, rdx
adcx r8, rdi
adcx r15, r9
mov rdx, [ rsi + 0x18 ]
mulx rdi, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx r14, r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r13, r11, [ rsi + 0x0 ]
movzx rdx, r12b
adc rdx, 0x0
test al, al
adox r11, rbp
xchg rdx, r11
mulx rbp, r12, rbx
adcx rax, r13
adox rax, rcx
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx r13, rcx, [ rsi + 0x18 ]
adcx rcx, rdi
adox rcx, r8
adcx r9, r13
mov rdx, r12
mulx r8, r12, r10
adox r9, r15
mov r15, 0x0 
adcx r14, r15
mov rdi, 0xffffffff00000001 
mulx r15, r13, rdi
clc
adcx r13, rbp
mov r13, 0x53bda402fffe5bfe 
mulx rbx, rbp, r13
adox r14, r11
seto r11b
mov r13, -0x2 
inc r13
adox rbp, r15
adox r12, rbx
mov r15, 0x73eda753299d7d48 
mulx r13, rbx, r15
adox rbx, r8
adcx rbp, rax
adcx r12, rcx
adcx rbx, r9
mov rdx, 0x0 
adox r13, rdx
adcx r13, r14
movzx rax, r11b
adc rax, 0x0
mov rcx, rbp
sub rcx, rdi
mov r8, r12
mov r9, 0x53bda402fffe5bfe 
sbb r8, r9
mov r11, rbx
sbb r11, r10
mov r14, r13
sbb r14, r15
sbb rax, 0x00000000
cmovc r14, r13
cmovc r11, rbx
cmovc rcx, rbp
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x18 ], r14
mov [ rax + 0x0 ], rcx
cmovc r8, r12
mov [ rax + 0x8 ], r8
mov [ rax + 0x10 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.5405
; seed 0259873666446229 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1677916 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=112, initial num_batches=31): 73220 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.04363746456914411
; number reverted permutation / tried permutation: 68304 / 90069 =75.835%
; number reverted decision / tried decision: 46324 / 89930 =51.511%
; validated in 1.935s
