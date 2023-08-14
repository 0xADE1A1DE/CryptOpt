SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, 0xffffffff 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rbx
mov [ rsp - 0x60 ], r14
mov r14, 0xffffffffffffffff 
mov rdx, r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, [ rsi + 0x0 ]
xor rdx, rdx
adox rax, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r8
mulx r8, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], rax
mov [ rsp - 0x30 ], rdi
mulx rdi, rax, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], r9
mov [ rsp - 0x20 ], r14
mulx r14, r9, [ rsi + 0x8 ]
adcx rax, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], rax
mulx rax, r8, [ rsi + 0x18 ]
adcx r9, rdi
adcx r8, r14
mov rdx, 0x0 
adcx rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, rdi, [ rsi + 0x18 ]
adox r11, r10
adox rdi, rcx
clc
adcx r12, r15
mov rdx, [ rsi + 0x8 ]
mulx rcx, r10, [ rsi + 0x0 ]
mov rdx, 0x0 
adcx r13, rdx
adox r14, rdx
xor r15, r15
adox r10, rbp
mov rdx, [ rsi + 0x10 ]
mulx r15, rbp, [ rsi + 0x0 ]
adox rbp, rcx
mov rdx, rbx
adcx rdx, [ rsp - 0x20 ]
adcx r12, r10
mov rdx, [ rsi + 0x18 ]
mulx r10, rcx, [ rsi + 0x0 ]
mov rdx, 0xffffffff00000001 
mov [ rsp - 0x10 ], r14
mov [ rsp - 0x8 ], rdi
mulx rdi, r14, rbx
adcx r13, rbp
adox rcx, r15
adcx r14, rcx
mov rbx, 0x0 
adox r10, rbx
adcx rdi, r10
mov r15, -0x3 
inc r15
adox r12, [ rsp - 0x28 ]
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx rcx, rbp, r12
adox r13, [ rsp - 0x18 ]
adox r9, r14
mov r14, 0xffffffff 
mov rdx, r12
mulx r10, r12, r14
adox r8, rdi
setc dil
clc
adcx r12, rcx
movzx rcx, dil
adox rcx, rax
seto al
mov rdi, -0x3 
inc rdi
adox rbp, rdx
adcx r10, rbx
adox r12, r13
adox r10, r9
clc
adcx r12, [ rsp - 0x30 ]
adcx r10, [ rsp - 0x38 ]
mov rdi, 0xffffffff00000001 
mulx r13, rbp, rdi
adox rbp, r8
mov rdx, r12
mulx r9, r12, r14
adox r13, rcx
adcx r11, rbp
adcx r13, [ rsp - 0x8 ]
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbp, rcx, [ rsi + 0x0 ]
seto dl
mov r15, -0x3 
inc r15
adox rbp, [ rsp - 0x40 ]
movzx rbx, dl
movzx rax, al
lea rbx, [ rbx + rax ]
mov rax, 0xffffffffffffffff 
mov rdx, r8
mulx r15, r8, rax
adcx rbx, [ rsp - 0x10 ]
setc r14b
clc
adcx r12, r15
mov r15, 0x0 
adcx r9, r15
clc
adcx r8, rdx
adcx r12, r10
mulx r10, r8, rdi
adcx r9, r11
adcx r8, r13
adcx r10, rbx
movzx rdx, r14b
adcx rdx, r15
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r13, rdx
clc
adcx rcx, r12
mov rdx, [ rsi + 0x10 ]
mulx r12, rbx, [ rsi + 0x18 ]
adox rbx, [ rsp - 0x48 ]
adcx rbp, r9
adcx rbx, r8
adox r13, r12
adcx r13, r10
mov rdx, rax
mulx r9, rax, rcx
adox r14, r15
adcx r14, r11
mov r8, 0xffffffff 
mov rdx, r8
mulx r10, r8, rcx
mov r11, -0x3 
inc r11
adox rax, rcx
setc al
clc
adcx r8, r9
adox r8, rbp
adcx r10, r15
adox r10, rbx
mov rdx, rdi
mulx r12, rdi, rcx
adox rdi, r13
adox r12, r14
movzx rcx, al
adox rcx, r15
mov rbp, 0xffffffffffffffff 
mov rbx, r8
sub rbx, rbp
mov r13, 0xffffffff 
mov r9, r10
sbb r9, r13
mov rax, rdi
sbb rax, r15
mov r14, r12
sbb r14, rdx
sbb rcx, r15
cmovc rbx, r8
cmovc rax, rdi
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x10 ], rax
cmovc r14, r12
cmovc r9, r10
mov [ rcx + 0x0 ], rbx
mov [ rcx + 0x8 ], r9
mov [ rcx + 0x18 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.6757
; seed 2765808595531177 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1511000 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=103, initial num_batches=31): 98674 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06530377233620119
; number reverted permutation / tried permutation: 80941 / 94561 =85.597%
; number reverted decision / tried decision: 64382 / 95438 =67.460%
; validated in 1.973s
