SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, r12
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x40 ], rcx
mov [ rsp - 0x38 ], r11
mulx r11, rcx, r12
xor rdx, rdx
adox r14, r13
adcx rdi, r11
adox rax, r15
mov rdx, [ rsi + 0x18 ]
mulx r15, r13, [ rsi + 0x0 ]
adox r13, r10
mov rdx, 0xffffffff00000001 
mulx r11, r10, r12
setc dl
clc
adcx rcx, r12
adcx rdi, r14
movzx rcx, dl
lea rcx, [ rcx + rbx ]
adcx rcx, rax
mov r12, 0x0 
adox r15, r12
mov rbx, -0x3 
inc rbx
adox r8, rbp
adcx r10, r13
adox r9, [ rsp - 0x38 ]
adcx r11, r15
mov rdx, [ rsi + 0x8 ]
mulx r14, rbp, [ rsi + 0x18 ]
adox rbp, [ rsp - 0x40 ]
adox r14, r12
mov rdx, -0x3 
inc rdx
adox rdi, [ rsp - 0x48 ]
adox r8, rcx
adox r9, r10
adox rbp, r11
mov rdx, 0xffffffff 
mulx r13, rax, rdi
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx r15, rcx, rdi
setc r10b
clc
adcx rax, r15
adcx r13, r12
clc
adcx rcx, rdi
adcx rax, r8
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ rsi + 0x0 ]
mov rdx, 0xffffffff00000001 
mulx r15, r8, rdi
adcx r13, r9
adcx r8, rbp
mov rdx, [ rsi + 0x10 ]
mulx r9, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r12, rbp, rdx
movzx rdx, r10b
adox rdx, r14
adcx r15, rdx
seto r10b
inc rbx
adox rdi, r11
adox rbp, r9
movzx r14, r10b
mov r11, 0x0 
adcx r14, r11
mov rdx, [ rsi + 0x10 ]
mulx r10, r9, [ rsi + 0x18 ]
adox r9, r12
clc
adcx rcx, rax
adox r10, r11
adcx rdi, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, rax, [ rsi + 0x18 ]
adcx rbp, r8
mov rdx, [ rsi + 0x18 ]
mulx r12, r8, [ rsi + 0x0 ]
adcx r9, r15
mov rdx, [ rsi + 0x18 ]
mulx r11, r15, rdx
adcx r10, r14
inc rbx
adox rax, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, r14, [ rsi + 0x10 ]
adox r14, r13
adox r15, r12
mov rdx, 0xffffffffffffffff 
mulx r12, r13, rcx
adox r11, rbx
mov rbx, 0xffffffff 
mov rdx, rbx
mov [ rsp - 0x30 ], r11
mulx r11, rbx, rcx
mov rdx, -0x2 
inc rdx
adox r13, rcx
setc r13b
clc
adcx rbx, r12
adox rbx, rdi
mov rdi, 0xffffffff00000001 
mov rdx, rdi
mulx r12, rdi, rcx
mov rcx, 0x0 
adcx r11, rcx
adox r11, rbp
adox rdi, r9
adox r12, r10
clc
adcx r8, rbx
adcx rax, r11
adcx r14, rdi
movzx rbp, r13b
adox rbp, rcx
adcx r15, r12
adcx rbp, [ rsp - 0x30 ]
mov r9, 0xffffffffffffffff 
mov rdx, r8
mulx r13, r8, r9
mov r10, 0xffffffff 
mulx r11, rbx, r10
mov rdi, -0x3 
inc rdi
adox r8, rdx
setc r8b
clc
adcx rbx, r13
adox rbx, rax
adcx r11, rcx
adox r11, r14
mov r12, 0xffffffff00000001 
mulx r14, rax, r12
adox rax, r15
adox r14, rbp
movzx rdx, r8b
adox rdx, rcx
mov r15, rbx
sub r15, r9
mov r8, r11
sbb r8, r10
mov rbp, rax
sbb rbp, rcx
mov r13, r14
sbb r13, r12
sbb rdx, rcx
cmovc rbp, rax
cmovc r13, r14
cmovc r15, rbx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], r15
mov [ rdx + 0x18 ], r13
cmovc r8, r11
mov [ rdx + 0x10 ], rbp
mov [ rdx + 0x8 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.5388
; seed 4206889998805968 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1284066 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=81, initial num_batches=31): 92738 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07222214434460535
; number reverted permutation / tried permutation: 75276 / 94948 =79.281%
; number reverted decision / tried decision: 59393 / 95051 =62.485%
; validated in 2.209s
