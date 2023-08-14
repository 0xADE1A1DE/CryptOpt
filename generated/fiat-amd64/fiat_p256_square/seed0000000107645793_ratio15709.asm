SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r11
mov [ rsp - 0x60 ], r14
mov r14, 0xffffffff 
mov rdx, r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r11
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, r11
test al, al
adox r12, r11
adcx r14, r13
mov r12, 0x0 
adcx r15, r12
clc
adcx rax, rcx
adcx r8, r10
adox r14, rax
adox r15, r8
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rsi + 0x18 ]
adcx r10, r9
adox rdi, r10
adcx r11, r12
adox rbp, r11
mov rdx, [ rsi + 0x8 ]
mulx r9, rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx rax, r13, [ rsi + 0x0 ]
clc
adcx rcx, rax
mov rdx, [ rsi + 0x18 ]
mulx r10, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rax, r11, [ rsi + 0x8 ]
seto dl
mov [ rsp - 0x40 ], rbx
mov rbx, -0x3 
inc rbx
adox r13, r14
adox rcx, r15
adcx r11, r9
adox r11, rdi
adcx r8, rax
adox r8, rbp
adcx r10, r12
movzx r14, dl
adox r14, r10
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx rdi, r15, r13
mov rbp, 0xffffffff 
mov rdx, r13
mulx r9, r13, rbp
clc
adcx r15, rdx
seto r15b
mov rax, -0x3 
inc rax
adox r13, rdi
adcx r13, rcx
adox r9, r12
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r10, rcx, [ rsi + 0x8 ]
adcx r9, r11
mov rdx, [ rsi + 0x10 ]
mulx rdi, r11, rdx
mov rdx, 0xffffffff00000001 
mulx rbx, r12, rax
adcx r12, r8
mov rdx, [ rsi + 0x0 ]
mulx r8, rax, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox rcx, r8
adox r11, r10
adcx rbx, r14
setc r14b
clc
adcx rax, r13
mov r13, 0xffffffff00000001 
mov rdx, r13
mulx r10, r13, rax
movzx r8, r14b
movzx r15, r15b
lea r8, [ r8 + r15 ]
mov rdx, [ rsi + 0x10 ]
mulx r14, r15, [ rsi + 0x18 ]
adox r15, rdi
adcx rcx, r9
adcx r11, r12
mov rdx, rax
mulx r9, rax, rbp
adcx r15, rbx
mov rdi, 0x0 
adox r14, rdi
mov r12, 0xffffffffffffffff 
mulx rdi, rbx, r12
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r10
mulx r10, r12, [ rsi + 0x8 ]
adcx r14, r8
mov rdx, -0x2 
inc rdx
adox rax, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, r8, [ rsi + 0x0 ]
setc dl
clc
adcx rbx, rbp
adcx rax, rcx
mov rbx, 0x0 
adox r9, rbx
adcx r9, r11
mov rbp, -0x3 
inc rbp
adox r8, rax
mov rcx, 0xffffffffffffffff 
xchg rdx, r8
mulx rax, r11, rcx
mov rbx, 0xffffffff 
mulx rcx, rbp, rbx
adcx r13, r15
adcx r14, [ rsp - 0x38 ]
movzx r15, r8b
mov rbx, 0x0 
adcx r15, rbx
clc
adcx r12, rdi
adcx r10, [ rsp - 0x40 ]
adox r12, r9
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, rdi, rdx
adcx rdi, [ rsp - 0x48 ]
adcx r9, rbx
clc
adcx rbp, rax
adcx rcx, rbx
adox r10, r13
clc
adcx r11, r8
mov r11, 0xffffffff00000001 
mov rdx, r8
mulx rax, r8, r11
adox rdi, r14
adcx rbp, r12
adcx rcx, r10
adcx r8, rdi
adox r9, r15
adcx rax, r9
seto dl
adc dl, 0x0
movzx rdx, dl
mov r13, 0xffffffffffffffff 
mov r14, rbp
sub r14, r13
mov r15, 0xffffffff 
mov r12, rcx
sbb r12, r15
mov r10, r8
sbb r10, rbx
mov rdi, rax
sbb rdi, r11
movzx rdx, dl
sbb rdx, rbx
cmovc r14, rbp
cmovc r10, r8
cmovc r12, rcx
cmovc rdi, rax
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], r10
mov [ rdx + 0x0 ], r14
mov [ rdx + 0x8 ], r12
mov [ rdx + 0x18 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.5709
; seed 0023687439012088 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1838242 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=85, initial num_batches=31): 127604 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06941632276925454
; number reverted permutation / tried permutation: 81516 / 94987 =85.818%
; number reverted decision / tried decision: 58546 / 95012 =61.620%
; validated in 1.986s
