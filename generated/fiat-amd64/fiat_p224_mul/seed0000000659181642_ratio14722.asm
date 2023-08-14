SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
sub rsp, 152
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbp
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x10 ]
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r15
mulx r15, rdi, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r14
mov [ rsp - 0x38 ], r15
mulx r15, r14, [ rax + 0x8 ]
xor rdx, rdx
adox r10, r12
adox r9, r11
adox rcx, rbx
adox r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x30 ], r15
mulx r15, r12, [ rsi + 0x18 ]
adcx r11, r15
mov rdx, r13
mov r15, -0x2 
inc r15
adox rdx, rbp
mov rdx, [ rax + 0x10 ]
mulx r15, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], r11
mov [ rsp - 0x20 ], r12
mulx r12, r11, [ rax + 0x18 ]
adcx rbp, rbx
adox rdi, r10
mov rdx, [ rsi + 0x8 ]
mulx rbx, r10, [ rax + 0x0 ]
adcx r11, r15
mov rdx, 0x0 
adcx r12, rdx
clc
adcx r10, rdi
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx rdi, r15, r10
mov [ rsp - 0x18 ], r12
mulx r12, rdi, r13
mov rdx, 0xffffffff 
mov [ rsp - 0x10 ], r11
mov [ rsp - 0x8 ], rbp
mulx rbp, r11, r13
setc r13b
clc
adcx rdi, [ rsp - 0x38 ]
adcx r11, r12
adox rdi, r9
mov rdx, [ rsi + 0x8 ]
mulx r12, r9, [ rax + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp + 0x0 ], r14
mov [ rsp + 0x8 ], r8
mulx r8, r14, r15
adox r11, rcx
mov rcx, 0x0 
adcx rbp, rcx
clc
adcx r9, rbx
mov rdx, [ rax + 0x10 ]
mulx rcx, rbx, [ rsi + 0x8 ]
adcx rbx, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x10 ], r8
mulx r8, r12, [ rax + 0x18 ]
adcx r12, rcx
mov rdx, 0x0 
adcx r8, rdx
clc
mov rcx, -0x1 
movzx r13, r13b
adcx r13, rcx
adcx rdi, r9
adox rbp, [ rsp + 0x8 ]
adcx rbx, r11
adcx r12, rbp
mov r13, r15
setc r11b
clc
adcx r13, r10
movzx r13, r11b
adox r13, r8
mov r10, 0xffffffff00000000 
mov rdx, r10
mulx r9, r10, r15
seto r8b
inc rcx
adox r14, r9
adcx r10, rdi
mov rdx, [ rax + 0x18 ]
mulx rbp, rdi, [ rsi + 0x10 ]
mov rdx, 0xffffffff 
mulx r9, r11, r15
adcx r14, rbx
adox r11, [ rsp + 0x10 ]
adox r9, rcx
adcx r11, r12
adcx r9, r13
mov rdx, [ rsi + 0x10 ]
mulx rbx, r15, [ rax + 0x0 ]
mov rdx, -0x3 
inc rdx
adox rbx, [ rsp + 0x0 ]
mov r12, [ rsp - 0x30 ]
adox r12, [ rsp - 0x40 ]
adox rdi, [ rsp - 0x48 ]
adox rbp, rcx
movzx r13, r8b
adc r13, 0x0
xor r8, r8
adox r15, r10
adox rbx, r14
adox r12, r11
adox rdi, r9
adox rbp, r13
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx r10, rcx, r15
mov r10, 0xffffffff00000000 
mov rdx, rcx
mulx r14, rcx, r10
mov r11, rdx
adcx r11, r15
mov r11, 0xffffffffffffffff 
mulx r13, r9, r11
adcx rcx, rbx
mov r15, 0xffffffff 
mulx r8, rbx, r15
seto dl
mov r10, -0x2 
inc r10
adox r9, r14
adcx r9, r12
adox rbx, r13
adcx rbx, rdi
mov r12, 0x0 
adox r8, r12
adcx r8, rbp
movzx rdi, dl
adc rdi, 0x0
xor rdx, rdx
adox rcx, [ rsp - 0x20 ]
adox r9, [ rsp - 0x28 ]
mov rdx, rcx
mulx r12, rcx, r11
adox rbx, [ rsp - 0x8 ]
adox r8, [ rsp - 0x10 ]
adox rdi, [ rsp - 0x18 ]
mov r12, rcx
adcx r12, rdx
mov r12, 0xffffffff00000000 
mov rdx, rcx
mulx rbp, rcx, r12
adcx rcx, r9
mulx r13, r14, r11
seto r9b
inc r10
adox r14, rbp
mulx r10, rbp, r15
adcx r14, rbx
adox rbp, r13
mov rdx, 0x0 
adox r10, rdx
adcx rbp, r8
adcx r10, rdi
movzx rbx, r9b
adc rbx, 0x0
mov r8, rcx
sub r8, 0x1
mov r9, r14
sbb r9, r12
mov rdi, rbp
sbb rdi, r11
mov r13, r10
sbb r13, r15
sbb rbx, rdx
cmovc r8, rcx
cmovc r13, r10
cmovc rdi, rbp
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x18 ], r13
cmovc r9, r14
mov [ rbx + 0x10 ], rdi
mov [ rbx + 0x8 ], r9
mov [ rbx + 0x0 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 152
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4722
; seed 2441002564521620 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2119729 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=77, initial num_batches=31): 133703 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06307551578527255
; number reverted permutation / tried permutation: 72000 / 95017 =75.776%
; number reverted decision / tried decision: 62882 / 94982 =66.204%
; validated in 6.124s
