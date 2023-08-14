SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
test al, al
adox r10, r8
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mulx r13, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x10 ]
adcx rbp, r10
adox r8, rbx
mov rdx, [ rsi + 0x8 ]
mulx r10, rbx, [ rax + 0x18 ]
adcx r11, r8
mov rdx, 0x0 
adox r10, rdx
mov r8, rdx
adcx r8, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], rbx
mulx rbx, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], r9
mov [ rsp - 0x30 ], rdi
mulx rdi, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], r9
mov [ rsp - 0x20 ], rcx
mulx rcx, r9, [ rax + 0x0 ]
adc rdi, 0x0
test al, al
adox r9, rbx
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x18 ], r15
mulx r15, rbx, [ rsi + 0x10 ]
adcx r10, r9
adox rcx, rbp
adox rbx, r11
mov rdx, [ rsi + 0x8 ]
mulx r11, rbp, [ rax + 0x10 ]
adcx rbp, rcx
adcx r12, rbx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r9, [ rax + 0x0 ]
adox r14, r8
mov rdx, [ rax + 0x0 ]
mulx rbx, r8, [ rsi + 0x0 ]
mov rdx, 0x0 
mov [ rsp - 0x10 ], r8
mov r8, rdx
adox r8, rdi
adcx r13, r14
seto dil
mov r14, -0x3 
inc r14
adox r9, rbx
mov rbx, rdx
adcx rbx, r8
adox rcx, r10
mov rdx, [ rax + 0x18 ]
mulx r8, r10, [ rsi + 0x18 ]
setc dl
clc
adcx r9, [ rsp - 0x18 ]
adcx rcx, [ rsp - 0x20 ]
movzx r14, dil
lea r14, [ r14 + r8 ]
mov rdi, 0x0 
movzx rdx, dl
lea r14, [ r14 + rdi ]
lea r14, [ r14 + rdx ]
adox rbp, [ rsp - 0x30 ]
adcx rbp, [ rsp - 0x38 ]
adox r12, [ rsp - 0x40 ]
adcx r11, r12
adox r13, [ rsp - 0x28 ]
adcx r15, r13
mov rdx, 0x26 
mulx r12, r8, r15
adox r10, rbx
adox r14, rdi
mov rbx, -0x3 
inc rbx
adox r8, r9
adcx r10, [ rsp - 0x48 ]
mulx r13, r9, r10
adcx r14, rdi
adox r9, rcx
mulx r15, rcx, r14
adox rcx, rbp
mulx r10, rbp, r11
clc
adcx rbp, [ rsp - 0x10 ]
adcx r10, r8
adcx r12, r9
adox r15, rdi
adcx r13, rcx
adc r15, 0x0
mulx r8, r11, r15
xor r8, r8
adox r11, rbp
mov rdi, r8
adox rdi, r10
mov r14, r8
adox r14, r12
mov r9, r8
adox r9, r13
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x10 ], r14
mov rbp, r8
cmovo rbp, rdx
adcx r11, rbp
mov [ rcx + 0x18 ], r9
mov [ rcx + 0x8 ], rdi
mov [ rcx + 0x0 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 7 5800X 8-Core Processor
; ratio 1.7411
; seed 3853968988783372 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 790428 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=142, initial num_batches=31): 73048 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09241575450262389
; number reverted permutation / tried permutation: 78848 / 94901 =83.084%
; number reverted decision / tried decision: 59453 / 95098 =62.518%
; validated in 0.447s
