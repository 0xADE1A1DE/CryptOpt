SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x20 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r10
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r12
mulx r12, r10, [ rsi + 0x0 ]
test al, al
adox rcx, r9
adox rbx, r8
adcx rcx, r13
adcx r14, rbx
mov rdx, [ rax + 0x0 ]
mulx r9, r8, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mulx rbx, r13, [ rsi + 0x18 ]
xor rdx, rdx
adox r8, r13
adox rbx, r9
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, [ rax + 0x18 ]
adcx rcx, r9
adcx r13, r14
xor rdx, rdx
adox r15, rcx
adox r13, rdi
mov rdx, [ rsi + 0x0 ]
mulx r14, rdi, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mulx rcx, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r14
mov [ rsp - 0x38 ], rdi
mulx rdi, r14, [ rax + 0x10 ]
adcx r8, r14
adcx rdi, rbx
test al, al
adox r8, r9
adox rcx, rdi
mov rdx, [ rsi + 0x18 ]
mulx r9, rbx, [ rax + 0x10 ]
mov rdx, 0x34 
bzhi r14, r15, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x30 ], r14
mulx r14, rdi, [ rsi + 0x0 ]
shrd r15, r13, 52
add r8, rdi
adcx r14, rcx
xor rdx, rdx
adox r8, r15
adox r14, rdx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r13, [ rax + 0x8 ]
mov rdx, 0x1000003d10000 
mulx r15, rdi, r11
adcx rdi, r8
adcx r14, r15
xor r11, r11
adox r13, rbx
adox r9, rcx
mov rdx, [ rax + 0x18 ]
mulx r8, rbx, [ rsi + 0x10 ]
adcx r13, rbx
adcx r8, r9
mov rdx, [ rax + 0x20 ]
mulx r15, rcx, [ rsi + 0x8 ]
xor rdx, rdx
adox r13, rcx
adox r15, r8
mov r11, rdi
shrd r11, r14, 52
xor r14, r14
adox r13, r11
adox r15, r14
mov rdx, 0x34 
bzhi r9, r13, rdx
shrd r13, r15, 52
mov rdx, [ rsi + 0x20 ]
mulx r8, rbx, [ rax + 0x10 ]
shl r9, 4
mov rdx, 0x34 
bzhi rcx, rdi, rdx
mov rdx, [ rax + 0x18 ]
mulx r11, rdi, [ rsi + 0x18 ]
mov rdx, rcx
shr rdx, 48
mov r15, 0x30 
bzhi r14, rcx, r15
lea rdx, [ rdx + r9 ]
mov r9, 0x1000003d1 
mulx r15, rcx, r9
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x28 ], r14
mulx r14, r9, [ rsi + 0x0 ]
adox rcx, r9
adox r14, r15
mov rdx, [ rax + 0x0 ]
mulx r9, r15, [ rsi + 0x8 ]
mov rdx, rcx
shrd rdx, r14, 52
add r15, r10
adcx r12, r9
mov r10, rdx
mov rdx, [ rsi + 0x10 ]
mulx r9, r14, [ rax + 0x20 ]
xor rdx, rdx
adox rbx, rdi
adox r11, r8
adcx r15, r10
adc r12, 0x0
xor r8, r8
adox rbx, r14
adox r9, r11
adcx rbx, r13
adc r9, 0x0
mov rdx, rbx
shrd rdx, r9, 52
mov r13, 0xfffffffffffff 
and rbx, r13
mov rdi, 0x1000003d10 
xchg rdx, rdi
mulx r14, r10, rbx
adox r10, r15
adox r12, r14
mov rdx, [ rax + 0x18 ]
mulx r15, r11, [ rsi + 0x20 ]
adcx r11, rbp
adcx r15, [ rsp - 0x48 ]
add r11, rdi
adc r15, 0x0
mov rdx, r10
shrd rdx, r12, 52
mov rbp, rdx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r9, [ rax + 0x8 ]
and r10, r13
mov rdx, [ rax + 0x0 ]
mulx r14, rbx, [ rsi + 0x10 ]
adox rbx, r9
adox rdi, r14
adcx rbx, [ rsp - 0x38 ]
adcx rdi, [ rsp - 0x40 ]
mov rdx, 0x1000003d10 
mulx r9, r12, r11
xor r11, r11
adox rbx, rbp
adox rdi, r11
adcx r12, rbx
adcx rdi, r9
mov r8, r12
shrd r8, rdi, 52
add r8, [ rsp - 0x30 ]
and r12, r13
mov rbp, 0x1000003d10000 
mov rdx, r15
mulx r14, r15, rbp
adox r15, r8
adox r14, r11
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], r12
mov rbx, r15
shrd rbx, r14, 52
and rcx, r13
mov [ r9 + 0x0 ], rcx
mov [ r9 + 0x8 ], r10
add rbx, [ rsp - 0x28 ]
and r15, r13
mov [ r9 + 0x18 ], r15
mov [ r9 + 0x20 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.1094
; seed 3406765105869591 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1407410 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=163, initial num_batches=31): 91691 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0651487484102003
; number reverted permutation / tried permutation: 67928 / 94897 =71.581%
; number reverted decision / tried decision: 54199 / 95102 =56.990%
; validated in 0.531s
