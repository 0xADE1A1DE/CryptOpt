SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], r10
mov [ rsp - 0x40 ], r9
mulx r9, r10, [ rax + 0x18 ]
xor rdx, rdx
adox r15, r14
adcx rbp, r15
mov rdx, [ rsi + 0x18 ]
mulx r15, r14, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r15
mov [ rsp - 0x30 ], r10
mulx r10, r15, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], r13
mov [ rsp - 0x20 ], r11
mulx r11, r13, [ rsi + 0x8 ]
adox r15, r9
mov rdx, 0x0 
adox r11, rdx
adcx rdi, r15
mov r9, rdx
adcx r9, r11
adc rbx, 0x0
mov rdx, [ rsi + 0x0 ]
mulx r11, r15, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], r13
mov [ rsp - 0x10 ], r15
mulx r15, r13, [ rax + 0x10 ]
test al, al
adox rcx, r11
adox r8, rbp
adox r13, rdi
adox r14, r9
mov rdx, [ rax + 0x8 ]
mulx rdi, rbp, [ rsi + 0x8 ]
adcx rbp, rcx
mov rdx, [ rax + 0x0 ]
mulx r11, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x8 ], r15
mulx r15, rcx, [ rsi + 0x8 ]
adcx rcx, r8
adcx r12, r13
mov rdx, 0x0 
mov r8, rdx
adox r8, rbx
adcx r10, r14
mov rbx, rdx
adcx rbx, r8
mov rdx, [ rsi + 0x18 ]
mulx r14, r13, [ rax + 0x18 ]
mov rdx, 0x0 
adox r14, rdx
adcx r14, rdx
xor r8, r8
adox r9, [ rsp - 0x20 ]
adcx r9, [ rsp - 0x10 ]
adox r11, rbp
adox rdi, rcx
adcx r11, [ rsp - 0x28 ]
adcx rdi, [ rsp - 0x30 ]
adox r12, [ rsp - 0x18 ]
adox r10, [ rsp - 0x40 ]
adcx r15, r12
adox r13, rbx
adcx r10, [ rsp - 0x8 ]
mov rdx, 0x26 
mulx rcx, rbp, r10
adcx r13, [ rsp - 0x38 ]
adox r14, r8
mulx r12, rbx, r13
adcx r14, r8
xor r10, r10
adox rbp, r9
adox rbx, r11
mulx r9, r8, r15
adcx r8, [ rsp - 0x48 ]
adcx r9, rbp
mulx r15, r11, r14
adox r11, rdi
adcx rcx, rbx
adcx r12, r11
adox r15, r10
adc r15, 0x0
mulx r13, rdi, r15
xor r13, r13
adox rdi, r8
mov r10, r13
adox r10, r9
mov r14, r13
adox r14, rcx
mov rbp, r13
adox rbp, r12
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x8 ], r10
mov r8, r13
cmovo r8, rdx
adcx rdi, r8
mov [ rbx + 0x0 ], rdi
mov [ rbx + 0x18 ], rbp
mov [ rbx + 0x10 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4106
; seed 4176054613051347 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1311920 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=132, initial num_batches=31): 111095 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0846812305628392
; number reverted permutation / tried permutation: 66531 / 95265 =69.838%
; number reverted decision / tried decision: 52504 / 94734 =55.423%
; validated in 0.842s
