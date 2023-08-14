SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rdx + 0x18 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r9
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x10 ]
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rcx
mulx rcx, rdi, rbp
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x40 ], r8
mov [ rsp - 0x38 ], r11
mulx r11, r8, rbp
add r12, rbx
mov rbx, -0x2 
inc rbx
adox r8, rcx
adcx r14, r13
mov r13, 0xffffffff 
mov rdx, rbp
mulx rcx, rbp, r13
adox rbp, r11
mov r11, 0x0 
adox rcx, r11
mov rbx, -0x3 
inc rbx
adox rdx, r9
adox rdi, r12
mov rdx, [ rsi + 0x10 ]
mulx r12, r9, [ rax + 0x0 ]
adcx r10, r15
adox r8, r14
adox rbp, r10
mov rdx, [ rsp - 0x38 ]
adcx rdx, r11
mov r15, rdx
mov rdx, [ rsi + 0x10 ]
mulx r10, r14, [ rax + 0x8 ]
adox rcx, r15
mov rdx, [ rsi + 0x10 ]
mulx r11, r15, [ rax + 0x10 ]
clc
adcx r14, r12
mov rdx, [ rsi + 0x8 ]
mulx rbx, r12, [ rax + 0x10 ]
adcx r15, r10
mov rdx, [ rax + 0x8 ]
mulx r13, r10, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x30 ], r15
mov [ rsp - 0x28 ], r14
mulx r14, r15, [ rsi + 0x10 ]
seto dl
mov [ rsp - 0x20 ], r14
mov r14, -0x2 
inc r14
adox r10, [ rsp - 0x40 ]
adox r12, r13
adcx r15, r11
setc r11b
clc
adcx rdi, [ rsp - 0x48 ]
adcx r10, r8
adcx r12, rbp
mov r8b, dl
mov rdx, [ rax + 0x18 ]
mulx r13, rbp, [ rsi + 0x8 ]
adox rbp, rbx
adcx rbp, rcx
mov rdx, 0x0 
adox r13, rdx
movzx rcx, r8b
adcx rcx, r13
mov r8, 0xffffffffffffffff 
mov rdx, r8
mulx rbx, r8, rdi
mulx r13, rbx, r8
mov r14, 0xffffffff 
mov rdx, r14
mov [ rsp - 0x18 ], r15
mulx r15, r14, r8
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x10 ], rcx
mov byte [ rsp - 0x8 ], r11b
mulx r11, rcx, r8
mov rdx, -0x2 
inc rdx
adox r8, rdi
adox rcx, r10
setc r8b
clc
adcx rbx, r11
adox rbx, r12
adcx r14, r13
adox r14, rbp
mov rdi, 0x0 
adcx r15, rdi
clc
adcx r9, rcx
mov r10, 0xffffffffffffffff 
mov rdx, r10
mulx r12, r10, r9
mulx rbp, r12, r10
adcx rbx, [ rsp - 0x28 ]
movzx r13, byte [ rsp - 0x8 ]
mov r11, [ rsp - 0x20 ]
lea r13, [ r13 + r11 ]
adox r15, [ rsp - 0x10 ]
movzx r11, r8b
adox r11, rdi
adcx r14, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x18 ]
mov r8, 0xffffffff00000000 
mov rdx, r8
mulx rcx, r8, r10
adcx r13, r11
mov r11, r10
mov rdx, -0x3 
inc rdx
adox r11, r9
adox r8, rbx
setc r11b
clc
adcx r12, rcx
adox r12, r14
mov rdx, [ rsi + 0x18 ]
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, 0xffffffff 
mulx rcx, r14, r10
adcx r14, rbp
adcx rcx, rdi
adox r14, r15
adox rcx, r13
mov rdx, [ rax + 0x8 ]
mulx rbp, r10, [ rsi + 0x18 ]
movzx rdx, r11b
adox rdx, rdi
xor r15, r15
adox r10, rbx
mov rdi, rdx
mov rdx, [ rax + 0x10 ]
mulx r13, r11, [ rsi + 0x18 ]
adcx r9, r8
mov rdx, [ rsi + 0x18 ]
mulx rbx, r8, [ rax + 0x18 ]
adox r11, rbp
adcx r10, r12
adcx r11, r14
adox r8, r13
adox rbx, r15
adcx r8, rcx
mov rdx, 0xffffffffffffffff 
mulx r14, r12, r9
mov r14, 0xffffffff 
mov rdx, r12
mulx rcx, r12, r14
adcx rbx, rdi
mov rbp, 0xffffffff00000000 
mulx r13, rdi, rbp
mov rbp, rdx
mov r14, -0x3 
inc r14
adox rbp, r9
adox rdi, r10
mov rbp, 0xffffffffffffffff 
mulx r10, r9, rbp
setc dl
clc
adcx r9, r13
adox r9, r11
adcx r12, r10
adox r12, r8
adcx rcx, r15
adox rcx, rbx
seto r11b
mov r8, rdi
sub r8, 0x1
mov rbx, 0xffffffff00000000 
mov r13, r9
sbb r13, rbx
mov r10, r12
sbb r10, rbp
mov r15, 0xffffffff 
mov r14, rcx
sbb r14, r15
movzx rbx, r11b
movzx rdx, dl
lea rbx, [ rbx + rdx ]
mov rdx, 0x0 
sbb rbx, rdx
cmovc r10, r12
cmovc r13, r9
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x8 ], r13
cmovc r8, rdi
mov [ rbx + 0x0 ], r8
cmovc r14, rcx
mov [ rbx + 0x18 ], r14
mov [ rbx + 0x10 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4658
; seed 4427542765502686 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2174579 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=76, initial num_batches=31): 136003 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0625422208160752
; number reverted permutation / tried permutation: 71004 / 95048 =74.703%
; number reverted decision / tried decision: 62829 / 94951 =66.170%
; validated in 5.583s
