SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], rdi
mulx rdi, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], rdi
mulx rdi, rbx, [ rsi + 0x8 ]
test al, al
adox rbx, r9
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x28 ], r15
mulx r15, r9, r14
adcx rax, rbp
adcx r11, r10
adcx r12, rcx
mov r10, 0xffffffffffffffff 
mov rdx, r14
mulx rcx, r14, r10
setc bpl
clc
adcx r14, r15
mov r15, 0xffffffff 
mov [ rsp - 0x20 ], r12
mulx r12, r10, r15
mov r15, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], rax
mulx rax, r11, [ rsi + 0x10 ]
movzx rdx, bpl
lea rdx, [ rdx + r13 ]
adcx r10, rcx
mov r13, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, rbp, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx r12, rdx
adox r11, rdi
adox rbp, rax
clc
adcx r15, r8
adcx r9, rbx
adox rcx, rdx
adcx r14, r11
mov rdx, [ rsi + 0x0 ]
mulx r8, r15, [ rsi + 0x8 ]
adcx r10, rbp
mov rdx, -0x2 
inc rdx
adox r15, r9
mov rdi, 0xffffffffffffffff 
mov rdx, r15
mulx rbx, r15, rdi
adcx r12, rcx
setc bl
clc
adcx r8, [ rsp - 0x28 ]
adox r8, r14
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r9, [ rsi + 0x10 ]
adcx r9, [ rsp - 0x40 ]
adcx r11, rcx
adox r9, r10
mov rdx, r15
setc r14b
clc
adcx rdx, rax
mov rdx, 0xffffffff00000000 
mulx rax, r10, r15
movzx rcx, r14b
lea rcx, [ rcx + rbp ]
adcx r10, r8
adox r11, r12
mov rdx, r15
mulx r12, r15, rdi
movzx r8, bl
adox r8, rcx
seto bl
mov rbp, -0x2 
inc rbp
adox r15, rax
mov r14, 0xffffffff 
mulx rcx, rax, r14
adox rax, r12
mov rdx, 0x0 
adox rcx, rdx
adcx r15, r9
adcx rax, r11
adcx rcx, r8
movzx r9, bl
adc r9, 0x0
add r10, [ rsp - 0x48 ]
adcx r15, [ rsp - 0x10 ]
adcx rax, [ rsp - 0x18 ]
mov rdx, r10
mulx r11, r10, rdi
mov r11, r10
inc rbp
adox r11, rdx
mov r11, 0xffffffff00000000 
mov rdx, r11
mulx r12, r11, r10
adox r11, r15
adcx rcx, [ rsp - 0x20 ]
mov rdx, r10
mulx rbx, r10, rdi
adcx r13, r9
mulx r9, r8, r14
setc r15b
clc
adcx r10, r12
adox r10, rax
adcx r8, rbx
adox r8, rcx
adcx r9, rbp
adox r9, r13
mov rdx, [ rsi + 0x8 ]
mulx r12, rax, [ rsi + 0x18 ]
clc
adcx rax, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x18 ]
mulx rbx, rcx, [ rsi + 0x10 ]
adcx rcx, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, r13, rdx
adcx r13, rbx
adcx r12, rbp
movzx rdx, r15b
adox rdx, rbp
xor r15, r15
adox r11, [ rsp - 0x38 ]
xchg rdx, rdi
mulx rbx, rbp, r11
adox rax, r10
adox rcx, r8
adox r13, r9
adox r12, rdi
mulx r10, rbx, rbp
mov r8, rbp
adcx r8, r11
mov r8, 0xffffffff00000000 
mov rdx, r8
mulx r9, r8, rbp
mov rdx, rbp
mulx rdi, rbp, r14
seto r11b
mov rdx, -0x3 
inc rdx
adox rbx, r9
adox rbp, r10
adcx r8, rax
adcx rbx, rcx
adox rdi, r15
adcx rbp, r13
adcx rdi, r12
setc al
mov rcx, r8
sub rcx, 0x1
mov r13, 0xffffffff00000000 
mov r12, rbx
sbb r12, r13
movzx r10, al
movzx r11, r11b
lea r10, [ r10 + r11 ]
mov r11, 0xffffffffffffffff 
mov r9, rbp
sbb r9, r11
mov rax, rdi
sbb rax, r14
sbb r10, r15
cmovc rcx, r8
cmovc r9, rbp
cmovc r12, rbx
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x10 ], r9
mov [ r10 + 0x8 ], r12
cmovc rax, rdi
mov [ r10 + 0x18 ], rax
mov [ r10 + 0x0 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.4345
; seed 3178661550432859 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1300170 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=110, initial num_batches=31): 85623 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06585523431551259
; number reverted permutation / tried permutation: 81420 / 94693 =85.983%
; number reverted decision / tried decision: 66960 / 95306 =70.258%
; validated in 2.835s
