SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r11
mov rbp, 0xffffffff00000000 
mov rdx, rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rbx
mov [ rsp - 0x68 ], r13
mov r13, 0xffffffff 
mov rdx, r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbx
mov [ rsp - 0x58 ], r15
mov r15, 0xffffffffffffffff 
mov rdx, r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rbx
xor rdx, rdx
adox rbx, r11
mov rdx, [ rsi + 0x8 ]
mulx r11, rbx, [ rsi + 0x0 ]
adcx rbx, rcx
adox rbp, rbx
adcx rax, r11
adcx r8, r10
mov rdx, [ rsi + 0x18 ]
mulx rcx, r10, [ rsi + 0x10 ]
mov rdx, 0x0 
adcx r9, rdx
clc
adcx r15, r12
adcx r13, rdi
adox r15, rax
adcx r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r12, [ rsi + 0x0 ]
adox r13, r8
mov rdx, [ rsi + 0x8 ]
mulx rbx, r11, rdx
adox r14, r9
clc
adcx r11, rdi
mov rdx, [ rsi + 0x8 ]
mulx r8, rax, [ rsi + 0x10 ]
adcx rax, rbx
seto dl
mov r9, -0x2 
inc r9
adox r12, rbp
mov bpl, dl
mov rdx, [ rsi + 0x8 ]
mulx rbx, rdi, [ rsi + 0x18 ]
adcx rdi, r8
adox r11, r15
adox rax, r13
adox rdi, r14
mov rdx, [ rsi + 0x18 ]
mulx r13, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, r14, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx rbx, rdx
movzx rdx, bpl
adox rdx, rbx
clc
adcx r15, r8
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r8, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x48 ], r15
mulx r15, r9, r12
mov [ rsp - 0x40 ], r14
mulx r14, r15, r9
adcx r8, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r8
mulx r8, r13, rdx
adcx r13, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], r13
mulx r13, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], rbx
mulx rbx, rcx, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], r8
mov [ rsp - 0x10 ], rbp
mulx rbp, r8, rdx
clc
adcx rcx, r13
adcx r8, rbx
adcx r10, rbp
mov rdx, r9
setc r13b
clc
adcx rdx, r12
mov rdx, 0xffffffff00000000 
mulx rbx, r12, r9
adcx r12, r11
seto r11b
mov rbp, -0x2 
inc rbp
adox r15, rbx
adcx r15, rax
mov rax, 0xffffffff 
mov rdx, r9
mulx rbx, r9, rax
adox r9, r14
adcx r9, rdi
mov rdi, 0x0 
adox rbx, rdi
adcx rbx, [ rsp - 0x10 ]
mov rdx, -0x3 
inc rdx
adox r12, [ rsp - 0x20 ]
adox rcx, r15
mov r14, 0xffffffffffffffff 
mov rdx, r12
mulx r15, r12, r14
movzx r15, r11b
adcx r15, rdi
mov r11, r12
clc
adcx r11, rdx
mov r11, 0xffffffff00000000 
mov rdx, r11
mulx rdi, r11, r12
adcx r11, rcx
adox r8, r9
adox r10, rbx
movzx r9, r13b
mov rbx, [ rsp - 0x28 ]
lea r9, [ r9 + rbx ]
adox r9, r15
mov rdx, r12
mulx rbx, r12, r14
setc r13b
clc
adcx r12, rdi
seto cl
inc rbp
adox r11, [ rsp - 0x40 ]
seto r15b
dec rbp
movzx r13, r13b
adox r13, rbp
adox r8, r12
mulx r13, rdi, rax
adcx rdi, rbx
adox rdi, r10
mov rdx, 0x0 
adcx r13, rdx
adox r13, r9
movzx r10, cl
adox r10, rdx
mov rdx, r11
mulx rcx, r11, r14
mov rcx, 0xffffffff00000000 
xchg rdx, rcx
mulx rbx, r9, r11
mov rdx, rax
mulx r12, rax, r11
add r15b, 0x7F
adox r8, [ rsp - 0x48 ]
adox rdi, [ rsp - 0x38 ]
mov rdx, r11
mulx r15, r11, r14
adcx r11, rbx
adox r13, [ rsp - 0x30 ]
adcx rax, r15
adox r10, [ rsp - 0x18 ]
seto bl
inc rbp
adox rdx, rcx
adox r9, r8
adox r11, rdi
adox rax, r13
adcx r12, rbp
adox r12, r10
movzx rdx, bl
adox rdx, rbp
mov rcx, r9
sub rcx, 0x1
mov r8, 0xffffffff00000000 
mov rdi, r11
sbb rdi, r8
mov r15, rax
sbb r15, r14
mov r13, 0xffffffff 
mov rbx, r12
sbb rbx, r13
sbb rdx, rbp
cmovc r15, rax
cmovc rbx, r12
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], rbx
cmovc rcx, r9
mov [ rdx + 0x0 ], rcx
cmovc rdi, r11
mov [ rdx + 0x8 ], rdi
mov [ rdx + 0x10 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.3921
; seed 0697127456465292 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1357770 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=110, initial num_batches=31): 90203 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06643466861103133
; number reverted permutation / tried permutation: 82482 / 94871 =86.941%
; number reverted decision / tried decision: 67751 / 95128 =71.221%
; validated in 2.823s
