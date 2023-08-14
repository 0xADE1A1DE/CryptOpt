SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mulx r9, r8, rax
mov r9, r8
test al, al
adox r9, rax
mulx rax, r9, r8
mov [ rsp - 0x80 ], rbx
mov rbx, 0xffffffff00000000 
mov rdx, rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r8
mov [ rsp - 0x70 ], r12
mov r12, 0xffffffff 
mov rdx, r8
mov [ rsp - 0x68 ], r13
mulx r13, r8, r12
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x8 ]
adcx r14, r10
adox rbx, r14
mov rdx, [ rsi + 0x10 ]
mulx r14, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r12, [ rsi + 0x10 ]
adcx r12, r15
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r14
mulx r14, r15, [ rsi + 0x18 ]
adcx r15, rdi
mov rdx, 0x0 
adcx r14, rdx
clc
adcx r9, rbp
adox r9, r12
adcx r8, rax
adcx r13, rdx
adox r8, r15
mov rdx, [ rsi + 0x10 ]
mulx rbp, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r12, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r10
mulx r10, r15, rdx
clc
adcx rax, r12
adcx r15, rbp
mov rdx, [ rsi + 0x10 ]
mulx r12, rbp, [ rsi + 0x18 ]
adcx rbp, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], rbp
mulx rbp, r10, rdx
mov rdx, 0x0 
adcx r12, rdx
clc
adcx r10, rcx
adox r13, r14
seto cl
mov r14, -0x3 
inc r14
adox r11, rbx
mov rbx, 0xffffffffffffffff 
mov rdx, r11
mulx r14, r11, rbx
mov r14, 0xffffffff00000000 
xchg rdx, r14
mov [ rsp - 0x30 ], r12
mulx r12, rbx, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x28 ], r15
mov [ rsp - 0x20 ], rax
mulx rax, r15, [ rsi + 0x10 ]
adcx r15, rbp
mov rdx, [ rsi + 0x18 ]
mov byte [ rsp - 0x18 ], cl
mulx rcx, rbp, [ rsi + 0x8 ]
adcx rbp, rax
mov rdx, 0x0 
adcx rcx, rdx
adox r10, r9
mov r9, r11
clc
adcx r9, r14
adox r15, r8
adox rbp, r13
adcx rbx, r10
mov r9, 0xffffffffffffffff 
mov rdx, r11
mulx r8, r11, r9
setc r13b
clc
adcx rdi, rbx
setc r14b
clc
adcx r11, r12
mov r12, 0xffffffff 
mulx r10, rax, r12
adcx rax, r8
mov rdx, 0x0 
adcx r10, rdx
clc
mov rbx, -0x1 
movzx r13, r13b
adcx r13, rbx
adcx r15, r11
movzx r13, byte [ rsp - 0x18 ]
adox r13, rcx
adcx rax, rbp
adcx r10, r13
mov rdx, rdi
mulx rcx, rdi, r9
xchg rdx, rdi
mulx rbp, rcx, r9
mov r8, 0xffffffff00000000 
mulx r13, r11, r8
seto bl
adc bl, 0x0
movzx rbx, bl
mulx r9, r8, r12
add r14b, 0xFF
adcx r15, [ rsp - 0x20 ]
adcx rax, [ rsp - 0x28 ]
adcx r10, [ rsp - 0x38 ]
adox rdx, rdi
movzx rbx, bl
movzx rdx, bl
adcx rdx, [ rsp - 0x30 ]
adox r11, r15
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, r15, [ rsi + 0x18 ]
setc dl
clc
adcx rcx, r13
adcx r8, rbp
adox rcx, rax
mov rbp, 0x0 
adcx r9, rbp
adox r8, r10
clc
adcx r15, rbx
adcx r12, [ rsp - 0x40 ]
adox r9, rdi
mov r13b, dl
mov rdx, [ rsi + 0x18 ]
mulx r10, rax, rdx
adcx rax, [ rsp - 0x48 ]
adcx r10, rbp
clc
adcx r14, r11
mov rdx, 0xffffffffffffffff 
mulx r11, rdi, r14
mov r11, 0xffffffff 
mov rdx, rdi
mulx rbx, rdi, r11
adcx r15, rcx
adcx r12, r8
adcx rax, r9
mov rcx, rdx
setc r8b
clc
adcx rcx, r14
movzx rcx, r13b
adox rcx, rbp
mov r13, 0xffffffff00000000 
mulx r14, r9, r13
dec rbp
movzx r8, r8b
adox r8, rbp
adox rcx, r10
adcx r9, r15
mov r10, 0xffffffffffffffff 
mulx r8, r15, r10
seto dl
inc rbp
adox r15, r14
adcx r15, r12
adox rdi, r8
adcx rdi, rax
adox rbx, rbp
adcx rbx, rcx
movzx r12, dl
adc r12, 0x0
mov rax, r9
sub rax, 0x1
mov r14, r15
sbb r14, r13
mov rcx, rdi
sbb rcx, r10
mov rdx, rbx
sbb rdx, r11
sbb r12, rbp
cmovc rax, r9
cmovc rdx, rbx
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x18 ], rdx
cmovc rcx, rdi
cmovc r14, r15
mov [ r12 + 0x8 ], r14
mov [ r12 + 0x10 ], rcx
mov [ r12 + 0x0 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.4350
; seed 0438829999152098 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1660853 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=109, initial num_batches=31): 104979 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06320788173306126
; number reverted permutation / tried permutation: 82276 / 94888 =86.709%
; number reverted decision / tried decision: 68830 / 95111 =72.368%
; validated in 3.507s
