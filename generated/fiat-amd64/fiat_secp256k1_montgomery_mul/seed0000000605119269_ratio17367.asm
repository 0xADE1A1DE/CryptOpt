SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, 0xd838091dd2253531 
mulx r8, rcx, r10
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rax + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
add r8, r11
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x10 ]
adcx r15, r9
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r14
mulx r14, r9, [ rax + 0x18 ]
adcx r9, rdi
adc r14, 0x0
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x40 ], r13
mulx r13, rdi, [ rsi + 0x10 ]
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], rdi
mulx rdi, r13, rcx
mov rcx, rbx
xor rdx, rdx
adox rcx, rdi
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], r12
mulx r12, rdi, [ rax + 0x10 ]
mov rdx, rbx
adox rdx, rbp
adox rbx, rbp
mov [ rsp - 0x20 ], r12
mov r12, 0x0 
adox rbp, r12
adcx r13, r10
adcx rcx, r8
mov r13, -0x3 
inc r13
adox r11, rcx
mov r10, 0xd838091dd2253531 
xchg rdx, r10
mulx rcx, r8, r11
mov rdx, [ rax + 0x10 ]
mulx r12, rcx, [ rsi + 0x8 ]
adcx r10, r15
adcx rbx, r9
mov rdx, [ rsi + 0x8 ]
mulx r9, r15, [ rax + 0x8 ]
adcx rbp, r14
mov rdx, [ rsi + 0x8 ]
mulx r13, r14, [ rax + 0x18 ]
setc dl
clc
adcx r15, [ rsp - 0x28 ]
adcx rcx, r9
mov r9, 0xffffffffffffffff 
xchg rdx, r9
mov [ rsp - 0x18 ], rdi
mov byte [ rsp - 0x10 ], r9b
mulx r9, rdi, r8
adox r15, r10
adcx r14, r12
mov r12, 0x0 
adcx r13, r12
adox rcx, rbx
adox r14, rbp
movzx r10, byte [ rsp - 0x10 ]
adox r10, r13
mov rbx, 0xfffffffefffffc2f 
mov rdx, rbx
mulx rbp, rbx, r8
mov r8, rdi
clc
adcx r8, rbp
mov r13, rdi
adcx r13, r9
seto bpl
mov rdx, -0x3 
inc rdx
adox rbx, r11
adox r8, r15
mov rdx, [ rax + 0x0 ]
mulx r11, rbx, [ rsi + 0x10 ]
adox r13, rcx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r15, [ rax + 0x8 ]
adcx rdi, r9
adox rdi, r14
adcx r9, r12
clc
adcx r15, r11
adcx rcx, [ rsp - 0x30 ]
mov rdx, [ rsp - 0x38 ]
adcx rdx, [ rsp - 0x40 ]
mov r14, [ rsp - 0x48 ]
adcx r14, r12
adox r9, r10
clc
adcx rbx, r8
mov r10, 0xd838091dd2253531 
xchg rdx, rbx
mulx r11, r8, r10
adcx r15, r13
adcx rcx, rdi
adcx rbx, r9
movzx r11, bpl
adox r11, r12
mov rbp, 0xfffffffefffffc2f 
xchg rdx, r8
mulx rdi, r13, rbp
adcx r14, r11
mov r9, 0xffffffffffffffff 
mulx r12, r11, r9
mov rdx, r11
mov r9, -0x2 
inc r9
adox rdx, rdi
setc dil
clc
adcx r13, r8
adcx rdx, r15
mov r13, r11
adox r13, r12
adox r11, r12
adcx r13, rcx
adcx r11, rbx
mov r8, 0x0 
adox r12, r8
adcx r12, r14
mov r15, rdx
mov rdx, [ rax + 0x0 ]
mulx rbx, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, r14, [ rax + 0x8 ]
inc r9
adox r14, rbx
movzx rdx, dil
adcx rdx, r9
adox r8, [ rsp - 0x18 ]
clc
adcx rcx, r15
mov rdi, rdx
mov rdx, [ rax + 0x18 ]
mulx rbx, r15, [ rsi + 0x18 ]
adcx r14, r13
adcx r8, r11
adox r15, [ rsp - 0x20 ]
adox rbx, r9
mov rdx, rcx
mulx r13, rcx, r10
adcx r15, r12
adcx rbx, rdi
xchg rdx, rcx
mulx r11, r13, rbp
mov r12, 0xffffffffffffffff 
mulx r9, rdi, r12
mov rdx, rdi
mov r12, -0x2 
inc r12
adox rdx, r11
mov r11, rdi
adox r11, r9
setc r12b
clc
adcx r13, rcx
adcx rdx, r14
adcx r11, r8
adox rdi, r9
adcx rdi, r15
mov r13, 0x0 
adox r9, r13
adcx r9, rbx
movzx rcx, r12b
adc rcx, 0x0
mov r14, rdx
sub r14, rbp
mov r8, 0xffffffffffffffff 
mov r15, r11
sbb r15, r8
mov r12, rdi
sbb r12, r8
mov rbx, r9
sbb rbx, r8
sbb rcx, r13
cmovc r12, rdi
cmovc rbx, r9
cmovc r14, rdx
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x10 ], r12
mov [ rcx + 0x0 ], r14
cmovc r15, r11
mov [ rcx + 0x18 ], rbx
mov [ rcx + 0x8 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.7367
; seed 1009995749570143 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1392409 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=90, initial num_batches=31): 69033 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.04957810528372052
; number reverted permutation / tried permutation: 79727 / 94958 =83.960%
; number reverted decision / tried decision: 65845 / 95041 =69.281%
; validated in 2.473s
