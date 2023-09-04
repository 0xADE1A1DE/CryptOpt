SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r9
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbp
test al, al
adox rcx, rbx
adox r10, r8
mov rdx, [ rax + 0x8 ]
mulx rbx, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, [ rax + 0x0 ]
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x40 ], r12
mov [ rsp - 0x38 ], rbx
mulx rbx, r12, rbp
mov rdx, 0xffffffff 
mov [ rsp - 0x30 ], r8
mov [ rsp - 0x28 ], rdi
mulx rdi, r8, rbp
adcx r14, rbx
adcx r8, r15
mov r15, 0x0 
adcx rdi, r15
clc
adcx rbp, r9
adcx r12, rcx
mov rdx, [ rax + 0x18 ]
mulx r9, rbp, [ rsi + 0x0 ]
adox rbp, r11
adox r9, r15
adcx r14, r10
adcx r8, rbp
adcx rdi, r9
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mulx rbx, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, rbp, [ rax + 0x18 ]
mov rdx, -0x3 
inc rdx
adox r11, r13
adox r10, rcx
adox rbp, rbx
adox r9, r15
mov r13, -0x3 
inc r13
adox r12, [ rsp - 0x28 ]
adox r11, r14
adox r10, r8
mov r13, 0xffffffffffffffff 
mov rdx, r12
mulx r14, r12, r13
mov r14, r12
setc r8b
clc
adcx r14, rdx
mov r14, 0xffffffff 
mov rdx, r14
mulx rcx, r14, r12
adox rbp, rdi
mov rdi, 0xffffffff00000000 
mov rdx, rdi
mulx rbx, rdi, r12
adcx rdi, r11
movzx r11, r8b
adox r11, r9
mov rdx, r13
mulx r8, r13, r12
seto r9b
mov r12, -0x3 
inc r12
adox r13, rbx
adox r14, r8
adox rcx, r15
mov rdx, [ rax + 0x0 ]
mulx r8, rbx, [ rsi + 0x10 ]
adcx r13, r10
mov rdx, -0x3 
inc rdx
adox rbx, rdi
mov rdx, 0xffffffffffffffff 
mulx rdi, r10, rbx
adcx r14, rbp
adcx rcx, r11
mulx rbp, rdi, r10
movzx r11, r9b
adcx r11, r15
mov rdx, [ rax + 0x18 ]
mulx r15, r9, [ rsi + 0x10 ]
clc
adcx r8, [ rsp - 0x30 ]
adox r8, r13
mov rdx, [ rsi + 0x10 ]
mulx r12, r13, [ rax + 0x10 ]
adcx r13, [ rsp - 0x38 ]
adox r13, r14
adcx r9, r12
adox r9, rcx
mov rdx, 0x0 
adcx r15, rdx
adox r15, r11
mov r14, 0xffffffff00000000 
mov rdx, r10
mulx rcx, r10, r14
clc
adcx rdi, rcx
mov r11, rdx
seto r12b
mov rcx, -0x2 
inc rcx
adox r11, rbx
mov r11, 0xffffffff 
mulx rcx, rbx, r11
adcx rbx, rbp
adox r10, r8
mov rdx, 0x0 
adcx rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rbp, [ rax + 0x0 ]
clc
adcx rbp, r10
mov rdx, 0xffffffffffffffff 
mulx r14, r10, rbp
mov rdx, [ rsi + 0x18 ]
mulx r11, r14, [ rax + 0x10 ]
mov rdx, r10
mov [ rsp - 0x20 ], r11
setc r11b
clc
adcx rdx, rbp
adox rdi, r13
adox rbx, r9
adox rcx, r15
movzx rdx, r12b
mov r13, 0x0 
adox rdx, r13
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r15, r12, [ rax + 0x8 ]
mov rdx, -0x3 
inc rdx
adox r12, r8
adox r14, r15
mov r8, [ rsp - 0x40 ]
adox r8, [ rsp - 0x20 ]
mov rbp, [ rsp - 0x48 ]
adox rbp, r13
mov r15, 0xffffffff00000000 
mov rdx, r15
mulx r13, r15, r10
mov rdx, 0x0 
dec rdx
movzx r11, r11b
adox r11, rdx
adox rdi, r12
adox r14, rbx
adox r8, rcx
adox rbp, r9
mov r11, 0xffffffff 
mov rdx, r10
mulx rbx, r10, r11
adcx r15, rdi
mov rcx, 0xffffffffffffffff 
mulx r12, r9, rcx
seto dl
mov rdi, -0x2 
inc rdi
adox r9, r13
adox r10, r12
adcx r9, r14
mov r13, 0x0 
adox rbx, r13
adcx r10, r8
adcx rbx, rbp
movzx r14, dl
adc r14, 0x0
mov r8, r15
sub r8, 0x1
mov rdx, 0xffffffff00000000 
mov rbp, r9
sbb rbp, rdx
mov r12, r10
sbb r12, rcx
mov r13, rbx
sbb r13, r11
mov rdi, 0x0 
sbb r14, rdi
cmovc rbp, r9
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x8 ], rbp
cmovc r8, r15
mov [ r14 + 0x0 ], r8
cmovc r13, rbx
cmovc r12, r10
mov [ r14 + 0x10 ], r12
mov [ r14 + 0x18 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.6044
; seed 2459864947943481 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 967029 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=109, initial num_batches=31): 68690 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07103199593807424
; number reverted permutation / tried permutation: 70243 / 94957 =73.973%
; number reverted decision / tried decision: 63374 / 95042 =66.680%
; validated in 1.911s
