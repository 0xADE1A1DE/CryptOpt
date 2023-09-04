SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r12
mulx r12, rdi, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], r9
mulx r9, rbp, [ rax + 0x10 ]
add rdi, r14
adcx rbp, r12
adcx rcx, r9
adc r8, 0x0
mov rdx, [ rsi + 0x8 ]
mulx r12, r14, [ rax + 0x8 ]
add r14, rbx
adcx r10, r12
mov rdx, 0xffffffff00000000 
mulx r9, rbx, r15
mov r12, r15
mov rdx, -0x2 
inc rdx
adox r12, r13
adox rbx, rdi
mov rdx, [ rsi + 0x8 ]
mulx r13, r12, [ rax + 0x18 ]
adcx r12, r11
mov rdx, 0xffffffffffffffff 
mulx rdi, r11, r15
mov rdx, 0x0 
adcx r13, rdx
clc
adcx r11, r9
adox r11, rbp
mov rbp, 0xffffffff 
mov rdx, r15
mulx r9, r15, rbp
adcx r15, rdi
mov rdx, 0x0 
adcx r9, rdx
adox r15, rcx
clc
adcx rbx, [ rsp - 0x38 ]
adcx r14, r11
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx rdi, rcx, rbx
mov rdx, rcx
mulx rcx, rdi, rbp
adox r9, r8
adcx r10, r15
adcx r12, r9
seto r8b
movzx r8, r8b
adcx r8, r13
mov r13, 0xffffffff00000000 
mulx r15, r11, r13
mov r9, 0xffffffffffffffff 
mulx r13, rbp, r9
mov r9, -0x2 
inc r9
adox rbp, r15
setc r15b
clc
adcx rdx, rbx
adcx r11, r14
adox rdi, r13
mov rdx, 0x0 
adox rcx, rdx
adcx rbp, r10
adcx rdi, r12
adcx rcx, r8
mov rdx, [ rsi + 0x10 ]
mulx r14, rbx, [ rax + 0x0 ]
inc r9
adox rbx, r11
mov rdx, 0xffffffffffffffff 
mulx r12, r10, rbx
mov rdx, [ rax + 0x18 ]
mulx r8, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mulx r11, r13, [ rsi + 0x10 ]
setc dl
clc
adcx r14, [ rsp - 0x40 ]
adcx r13, [ rsp - 0x48 ]
adcx r12, r11
adox r14, rbp
adcx r8, r9
movzx rbp, dl
movzx r15, r15b
lea rbp, [ rbp + r15 ]
mov r15, r10
clc
adcx r15, rbx
mov r15, 0xffffffff 
mov rdx, r10
mulx rbx, r10, r15
adox r13, rdi
adox r12, rcx
mov rdi, 0xffffffffffffffff 
mulx r11, rcx, rdi
mov r9, 0xffffffff00000000 
mulx rdi, r15, r9
adox r8, rbp
seto dl
mov rbp, -0x2 
inc rbp
adox rcx, rdi
adox r10, r11
mov r11, 0x0 
adox rbx, r11
adcx r15, r14
adcx rcx, r13
adcx r10, r12
mov r14b, dl
mov rdx, [ rsi + 0x18 ]
mulx r12, r13, [ rax + 0x0 ]
adcx rbx, r8
mov rdx, [ rax + 0x10 ]
mulx r8, rdi, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mulx rbp, r11, [ rsi + 0x18 ]
movzx rdx, r14b
adc rdx, 0x0
xor r14, r14
adox r13, r15
adcx r11, r12
mov r15, rdx
mov rdx, [ rax + 0x18 ]
mulx r14, r12, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x30 ], r15
mulx r15, r9, r13
adox r11, rcx
mov r15, 0xffffffff00000000 
mov rdx, r9
mulx rcx, r9, r15
adcx rdi, rbp
adox rdi, r10
mov r10, 0xffffffffffffffff 
mulx r15, rbp, r10
adcx r12, r8
adox r12, rbx
mov rbx, 0x0 
adcx r14, rbx
clc
adcx rbp, rcx
mov r8, 0xffffffff 
mulx rbx, rcx, r8
adcx rcx, r15
adox r14, [ rsp - 0x30 ]
mov r15, 0x0 
adcx rbx, r15
clc
adcx rdx, r13
adcx r9, r11
adcx rbp, rdi
adcx rcx, r12
adcx rbx, r14
seto dl
adc dl, 0x0
movzx rdx, dl
mov r13, r9
sub r13, 0x1
mov r11, 0xffffffff00000000 
mov rdi, rbp
sbb rdi, r11
mov r12, rcx
sbb r12, r10
mov r14, rbx
sbb r14, r8
movzx rdx, dl
sbb rdx, r15
cmovc r13, r9
cmovc r12, rcx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], r12
cmovc rdi, rbp
cmovc r14, rbx
mov [ rdx + 0x18 ], r14
mov [ rdx + 0x8 ], rdi
mov [ rdx + 0x0 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.5310
; seed 4191474697163511 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2256378 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=77, initial num_batches=31): 142105 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06297925258976998
; number reverted permutation / tried permutation: 71810 / 95190 =75.439%
; number reverted decision / tried decision: 62195 / 94809 =65.600%
; validated in 3.644s
