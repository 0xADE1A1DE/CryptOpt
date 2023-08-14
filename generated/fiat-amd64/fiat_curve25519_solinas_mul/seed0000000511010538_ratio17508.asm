SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
xor rdx, rdx
adox rcx, r11
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r15, r11, [ rsi + 0x18 ]
adox r11, r14
adcx rbp, rcx
adcx r8, r11
mov rdx, 0x0 
adox rbx, rdx
mov r14, rdx
adcx r14, rbx
mov rdx, [ rax + 0x18 ]
mulx r11, rcx, [ rsi + 0x10 ]
adc r11, 0x0
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r13
mov [ rsp - 0x40 ], rcx
mulx rcx, r13, [ rax + 0x0 ]
xor rdx, rdx
adox r13, rdi
adox rcx, rbp
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbp, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r10
mov [ rsp - 0x30 ], r9
mulx r9, r10, [ rax + 0x10 ]
adcx rbp, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], r9
mulx r9, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x20 ], r9
mov [ rsp - 0x18 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
adox r9, r8
adcx r10, rcx
adcx r12, r9
adox r13, r14
mov rdx, [ rax + 0x18 ]
mulx r14, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, rcx, [ rax + 0x0 ]
mov rdx, 0x0 
mov [ rsp - 0x10 ], rcx
mov rcx, rdx
adox rcx, r11
adcx r15, r13
mov r11, rdx
adcx r11, rcx
adox r14, rdx
mov rdx, [ rax + 0x0 ]
mulx rcx, r13, [ rsi + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r13, r9
adox rcx, rbp
adox rdi, r10
setc bpl
clc
adcx r13, [ rsp - 0x18 ]
adox r12, [ rsp - 0x30 ]
adcx rcx, [ rsp - 0x38 ]
adox r15, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
adox r8, r11
adcx r12, [ rsp - 0x28 ]
adcx rbx, r15
mov r10, 0x0 
movzx rbp, bpl
lea r14, [ r14 + r10 ]
lea r14, [ r14 + rbp ]
adox r14, r10
adcx r8, [ rsp - 0x20 ]
mov r9, 0x26 
mov rdx, rbx
mulx rbp, rbx, r9
mov rdx, r9
mulx r11, r9, r12
adcx r14, r10
xor r15, r15
adox r9, [ rsp - 0x10 ]
adcx rbx, r13
mulx r13, r10, r8
adox r11, rbx
adcx r10, rcx
mulx r12, rcx, r14
adcx rcx, rdi
adcx r12, r15
adox rbp, r10
adox r13, rcx
adox r12, r15
mulx r8, rdi, r12
xor r8, r8
adox rdi, r9
mov r15, r8
adox r15, r11
mov r14, r8
adox r14, rbp
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], r14
mov rbx, r8
adox rbx, r13
mov r11, r8
cmovo r11, rdx
adcx rdi, r11
mov [ r9 + 0x0 ], rdi
mov [ r9 + 0x8 ], r15
mov [ r9 + 0x18 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.7508
; seed 3656838219523760 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 893677 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=140, initial num_batches=31): 60750 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06797758026669591
; number reverted permutation / tried permutation: 77101 / 94874 =81.267%
; number reverted decision / tried decision: 59513 / 95125 =62.563%
; validated in 0.352s
