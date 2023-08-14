SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], r9
mulx r9, r15, [ rsi + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x38 ], r10
mov [ rsp - 0x30 ], rbp
mulx rbp, r10, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], r9
mulx r9, r10, [ rsi + 0x10 ]
xor rdx, rdx
adox rcx, r11
adox r15, rbp
adox rbx, rdx
adcx r10, rcx
adcx r8, r15
mov r11, rdx
adcx r11, rbx
adc rdi, 0x0
xor rbp, rbp
adox r13, r12
mov rdx, [ rax + 0x8 ]
mulx rcx, r12, [ rsi + 0x8 ]
adox r14, r10
mov rdx, [ rsi + 0x8 ]
mulx rbx, r15, [ rax + 0x10 ]
mov rdx, [ rax + 0x10 ]
mulx rbp, r10, [ rsi + 0x10 ]
adox r10, r8
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x18 ], rbp
mulx rbp, r8, [ rsi + 0x18 ]
adcx r12, r13
adox r8, r11
adcx r15, r14
adcx r9, r10
adcx r8, [ rsp - 0x20 ]
mov rdx, [ rax + 0x18 ]
mulx r13, r11, [ rsi + 0x18 ]
mov rdx, 0x0 
mov r14, rdx
adox r14, rdi
adox r13, rdx
mov rdi, rdx
adcx rdi, r14
adcx r13, rdx
mov rdx, [ rsi + 0x0 ]
mulx r14, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], r10
mov [ rsp - 0x8 ], r13
mulx r13, r10, [ rax + 0x0 ]
test al, al
adox r10, r14
adcx r10, [ rsp - 0x30 ]
adox r13, r12
adcx r13, [ rsp - 0x38 ]
adox rcx, r15
adox r9, [ rsp - 0x40 ]
adcx rcx, [ rsp - 0x28 ]
adcx rbx, r9
adox r8, [ rsp - 0x48 ]
mov rdx, 0x26 
mulx r15, r12, rbx
adox r11, rdi
adcx r8, [ rsp - 0x18 ]
adcx rbp, r11
mulx r14, rdi, rbp
mov r9, 0x0 
mov rbx, r9
adox rbx, [ rsp - 0x8 ]
adcx rbx, r9
mulx rbp, r11, rbx
mulx r9, rbx, r8
xor r8, r8
adox rbx, r10
adox rdi, r13
adcx r12, [ rsp - 0x10 ]
adcx r15, rbx
adox r11, rcx
adcx r9, rdi
adcx r14, r11
adox rbp, r8
adc rbp, 0x0
mulx r13, r10, rbp
test al, al
adox r10, r12
mov r13, r8
adox r13, r15
mov rcx, r8
adox rcx, r9
mov rbx, r8
adox rbx, r14
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x18 ], rbx
mov [ rdi + 0x8 ], r13
mov r12, r8
cmovo r12, rdx
adcx r10, r12
mov [ rdi + 0x0 ], r10
mov [ rdi + 0x10 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.3682
; seed 3996111112770789 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1326035 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=123, initial num_batches=31): 112055 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08450380268997425
; number reverted permutation / tried permutation: 66198 / 94780 =69.844%
; number reverted decision / tried decision: 53541 / 95219 =56.229%
; validated in 0.714s
