SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r11
mov [ rsp - 0x60 ], r14
mulx r14, r13, r12
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
mov rdx, r12
mov [ rsp - 0x48 ], r8
xor r8, r8
adox rdx, r11
mov rdx, 0xffffffff00000000 
mulx r8, r11, r12
adcx rbx, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r14
mulx r14, rcx, [ rsi + 0x18 ]
adcx r15, rbp
adcx rcx, rdi
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbp, rdx
mov rdx, 0x0 
adcx r14, rdx
clc
adcx rbp, r9
adcx rax, rdi
mov rdx, [ rsi + 0x8 ]
mulx rdi, r9, [ rsi + 0x18 ]
adcx r9, r10
mov rdx, 0xffffffff 
mov [ rsp - 0x38 ], r9
mulx r9, r10, r12
mov r12, 0x0 
adcx rdi, r12
clc
adcx r13, r8
adox r11, rbx
adox r13, r15
adcx r10, [ rsp - 0x40 ]
adcx r9, r12
adox r10, rcx
adox r9, r14
mov rdx, [ rsi + 0x18 ]
mulx rbx, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r15, [ rsi + 0x0 ]
clc
adcx r8, rcx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, [ rsi + 0x10 ]
adcx r14, rbx
mov rdx, [ rsi + 0x18 ]
mulx r12, rbx, rdx
adcx rbx, rcx
seto dl
mov rcx, -0x2 
inc rcx
adox r11, [ rsp - 0x48 ]
mov rcx, 0x0 
adcx r12, rcx
adox rbp, r13
mov r13, 0xffffffffffffffff 
xchg rdx, r13
mov [ rsp - 0x30 ], r12
mulx r12, rcx, r11
mov [ rsp - 0x28 ], rbx
mulx rbx, r12, rcx
mov rdx, rcx
clc
adcx rdx, r11
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x20 ], r14
mulx r14, r11, rcx
adox rax, r10
adox r9, [ rsp - 0x38 ]
movzx r10, r13b
adox r10, rdi
mov rdx, [ rsi + 0x8 ]
mulx r13, rdi, [ rsi + 0x10 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x18 ], r8
mov [ rsp - 0x10 ], r15
mulx r15, r8, rcx
seto cl
mov rdx, -0x2 
inc rdx
adox r12, r14
adox r8, rbx
adcx r11, rbp
adcx r12, rax
adcx r8, r9
mov rbp, 0x0 
adox r15, rbp
adcx r15, r10
movzx rbx, cl
adc rbx, 0x0
mov rdx, [ rsi + 0x0 ]
mulx rax, r14, [ rsi + 0x10 ]
xor rdx, rdx
adox rdi, rax
mov rdx, [ rsi + 0x10 ]
mulx r9, rbp, rdx
adcx r14, r11
adcx rdi, r12
adox rbp, r13
adcx rbp, r8
mov rdx, [ rsi + 0x10 ]
mulx r10, rcx, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mulx r11, r13, r14
mulx r12, r11, r13
adox rcx, r9
mov r8, 0x0 
adox r10, r8
adcx rcx, r15
mov r15, 0xffffffff00000000 
mov rdx, r13
mulx rax, r13, r15
mov r9, rdx
mov r15, -0x3 
inc r15
adox r9, r14
adcx r10, rbx
adox r13, rdi
mov r9, 0xffffffff 
mulx r14, rbx, r9
setc dil
clc
adcx r11, rax
adcx rbx, r12
adox r11, rbp
adox rbx, rcx
seto bpl
mov rdx, -0x3 
inc rdx
adox r13, [ rsp - 0x10 ]
mov rdx, 0xffffffffffffffff 
mulx rcx, r12, r13
adcx r14, r8
mov rcx, 0xffffffff00000000 
mov rdx, r12
mulx rax, r12, rcx
clc
mov r8, -0x1 
movzx rbp, bpl
adcx rbp, r8
adcx r10, r14
adox r11, [ rsp - 0x18 ]
adox rbx, [ rsp - 0x20 ]
adox r10, [ rsp - 0x28 ]
movzx rbp, dil
mov r14, 0x0 
adcx rbp, r14
mov rdi, 0xffffffffffffffff 
mulx r8, r14, rdi
adox rbp, [ rsp - 0x30 ]
clc
adcx r14, rax
mulx r15, rax, r9
adcx rax, r8
seto r8b
mov rcx, -0x2 
inc rcx
adox rdx, r13
adox r12, r11
adox r14, rbx
adox rax, r10
mov rdx, 0x0 
adcx r15, rdx
adox r15, rbp
movzx r13, r8b
adox r13, rdx
mov r11, r12
sub r11, 0x1
mov rbx, 0xffffffff00000000 
mov r10, r14
sbb r10, rbx
mov r8, rax
sbb r8, rdi
mov rbp, r15
sbb rbp, r9
sbb r13, rdx
cmovc r10, r14
cmovc r8, rax
cmovc r11, r12
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x8 ], r10
cmovc rbp, r15
mov [ r13 + 0x10 ], r8
mov [ r13 + 0x18 ], rbp
mov [ r13 + 0x0 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.3991
; seed 2350931574023174 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2150244 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=84, initial num_batches=31): 139244 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06475730196200989
; number reverted permutation / tried permutation: 78160 / 95576 =81.778%
; number reverted decision / tried decision: 68913 / 94423 =72.983%
; validated in 3.411s
