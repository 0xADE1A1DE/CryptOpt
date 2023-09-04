SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbp
mov [ rsp - 0x58 ], r15
mulx r15, r14, r13
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, r13
mov rdx, r13
test al, al
adox rdx, rbp
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x40 ], r9
mulx r9, rbp, [ rsi + 0x0 ]
adcx rbp, r12
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r11
mulx r11, r12, [ rsi + 0x18 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x30 ], r12
mov [ rsp - 0x28 ], r11
mulx r11, r12, r13
adcx rcx, r9
seto r13b
mov r9, -0x2 
inc r9
adox r14, rbx
adox r12, r15
adcx r10, r8
mov r8, 0x0 
adox r11, r8
inc r9
mov r8, -0x1 
movzx r13, r13b
adox r13, r8
adox rbp, rdi
mov rdx, [ rsi + 0x8 ]
mulx rdi, r15, [ rax + 0x8 ]
adox r14, rcx
mov rdx, [ rsp - 0x38 ]
adcx rdx, r9
mov rbx, rdx
mov rdx, [ rax + 0x0 ]
mulx rcx, r13, [ rsi + 0x8 ]
clc
adcx r15, rcx
adcx rdi, [ rsp - 0x40 ]
mov rdx, [ rax + 0x18 ]
mulx r9, rcx, [ rsi + 0x8 ]
adcx rcx, [ rsp - 0x48 ]
mov rdx, 0x0 
adcx r9, rdx
clc
adcx r13, rbp
adcx r15, r14
adox r12, r10
mov r10, 0xffffffffffffffff 
mov rdx, r10
mulx rbp, r10, r13
adcx rdi, r12
mulx r14, rbp, r10
adox r11, rbx
mov rbx, r10
seto r12b
inc r8
adox rbx, r13
mov rbx, 0xffffffff00000000 
mov rdx, rbx
mulx r13, rbx, r10
adox rbx, r15
adcx rcx, r11
movzx r15, r12b
adcx r15, r9
mov r9, 0xffffffff 
mov rdx, r10
mulx r12, r10, r9
setc dl
clc
adcx rbp, r13
mov r11b, dl
mov rdx, [ rax + 0x10 ]
mulx r8, r13, [ rsi + 0x18 ]
adox rbp, rdi
adcx r10, r14
adox r10, rcx
mov rdx, 0x0 
adcx r12, rdx
adox r12, r15
movzx rdi, r11b
adox rdi, rdx
mov rdx, [ rax + 0x8 ]
mulx rcx, r14, [ rsi + 0x18 ]
add r14, [ rsp - 0x28 ]
adcx r13, rcx
mov rdx, [ rsi + 0x18 ]
mulx r15, r11, [ rax + 0x18 ]
adcx r11, r8
mov rdx, [ rsi + 0x10 ]
mulx rcx, r8, [ rax + 0x0 ]
adc r15, 0x0
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x20 ], r15
mulx r15, r9, [ rsi + 0x10 ]
add r8, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], r11
mulx r11, rbx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x10 ], r13
mov [ rsp - 0x8 ], r14
mulx r14, r13, [ rax + 0x10 ]
mov rdx, -0x2 
inc rdx
adox rbx, rcx
adox r13, r11
adcx rbx, rbp
adox r9, r14
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx rcx, rbp, r8
adcx r13, r10
adcx r9, r12
mov rcx, rbp
seto r10b
mov r12, -0x2 
inc r12
adox rcx, r8
movzx rcx, r10b
lea rcx, [ rcx + r15 ]
adcx rcx, rdi
mov rdi, 0xffffffff00000000 
mov rdx, rbp
mulx r15, rbp, rdi
mov r8, 0xffffffffffffffff 
mulx r14, r11, r8
setc r10b
clc
adcx r11, r15
mov r15, 0xffffffff 
mulx rdi, r12, r15
adcx r12, r14
adox rbp, rbx
adox r11, r13
mov rbx, 0x0 
adcx rdi, rbx
clc
adcx rbp, [ rsp - 0x30 ]
mov rdx, r8
mulx r13, r8, rbp
mulx r14, r13, r8
adox r12, r9
adox rdi, rcx
movzx r9, r10b
adox r9, rbx
mov r10, 0xffffffff00000000 
mov rdx, r8
mulx rcx, r8, r10
mov r15, -0x3 
inc r15
adox r13, rcx
mov rcx, 0xffffffff 
mulx r15, rbx, rcx
adox rbx, r14
mov r14, 0x0 
adox r15, r14
adcx r11, [ rsp - 0x8 ]
mov rcx, -0x3 
inc rcx
adox rdx, rbp
adox r8, r11
adcx r12, [ rsp - 0x10 ]
adox r13, r12
adcx rdi, [ rsp - 0x18 ]
adcx r9, [ rsp - 0x20 ]
adox rbx, rdi
adox r15, r9
seto dl
adc dl, 0x0
movzx rdx, dl
mov rbp, r8
sub rbp, 0x1
mov r11, r13
sbb r11, r10
mov r12, 0xffffffffffffffff 
mov rdi, rbx
sbb rdi, r12
mov r9, 0xffffffff 
mov r14, r15
sbb r14, r9
movzx rdx, dl
mov rcx, 0x0 
sbb rdx, rcx
cmovc r14, r15
cmovc r11, r13
cmovc rdi, rbx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], rdi
cmovc rbp, r8
mov [ rdx + 0x0 ], rbp
mov [ rdx + 0x8 ], r11
mov [ rdx + 0x18 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.5768
; seed 2291907760047540 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1096754 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=107, initial num_batches=31): 78234 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0713323133537694
; number reverted permutation / tried permutation: 73010 / 95268 =76.636%
; number reverted decision / tried decision: 64938 / 94731 =68.550%
; validated in 2.117s
