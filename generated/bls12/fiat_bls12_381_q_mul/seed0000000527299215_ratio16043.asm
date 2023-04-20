SECTION .text
	GLOBAL fiat_bls12_381_q_mul
fiat_bls12_381_q_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, 0xfffffffeffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r10
mov r12, 0x53bda402fffe5bfe 
mov rdx, rbp
mov [ rsp - 0x68 ], r13
mulx r13, rbp, r12
mov [ rsp - 0x60 ], r14
mov r14, 0xffffffff00000001 
mov [ rsp - 0x58 ], r15
mulx r12, r15, r14
mov r14, 0x73eda753299d7d48 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, r14
test al, al
adox rbp, r12
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r9
mulx r9, r14, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], rcx
mulx rcx, r8, [ rsi + 0x10 ]
mov rdx, 0x3339d80809a1d805 
mov [ rsp - 0x28 ], r8
mov [ rsp - 0x20 ], rcx
mulx rcx, r8, r12
adox r8, r13
adcx r14, r11
mov rdx, [ rsi + 0x10 ]
mulx r12, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x18 ], r12
mulx r12, r13, [ rsi + 0x0 ]
adcx r13, r9
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x10 ], r11
mulx r11, r9, [ rsi + 0x0 ]
adcx r9, r12
mov rdx, 0x0 
adcx r11, rdx
adox rdi, rcx
adox rbx, rdx
xor rcx, rcx
adox r15, r10
adox rbp, r14
adox r8, r13
adox rdi, r9
adox rbx, r11
mov rdx, [ rax + 0x0 ]
mulx r10, r15, [ rsi + 0x8 ]
adcx r10, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, r14, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r13, [ rax + 0x18 ]
adcx r14, [ rsp - 0x38 ]
adcx r13, r12
adcx r9, rcx
clc
adcx r15, rbp
mov rdx, 0xfffffffeffffffff 
mulx rbp, r11, r15
mov rbp, 0x53bda402fffe5bfe 
mov rdx, rbp
mulx r12, rbp, r11
adcx r10, r8
adcx r14, rdi
mov r8, 0xffffffff00000001 
mov rdx, r8
mulx rdi, r8, r11
adcx r13, rbx
seto bl
mov rdx, -0x3 
inc rdx
adox rbp, rdi
movzx rdi, bl
adcx rdi, r9
setc bl
clc
adcx r8, r15
mov r8, 0x3339d80809a1d805 
mov rdx, r11
mulx r9, r11, r8
adcx rbp, r10
adox r11, r12
mov r15, 0x73eda753299d7d48 
mulx r10, r12, r15
adox r12, r9
adcx r11, r14
adcx r12, r13
mov rdx, [ rax + 0x10 ]
mulx r13, r14, [ rsi + 0x10 ]
adox r10, rcx
adcx r10, rdi
movzx rdx, bl
adc rdx, 0x0
mov rbx, [ rsp - 0x10 ]
test al, al
adox rbx, [ rsp - 0x20 ]
adcx rbp, [ rsp - 0x28 ]
mov rdi, 0xfffffffeffffffff 
xchg rdx, rdi
mulx rcx, r9, rbp
adox r14, [ rsp - 0x18 ]
mov rdx, [ rax + 0x18 ]
mulx r15, rcx, [ rsi + 0x10 ]
adox rcx, r13
adcx rbx, r11
mov rdx, 0xffffffff00000001 
mulx r13, r11, r9
mov rdx, 0x0 
adox r15, rdx
adcx r14, r12
mov r12, 0x53bda402fffe5bfe 
mov rdx, r12
mulx r8, r12, r9
mov rdx, -0x2 
inc rdx
adox r12, r13
adcx rcx, r10
mov r10, 0x3339d80809a1d805 
mov rdx, r9
mulx r13, r9, r10
adox r9, r8
adcx r15, rdi
mov rdi, 0x73eda753299d7d48 
mulx r10, r8, rdi
adox r8, r13
setc dl
clc
adcx r11, rbp
adcx r12, rbx
adcx r9, r14
mov r11b, dl
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r13, r14, [ rax + 0x0 ]
mov rdx, 0x0 
adox r10, rdx
mov rdi, -0x3 
inc rdi
adox r14, r12
adcx r8, rcx
adcx r10, r15
mov rdx, [ rax + 0x10 ]
mulx r15, rcx, [ rsi + 0x18 ]
seto dl
inc rdi
adox r13, [ rsp - 0x40 ]
movzx r12, r11b
mov rdi, 0x0 
adcx r12, rdi
adox rcx, [ rsp - 0x48 ]
adox rbp, r15
adox rbx, rdi
add dl, 0x7F
adox r9, r13
adox rcx, r8
mov r11, 0xfffffffeffffffff 
mov rdx, r11
mulx r8, r11, r14
mov r8, 0xffffffff00000001 
mov rdx, r8
mulx r15, r8, r11
adcx r8, r14
adox rbp, r10
adox rbx, r12
mov r8, 0x53bda402fffe5bfe 
mov rdx, r11
mulx r14, r11, r8
seto r10b
mov r13, -0x3 
inc r13
adox r11, r15
adcx r11, r9
mov r12, 0x3339d80809a1d805 
mulx r15, r9, r12
adox r9, r14
adcx r9, rcx
mov rcx, 0x73eda753299d7d48 
mulx rdi, r14, rcx
adox r14, r15
adcx r14, rbp
mov rdx, 0x0 
adox rdi, rdx
adcx rdi, rbx
movzx rbp, r10b
adc rbp, 0x0
mov r10, r11
mov rbx, 0xffffffff00000001 
sub r10, rbx
mov r15, r9
sbb r15, r8
mov rdx, r14
sbb rdx, r12
mov r13, rdi
sbb r13, rcx
sbb rbp, 0x00000000
cmovc rdx, r14
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x10 ], rdx
cmovc r13, rdi
cmovc r15, r9
mov [ rbp + 0x18 ], r13
cmovc r10, r11
mov [ rbp + 0x8 ], r15
mov [ rbp + 0x0 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.6043
; seed 2311322206522973 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1681734 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=99, initial num_batches=31): 76009 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.04519680282375215
; number reverted permutation / tried permutation: 64348 / 90043 =71.464%
; number reverted decision / tried decision: 46102 / 89956 =51.249%
; validated in 2.29s
