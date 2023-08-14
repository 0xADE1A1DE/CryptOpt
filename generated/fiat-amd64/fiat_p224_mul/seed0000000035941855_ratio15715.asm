SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rcx
mov [ rsp - 0x58 ], r15
mulx r15, r14, r13
mov rdx, 0xffffffff 
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, r13
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x40 ], r8
mov [ rsp - 0x38 ], r12
mulx r12, r8, r13
xor rdx, rdx
adox r14, r12
adox rdi, r15
adcx r10, rbx
adcx rbp, r11
adox r9, rdx
mov rdx, [ rax + 0x18 ]
mulx rbx, r11, [ rsi + 0x10 ]
adcx r11, [ rsp - 0x38 ]
adc rbx, 0x0
mov rdx, [ rsi + 0x0 ]
mulx r12, r15, [ rax + 0x8 ]
test al, al
adox r13, rcx
mov rdx, [ rax + 0x10 ]
mulx rcx, r13, [ rsi + 0x0 ]
adcx r15, [ rsp - 0x40 ]
adox r8, r15
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x30 ], rbx
mulx rbx, r15, [ rsi + 0x0 ]
adcx r13, r12
adcx r15, rcx
mov rdx, 0x0 
adcx rbx, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r12, [ rax + 0x0 ]
clc
adcx r12, r8
adox r14, r13
adox rdi, r15
adox r9, rbx
mov rdx, [ rsi + 0x8 ]
mulx r13, r8, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mulx rbx, r15, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x28 ], r11
mov [ rsp - 0x20 ], rbp
mulx rbp, r11, r12
seto bpl
mov rdx, -0x2 
inc rdx
adox r15, rcx
adcx r15, r14
adox r8, rbx
mov rdx, [ rsi + 0x8 ]
mulx r14, rcx, [ rax + 0x18 ]
adox rcx, r13
adcx r8, rdi
mov rdx, 0x0 
adox r14, rdx
adcx rcx, r9
movzx rdi, bpl
adcx rdi, r14
mov rbp, 0xffffffff00000000 
mov rdx, rbp
mulx r9, rbp, r11
mov r13, r11
mov rbx, -0x2 
inc rbx
adox r13, r12
adox rbp, r15
mov r13, 0xffffffff 
mov rdx, r13
mulx r12, r13, r11
mov r15, 0xffffffffffffffff 
mov rdx, r15
mulx r14, r15, r11
setc r11b
clc
adcx r15, r9
adcx r13, r14
mov r9, 0x0 
adcx r12, r9
adox r15, r8
adox r13, rcx
clc
adcx rbp, [ rsp - 0x48 ]
mulx rcx, r8, rbp
adcx r10, r15
adcx r13, [ rsp - 0x20 ]
adox r12, rdi
adcx r12, [ rsp - 0x28 ]
movzx rcx, r11b
adox rcx, r9
mulx rdi, r11, r8
mov r14, 0xffffffff00000000 
mov rdx, r8
mulx r15, r8, r14
mov rbx, -0x3 
inc rbx
adox r11, r15
adcx rcx, [ rsp - 0x30 ]
mov r15, 0xffffffff 
mulx rbx, r9, r15
adox r9, rdi
setc dil
clc
adcx rdx, rbp
adcx r8, r10
adcx r11, r13
adcx r9, r12
mov rdx, 0x0 
adox rbx, rdx
adcx rbx, rcx
mov rdx, [ rsi + 0x18 ]
mulx r10, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, r13, [ rax + 0x8 ]
movzx rdx, dil
adc rdx, 0x0
xor rdi, rdi
adox rbp, r8
adcx r13, r10
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, r8, [ rax + 0x10 ]
adcx r8, r12
adox r13, r11
adox r8, r9
mov rdx, [ rsi + 0x18 ]
mulx r9, r11, [ rax + 0x18 ]
adcx r11, r10
adox r11, rbx
mov rdx, 0xffffffffffffffff 
mulx r12, rbx, rbp
adcx r9, rdi
mulx r10, r12, rbx
adox r9, rcx
mov rdx, rbx
mulx rcx, rbx, r14
clc
adcx r12, rcx
mulx rdi, rcx, r15
adcx rcx, r10
mov r10, 0x0 
adcx rdi, r10
clc
adcx rdx, rbp
adcx rbx, r13
adcx r12, r8
adcx rcx, r11
adcx rdi, r9
seto dl
adc dl, 0x0
movzx rdx, dl
mov rbp, rbx
sub rbp, 0x1
mov r13, r12
sbb r13, r14
mov r8, 0xffffffffffffffff 
mov r11, rcx
sbb r11, r8
mov r9, rdi
sbb r9, r15
movzx rdx, dl
sbb rdx, r10
cmovc rbp, rbx
cmovc r11, rcx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], r11
cmovc r13, r12
mov [ rdx + 0x8 ], r13
cmovc r9, rdi
mov [ rdx + 0x18 ], r9
mov [ rdx + 0x0 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.5715
; seed 1963030631378379 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1570043 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=76, initial num_batches=31): 98060 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.062456888123446304
; number reverted permutation / tried permutation: 72406 / 94705 =76.454%
; number reverted decision / tried decision: 63849 / 95294 =67.002%
; validated in 4.179s
