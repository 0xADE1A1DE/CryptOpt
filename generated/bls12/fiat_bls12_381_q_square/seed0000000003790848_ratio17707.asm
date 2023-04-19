SECTION .text
	GLOBAL fiat_bls12_381_q_square
fiat_bls12_381_q_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
add r8, rbp
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbx
adcx r11, r9
mov r14, 0xffffffff00000001 
mov rdx, r14
mulx r9, r14, r13
adcx rax, rcx
mov rcx, 0x53bda402fffe5bfe 
mov rdx, r13
mov [ rsp - 0x58 ], r15
mulx r15, r13, rcx
adc r10, 0x0
mov rcx, 0x3339d80809a1d805 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r12
mulx r12, rdi, rcx
add r13, r9
adcx rdi, r15
mov r9, -0x2 
inc r9
adox r14, rbx
mov r14, 0x73eda753299d7d48 
mulx r15, rbx, r14
adox r13, r8
adcx rbx, r12
adox rdi, r11
setc r8b
clc
adcx rbp, r13
adox rbx, rax
movzx rdx, r8b
lea rdx, [ rdx + r15 ]
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r13, r15, [ rsi + 0x18 ]
adox r11, r10
mov rdx, [ rsi + 0x10 ]
mulx r8, r10, [ rsi + 0x18 ]
seto dl
inc r9
adox r15, r12
adox r10, r13
mov r12b, dl
mov rdx, [ rsi + 0x18 ]
mulx r9, r13, rdx
adox r13, r8
mov rdx, 0xfffffffeffffffff 
mulx r14, r8, rbp
mov rdx, [ rsi + 0x8 ]
mulx rcx, r14, rdx
mov rdx, 0x0 
adox r9, rdx
mov [ rsp - 0x40 ], r9
mov r9, -0x3 
inc r9
adox r14, [ rsp - 0x48 ]
adcx r14, rdi
mov rdx, [ rsi + 0x8 ]
mulx r9, rdi, [ rsi + 0x10 ]
adox rdi, rcx
adcx rdi, rbx
mov rdx, 0x73eda753299d7d48 
mulx rcx, rbx, r8
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], r10
mulx r10, r13, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x28 ], r15
mov [ rsp - 0x20 ], rax
mulx rax, r15, [ rsi + 0x18 ]
adox r15, r9
adcx r15, r11
mov rdx, 0x0 
adox rax, rdx
movzx r11, r12b
adcx r11, rax
mov r12, 0x53bda402fffe5bfe 
mov rdx, r8
mulx r9, r8, r12
mov rax, -0x2 
inc rax
adox r13, rbp
setc r13b
clc
adcx r8, r10
adox r8, r14
mov rbp, 0x3339d80809a1d805 
mulx r10, r14, rbp
adcx r14, r9
adcx rbx, r10
adox r14, rdi
mov rdx, [ rsi + 0x0 ]
mulx r9, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx rax, r10, [ rsi + 0x8 ]
adox rbx, r15
mov rdx, [ rsi + 0x18 ]
mulx rbp, r15, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx rcx, rdx
adox rcx, r11
movzx r11, r13b
adox r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, r13, rdx
xor rdx, rdx
adox r10, r9
adox r13, rax
adox r15, r12
adcx rdi, r8
adcx r10, r14
adcx r13, rbx
adcx r15, rcx
adox rbp, rdx
mov r8, 0xfffffffeffffffff 
mov rdx, r8
mulx r14, r8, rdi
mov r14, 0x53bda402fffe5bfe 
mov rdx, r8
mulx r9, r8, r14
adcx rbp, r11
mov rax, 0xffffffff00000001 
mulx rcx, rbx, rax
mov r11, -0x2 
inc r11
adox rbx, rdi
setc bl
clc
adcx r8, rcx
adox r8, r10
mov r12, 0x3339d80809a1d805 
mulx r10, rdi, r12
adcx rdi, r9
mov r9, 0x73eda753299d7d48 
mulx r11, rcx, r9
adcx rcx, r10
adox rdi, r13
mov r13, 0x0 
adcx r11, r13
clc
adcx r8, [ rsp - 0x20 ]
mov rdx, 0xfffffffeffffffff 
mulx r13, r10, r8
mov rdx, r10
mulx r13, r10, rax
adcx rdi, [ rsp - 0x28 ]
adox rcx, r15
adcx rcx, [ rsp - 0x30 ]
adox r11, rbp
movzx r15, bl
mov rbp, 0x0 
adox r15, rbp
adcx r11, [ rsp - 0x38 ]
adcx r15, [ rsp - 0x40 ]
mov rbx, -0x3 
inc rbx
adox r10, r8
mulx r8, r10, r14
setc bl
clc
adcx r10, r13
adox r10, rdi
mulx rdi, r13, r12
adcx r13, r8
adox r13, rcx
mulx r8, rcx, r9
adcx rcx, rdi
adox rcx, r11
adcx r8, rbp
adox r8, r15
movzx rdx, bl
adox rdx, rbp
mov r11, r10
sub r11, rax
mov rbx, r13
sbb rbx, r14
mov r15, rcx
sbb r15, r12
mov rdi, r8
sbb rdi, r9
sbb rdx, 0x00000000
cmovc rbx, r13
cmovc r15, rcx
cmovc r11, r10
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], rbx
cmovc rdi, r8
mov [ rdx + 0x18 ], rdi
mov [ rdx + 0x10 ], r15
mov [ rdx + 0x0 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.7707
; seed 2066001386683310 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 2143288 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=82, initial num_batches=31): 124830 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.05824228941700789
; number reverted permutation / tried permutation: 67872 / 90076 =75.350%
; number reverted decision / tried decision: 61746 / 89923 =68.665%
; validated in 3.517s
