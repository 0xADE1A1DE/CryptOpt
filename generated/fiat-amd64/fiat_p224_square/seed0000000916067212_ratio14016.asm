SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r8
mov r15, 0xffffffff00000000 
mov rdx, r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r14
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x48 ], r13
mov [ rsp - 0x40 ], r12
mulx r12, r13, r14
test al, al
adox r13, rdi
adcx r11, r9
mov rdx, [ rsi + 0x18 ]
mulx rdi, r9, [ rsi + 0x0 ]
adcx rax, rcx
adcx r9, r10
mov rdx, 0xffffffff 
mulx rcx, r10, r14
adox r10, r12
mov r12, 0x0 
adcx rdi, r12
clc
adcx r14, r8
adcx r15, r11
adcx r13, rax
adcx r10, r9
adox rcx, r12
adcx rcx, rdi
mov rdx, [ rsi + 0x0 ]
mulx r8, r14, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx rax, r11, rdx
mov rdx, -0x3 
inc rdx
adox r14, r15
setc r9b
clc
adcx r11, r8
adcx rbx, rax
adox r11, r13
mov rdx, [ rsi + 0x18 ]
mulx r15, rdi, [ rsi + 0x8 ]
adcx rdi, rbp
adcx r15, r12
adox rbx, r10
mov rdx, 0xffffffffffffffff 
mulx r13, rbp, r14
mulx r10, r13, rbp
mov r8, 0xffffffff00000000 
mov rdx, r8
mulx rax, r8, rbp
adox rdi, rcx
clc
adcx r13, rax
movzx rcx, r9b
adox rcx, r15
mov r9, rbp
seto r15b
mov rax, -0x3 
inc rax
adox r9, r14
mov r9, 0xffffffff 
mov rdx, rbp
mulx r14, rbp, r9
adcx rbp, r10
adox r8, r11
adcx r14, r12
adox r13, rbx
adox rbp, rdi
mov rdx, [ rsi + 0x10 ]
mulx rbx, r11, [ rsi + 0x8 ]
adox r14, rcx
mov rdx, [ rsi + 0x0 ]
mulx rdi, r10, [ rsi + 0x10 ]
clc
adcx r11, rdi
movzx rdx, r15b
adox rdx, r12
mov r15, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, rcx, rdx
adcx rcx, rbx
mov rdx, -0x3 
inc rdx
adox r10, r8
mov rdx, 0xffffffffffffffff 
mulx rbx, r8, r10
mulx r12, rbx, r8
adox r11, r13
mov rdx, [ rsi + 0x10 ]
mulx rax, r13, [ rsi + 0x18 ]
adcx r13, rdi
mov rdx, 0x0 
adcx rax, rdx
mov rdi, 0xffffffff00000000 
mov rdx, r8
mulx r9, r8, rdi
adox rcx, rbp
clc
adcx rbx, r9
mov rbp, 0xffffffff 
mulx rdi, r9, rbp
adcx r9, r12
adox r13, r14
adox rax, r15
seto r14b
mov r15, -0x2 
inc r15
adox rdx, r10
mov rdx, [ rsi + 0x18 ]
mulx r12, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx rbp, r15, [ rsi + 0x0 ]
adox r8, r11
mov rdx, 0x0 
adcx rdi, rdx
clc
adcx r15, r8
mov r11, 0xffffffffffffffff 
mov rdx, r11
mulx r8, r11, r15
mov r8, 0xffffffff00000000 
mov rdx, r8
mov byte [ rsp - 0x38 ], r14b
mulx r14, r8, r11
adox rbx, rcx
adox r9, r13
adox rdi, rax
seto cl
mov r13, -0x2 
inc r13
adox r10, rbp
adcx r10, rbx
adox r12, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x18 ]
mulx rbp, rax, rdx
adox rax, [ rsp - 0x48 ]
mov rdx, 0x0 
adox rbp, rdx
mov rbx, r11
mov r13, -0x3 
inc r13
adox rbx, r15
adox r8, r10
adcx r12, r9
adcx rax, rdi
movzx rbx, cl
movzx r15, byte [ rsp - 0x38 ]
lea rbx, [ rbx + r15 ]
mov r15, 0xffffffffffffffff 
mov rdx, r11
mulx r9, r11, r15
adcx rbp, rbx
mov rcx, 0xffffffff 
mulx r10, rdi, rcx
setc dl
clc
adcx r11, r14
adcx rdi, r9
adox r11, r12
mov r14, 0x0 
adcx r10, r14
adox rdi, rax
adox r10, rbp
movzx r12, dl
adox r12, r14
mov rax, r8
sub rax, 0x1
mov rbx, 0xffffffff00000000 
mov r9, r11
sbb r9, rbx
mov rdx, rdi
sbb rdx, r15
mov rbp, r10
sbb rbp, rcx
sbb r12, r14
cmovc r9, r11
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x8 ], r9
cmovc rax, r8
mov [ r12 + 0x0 ], rax
cmovc rbp, r10
cmovc rdx, rdi
mov [ r12 + 0x18 ], rbp
mov [ r12 + 0x10 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen Threadripper 1900X 8-Core Processor
; ratio 1.4016
; seed 2676186944549755 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2011313 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=89, initial num_batches=31): 135864 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06754990396820386
; number reverted permutation / tried permutation: 85070 / 94832 =89.706%
; number reverted decision / tried decision: 66314 / 95167 =69.682%
; validated in 3.738s
