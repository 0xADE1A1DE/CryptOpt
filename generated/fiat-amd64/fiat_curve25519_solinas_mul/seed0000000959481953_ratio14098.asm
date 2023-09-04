SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rdx + 0x18 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r10
mulx r10, rbx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], r14
mulx r14, rbx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], rbx
mov [ rsp - 0x20 ], r15
mulx r15, rbx, [ rax + 0x0 ]
test al, al
adox rbx, r14
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], r8
mulx r8, r14, [ rax + 0x8 ]
adox r14, r11
adcx rcx, rbx
adcx r15, r14
mov rdx, [ rax + 0x18 ]
mulx rbx, r11, [ rsi + 0x8 ]
mov rdx, 0x0 
adox rbx, rdx
mov r14, rdx
adcx r14, rbx
adc r10, 0x0
xor rbx, rbx
adox rbp, rdi
adox r12, rcx
adox r9, r15
adcx r13, rbp
mov rdx, [ rax + 0x10 ]
mulx rcx, rdi, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mulx rbp, r15, [ rsi + 0x8 ]
adcx r15, r12
adox rdi, r14
adcx r9, [ rsp - 0x18 ]
adcx r8, rdi
mov rdx, rbx
adox rdx, r10
mov r14, rbx
adcx r14, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, r10, [ rax + 0x18 ]
adox r12, rbx
adcx r12, rbx
mov rdx, [ rax + 0x0 ]
mulx rbx, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], rdi
mov [ rsp - 0x8 ], rcx
mulx rcx, rdi, [ rax + 0x0 ]
xor rdx, rdx
adox rdi, rbx
adcx rdi, [ rsp - 0x20 ]
adox rcx, r13
adox r15, [ rsp - 0x30 ]
adox r11, r9
adox r8, [ rsp - 0x38 ]
adcx rcx, [ rsp - 0x28 ]
adcx r15, [ rsp - 0x40 ]
adox r10, r14
adox r12, rdx
adcx rbp, r11
mov r13, 0x26 
mov rdx, r13
mulx r9, r13, rbp
adcx r8, [ rsp - 0x48 ]
mulx rbx, r14, r8
adcx r10, [ rsp - 0x8 ]
mov r11, 0x0 
adcx r12, r11
mulx r8, rbp, r10
test al, al
adox r14, rdi
adcx r13, [ rsp - 0x10 ]
adcx r9, r14
adox rbp, rcx
adcx rbx, rbp
mulx rcx, rdi, r12
adox rdi, r15
adox rcx, r11
adcx r8, rdi
adc rcx, 0x0
mulx r10, r15, rcx
test al, al
adox r15, r13
mov r10, r11
adox r10, r9
mov r12, r11
adox r12, rbx
mov r14, r11
adox r14, r8
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x10 ], r12
mov r9, r11
cmovo r9, rdx
adcx r15, r9
mov [ r13 + 0x0 ], r15
mov [ r13 + 0x8 ], r10
mov [ r13 + 0x18 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.4098
; seed 3613152349655277 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 964863 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=130, initial num_batches=31): 84370 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08744246592521425
; number reverted permutation / tried permutation: 62910 / 94710 =66.424%
; number reverted decision / tried decision: 51168 / 95289 =53.698%
; validated in 0.54s
