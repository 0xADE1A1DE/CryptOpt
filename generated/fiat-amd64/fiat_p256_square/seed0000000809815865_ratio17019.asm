SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov r11, 0xffffffff 
mov rdx, rax
mulx rcx, rax, r11
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mulx r11, r15, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], rdi
mov [ rsp - 0x38 ], r14
mulx r14, rdi, [ rsi + 0x10 ]
xor rdx, rdx
adox r15, r10
adcx rax, r9
adcx rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r14
mov [ rsp - 0x28 ], rdi
mulx rdi, r14, [ rsi + 0x18 ]
adox r10, r11
adox r14, r9
clc
adcx rbp, rbx
mov rdx, 0x0 
adox rdi, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, rbx, rdx
adcx r13, r12
adcx rbx, [ rsp - 0x38 ]
adc r11, 0x0
mov rdx, r8
test al, al
adox rdx, [ rsp - 0x40 ]
adox rax, r15
mov rdx, [ rsi + 0x8 ]
mulx r15, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r11
mulx r11, r9, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], rbx
mov [ rsp - 0x10 ], r13
mulx r13, rbx, [ rsi + 0x8 ]
adcx r9, r15
adcx rbx, r11
mov rdx, [ rsi + 0x8 ]
mulx r11, r15, [ rsi + 0x18 ]
adcx r15, r13
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x8 ], rbp
mulx rbp, r13, r8
mov r8, 0x0 
adcx r11, r8
adox rcx, r10
adox r13, r14
clc
adcx r12, rax
adox rbp, rdi
adcx r9, rcx
adcx rbx, r13
mulx r14, r10, r12
adcx r15, rbp
mov rdi, 0xffffffff 
mov rdx, rdi
mulx rax, rdi, r12
mov rcx, 0xffffffffffffffff 
mov rdx, r12
mulx r13, r12, rcx
setc bpl
clc
adcx rdi, r13
adcx rax, r8
clc
adcx r12, rdx
adcx rdi, r9
adcx rax, rbx
adcx r10, r15
movzx r12, bpl
adox r12, r11
adcx r14, r12
mov rdx, [ rsi + 0x0 ]
mulx r9, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx rbp, rbx, [ rsi + 0x10 ]
setc dl
clc
adcx r11, rdi
xchg rdx, rcx
mulx r13, r15, r11
movzx rdi, cl
adox rdi, r8
mov rdx, [ rsi + 0x10 ]
mulx rcx, r12, rdx
mov rdx, -0x3 
inc rdx
adox rbx, r9
adcx rbx, rax
adox r12, rbp
adcx r12, r10
adox rcx, [ rsp - 0x28 ]
mov rax, [ rsp - 0x30 ]
adox rax, r8
adcx rcx, r14
adcx rax, rdi
mov r10, 0xffffffff 
mov rdx, r10
mulx r14, r10, r11
mov r9, -0x3 
inc r9
adox r10, r13
adox r14, r8
mov rbp, -0x3 
inc rbp
adox r15, r11
adox r10, rbx
setc bpl
clc
adcx r10, [ rsp - 0x48 ]
adox r14, r12
mov r15, 0xffffffff00000001 
mov rdx, r15
mulx r13, r15, r11
mov r11, 0xffffffff 
mov rdx, r11
mulx rdi, r11, r10
adcx r14, [ rsp - 0x8 ]
adox r15, rcx
adox r13, rax
adcx r15, [ rsp - 0x10 ]
adcx r13, [ rsp - 0x18 ]
movzx rbx, bpl
adox rbx, r8
mov r12, 0xffffffffffffffff 
mov rdx, r10
mulx rcx, r10, r12
mov rbp, -0x3 
inc rbp
adox r10, rdx
adcx rbx, [ rsp - 0x20 ]
setc r10b
clc
adcx r11, rcx
adox r11, r14
mov rbp, 0xffffffff00000001 
mulx r14, rax, rbp
adcx rdi, r8
adox rdi, r15
adox rax, r13
adox r14, rbx
movzx rdx, r10b
adox rdx, r8
mov r15, r11
sub r15, r12
mov r13, 0xffffffff 
mov rcx, rdi
sbb rcx, r13
mov r10, rax
sbb r10, r8
mov rbx, r14
sbb rbx, rbp
sbb rdx, r8
cmovc r10, rax
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], r10
cmovc rcx, rdi
mov [ rdx + 0x8 ], rcx
cmovc rbx, r14
cmovc r15, r11
mov [ rdx + 0x18 ], rbx
mov [ rdx + 0x0 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.7019
; seed 2263946801569569 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1525696 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=103, initial num_batches=31): 98901 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06482352972020639
; number reverted permutation / tried permutation: 81738 / 95244 =85.820%
; number reverted decision / tried decision: 65400 / 94755 =69.020%
; validated in 1.822s
