SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x0 ]
xor rdx, rdx
adox r8, rcx
adox rax, r9
mov rdx, [ rsi + 0x8 ]
mulx r9, rcx, rdx
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r11
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
adcx rbx, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mulx r14, rbx, [ rsi + 0x18 ]
adox rbx, r10
mov rdx, 0x0 
adox r14, rdx
mov r10, 0xffffffff 
mov rdx, r10
mov [ rsp - 0x58 ], r15
mulx r15, r10, r11
mov rdx, -0x2 
inc rdx
adox r10, rbp
mov rbp, 0x0 
adox r15, rbp
adcx r10, r8
adcx r15, rax
mov rdx, [ rsi + 0x8 ]
mulx rax, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rbp, [ rsi + 0x0 ]
mov rdx, -0x2 
inc rdx
adox rcx, rdi
mov rdi, 0xffffffff00000001 
mov rdx, rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, r11
adcx rdi, rbx
adox r8, r9
adcx r13, r14
setc r11b
clc
adcx rbp, r10
adcx rcx, r15
mov r9, 0xffffffffffffffff 
mov rdx, rbp
mulx rbx, rbp, r9
mov r14, 0xffffffff 
mulx r15, r10, r14
mov r14, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r12
mulx r12, r9, [ rsi + 0x18 ]
adox r9, rax
adcx r8, rdi
adcx r9, r13
mov rdx, 0x0 
adox r12, rdx
mov rax, -0x3 
inc rax
adox r10, rbx
movzx rdi, r11b
adcx rdi, r12
mov rdx, [ rsi + 0x0 ]
mulx r13, r11, [ rsi + 0x10 ]
seto dl
inc rax
adox rbp, r14
adox r10, rcx
movzx rbp, dl
lea rbp, [ rbp + r15 ]
setc cl
clc
adcx r11, r10
adox rbp, r8
mov rbx, 0xffffffff00000001 
mov rdx, rbx
mulx r15, rbx, r14
mov rdx, [ rsi + 0x8 ]
mulx r8, r14, [ rsi + 0x10 ]
adox rbx, r9
adox r15, rdi
mov rdx, 0xffffffffffffffff 
mulx r12, r9, r11
movzx rdi, cl
mov r10, 0x0 
adox rdi, r10
mov rcx, -0x3 
inc rcx
adox r14, r13
adcx r14, rbp
adox r8, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x18 ]
mulx rbp, r13, [ rsi + 0x10 ]
adox r13, [ rsp - 0x48 ]
adox rbp, r10
adcx r8, rbx
mov rdx, [ rsi + 0x18 ]
mulx r10, rbx, [ rsi + 0x0 ]
adcx r13, r15
mov rdx, 0xffffffff 
mulx rcx, r15, r11
inc rax
adox r15, r12
adox rcx, rax
adcx rbp, rdi
mov rdx, [ rsi + 0x8 ]
mulx rdi, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], rbp
mulx rbp, rax, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r9, r11
adox r15, r14
setc r9b
clc
adcx r12, r10
adcx rax, rdi
mov rdx, [ rsi + 0x18 ]
mulx r10, r14, rdx
adcx r14, rbp
mov rdx, 0xffffffff00000001 
mulx rbp, rdi, r11
mov r11, 0x0 
adcx r10, r11
adox rcx, r8
clc
adcx rbx, r15
adcx r12, rcx
mov r8, 0xffffffff 
mov rdx, rbx
mulx r15, rbx, r8
adox rdi, r13
mov r13, 0xffffffff00000001 
mulx r11, rcx, r13
adox rbp, [ rsp - 0x38 ]
movzx r13, r9b
mov r8, 0x0 
adox r13, r8
adcx rax, rdi
adcx r14, rbp
mov r9, 0xffffffffffffffff 
mulx rbp, rdi, r9
adcx r10, r13
mov r13, -0x3 
inc r13
adox rdi, rdx
setc dil
clc
adcx rbx, rbp
adox rbx, r12
adcx r15, r8
adox r15, rax
adox rcx, r14
adox r11, r10
movzx rdx, dil
adox rdx, r8
mov r12, rbx
sub r12, r9
mov rax, 0xffffffff 
mov r14, r15
sbb r14, rax
mov rbp, rcx
sbb rbp, r8
mov rdi, 0xffffffff00000001 
mov r10, r11
sbb r10, rdi
sbb rdx, r8
cmovc r12, rbx
cmovc r10, r11
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], r12
cmovc r14, r15
cmovc rbp, rcx
mov [ rdx + 0x18 ], r10
mov [ rdx + 0x10 ], rbp
mov [ rdx + 0x8 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.6416
; seed 2460977954228912 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1389546 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=117, initial num_batches=31): 89303 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06426775364039765
; number reverted permutation / tried permutation: 59923 / 95085 =63.020%
; number reverted decision / tried decision: 56386 / 94914 =59.407%
; validated in 0.928s
