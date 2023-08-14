SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rax
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, 0xffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbx
mov [ rsp - 0x58 ], r15
mov r15, 0xffffffff00000000 
mov rdx, r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], r12
mulx r12, rbp, rdx
xor rdx, rdx
adox rbp, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], r12
mulx r12, rcx, [ rsi + 0x10 ]
adcx r8, r10
adcx rcx, r9
mov rdx, rbx
seto r10b
mov r9, -0x2 
inc r9
adox rdx, rax
adox r15, r8
mov rdx, [ rsi + 0x0 ]
mulx r8, rax, [ rsi + 0x18 ]
adcx rax, r12
mov rdx, 0xffffffffffffffff 
mulx r9, r12, rbx
mov rbx, 0x0 
adcx r8, rbx
clc
adcx r12, rdi
adcx r13, r9
adcx r14, rbx
adox r12, rcx
clc
adcx r11, r15
adox r13, rax
adox r14, r8
mulx rcx, rdi, r11
mov rdx, [ rsi + 0x8 ]
mulx r15, rcx, [ rsi + 0x10 ]
mov rdx, 0xffffffff 
mulx r9, rax, rdi
mov r8, 0xffffffff00000000 
mov rdx, r8
mulx rbx, r8, rdi
adcx rbp, r12
seto r12b
mov rdx, 0x0 
dec rdx
movzx r10, r10b
adox r10, rdx
adox rcx, [ rsp - 0x38 ]
adcx rcx, r13
mov rdx, [ rsi + 0x18 ]
mulx r13, r10, [ rsi + 0x8 ]
adox r10, r15
adcx r10, r14
mov rdx, 0x0 
adox r13, rdx
mov r14, rdi
mov r15, -0x3 
inc r15
adox r14, r11
movzx r14, r12b
adcx r14, r13
mov rdx, [ rsi + 0x10 ]
mulx r12, r11, [ rsi + 0x0 ]
adox r8, rbp
mov rdx, [ rsi + 0x10 ]
mulx r13, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r14
mulx r14, r15, [ rsi + 0x10 ]
setc dl
clc
adcx r15, r12
mov r12b, dl
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], r15
mov [ rsp - 0x20 ], r11
mulx r11, r15, rdx
adcx r15, r14
adcx rbp, r11
mov rdx, 0xffffffffffffffff 
mulx r11, r14, rdi
mov rdi, 0x0 
adcx r13, rdi
clc
adcx r14, rbx
adcx rax, r11
adox r14, rcx
adox rax, r10
adcx r9, rdi
clc
adcx r8, [ rsp - 0x20 ]
adcx r14, [ rsp - 0x28 ]
mulx rcx, rbx, r8
adox r9, [ rsp - 0x30 ]
mov rcx, 0xffffffff00000000 
mov rdx, rcx
mulx r10, rcx, rbx
mov r11, 0xffffffffffffffff 
mov rdx, rbx
mulx rdi, rbx, r11
adcx r15, rax
adcx rbp, r9
movzx rax, r12b
mov r9, 0x0 
adox rax, r9
adcx r13, rax
mov r12, rdx
mov rax, -0x3 
inc rax
adox r12, r8
adox rcx, r14
setc r12b
clc
adcx rbx, r10
adox rbx, r15
mov r8, 0xffffffff 
mulx r10, r14, r8
adcx r14, rdi
adox r14, rbp
mov rdx, [ rsi + 0x18 ]
mulx r15, rdi, [ rsi + 0x10 ]
adcx r10, r9
adox r10, r13
mov rdx, [ rsi + 0x18 ]
mulx r13, rbp, [ rsi + 0x8 ]
movzx rdx, r12b
adox rdx, r9
xor r12, r12
adox rbp, [ rsp - 0x40 ]
adox rdi, r13
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, r13, rdx
adox r13, r15
mov rdx, 0x0 
adox r12, rdx
adcx rcx, [ rsp - 0x48 ]
adcx rbp, rbx
mov rdx, r11
mulx rbx, r11, rcx
mov rbx, r11
inc rax
adox rbx, rcx
adcx rdi, r14
mov rbx, 0xffffffff00000000 
mov rdx, r11
mulx r14, r11, rbx
adcx r13, r10
adcx r12, r9
mulx r10, r15, r8
mov r9, 0xffffffffffffffff 
mulx rax, rcx, r9
setc dl
clc
adcx rcx, r14
adcx r15, rax
mov r14, 0x0 
adcx r10, r14
adox r11, rbp
adox rcx, rdi
adox r15, r13
adox r10, r12
movzx rbp, dl
adox rbp, r14
mov rdi, r11
sub rdi, 0x1
mov r13, rcx
sbb r13, rbx
mov rdx, r15
sbb rdx, r9
mov r12, r10
sbb r12, r8
sbb rbp, r14
cmovc r13, rcx
cmovc rdi, r11
cmovc r12, r10
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x8 ], r13
cmovc rdx, r15
mov [ rbp + 0x18 ], r12
mov [ rbp + 0x0 ], rdi
mov [ rbp + 0x10 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.4075
; seed 3100934624562408 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1927428 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=85, initial num_batches=31): 138109 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0716545572649147
; number reverted permutation / tried permutation: 74520 / 95083 =78.374%
; number reverted decision / tried decision: 61187 / 94916 =64.464%
; validated in 3.572s
