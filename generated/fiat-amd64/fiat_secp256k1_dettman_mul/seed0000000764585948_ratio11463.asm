SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
test al, al
adox r9, r10
adox r11, rbx
mov rdx, [ rax + 0x10 ]
mulx rbx, r10, [ rsi + 0x8 ]
adcx r9, r10
adcx rbx, r11
mov rdx, [ rsi + 0x0 ]
mulx r10, r11, [ rax + 0x18 ]
xor rdx, rdx
adox r9, r11
adox r10, rbx
mov rdx, [ rax + 0x20 ]
mulx r11, rbx, [ rsi + 0x20 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rbx
adcx rbp, r9
adcx r10, r12
mov r9, rbp
shrd r9, r10, 52
mov rdx, [ rax + 0x0 ]
mulx r12, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mulx r13, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x10 ]
xor rdx, rdx
adox rbx, r10
adox r13, r12
adcx rbx, r14
adcx r15, r13
mov rdx, [ rax + 0x20 ]
mulx r10, r12, [ rsi + 0x0 ]
add rbx, rcx
adcx r8, r15
xor rdx, rdx
adox rbx, r12
adox r10, r8
adcx rbx, r9
adc r10, 0x0
mov rcx, 0xfffffffffffff 
and rbp, rcx
mov r9, 0x1000003d10000 
mov rdx, r11
mulx r14, r11, r9
adox r11, rbx
adox r10, r14
mov rdx, r11
shrd rdx, r10, 52
mov r13, rdx
mov rdx, [ rsi + 0x20 ]
mulx r12, r15, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx rbx, r8, [ rax + 0x10 ]
xor rdx, rdx
adox r15, r8
adox rbx, r12
mov rdx, [ rax + 0x18 ]
mulx r10, r14, [ rsi + 0x10 ]
adcx r15, r14
adcx r10, rbx
mov rdx, [ rsi + 0x8 ]
mulx r8, r12, [ rax + 0x20 ]
test al, al
adox r15, r12
adox r8, r10
adcx r15, r13
adc r8, 0x0
mov rdx, r15
and rdx, rcx
shrd r15, r8, 52
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, r10, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mulx r9, r8, [ rsi + 0x20 ]
shl r13, 4
xor rdx, rdx
adox r8, r10
adox r12, r9
adcx r8, rbx
adcx r14, r12
add r8, r15
adc r14, 0x0
and r11, rcx
mov r15, r8
and r15, rcx
shrd r8, r14, 52
mov rbx, r11
shr rbx, 48
lea rbx, [ rbx + r13 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r10, [ rax + 0x0 ]
mov rdx, 0x1000003d1 
mulx r12, r13, rbx
test al, al
adox r13, r10
adox r9, r12
mov r14, 0xffffffffffff 
and r11, r14
mov rbx, r13
and rbx, rcx
mov rdx, [ rsi + 0x20 ]
mulx r12, r10, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, [ rax + 0x20 ]
mov [ rdi + 0x0 ], rbx
shrd r13, r9, 52
test al, al
adox r10, r14
adox rcx, r12
adcx r10, r8
adc rcx, 0x0
mov rdx, 0x1000003d10000 
mulx r9, r8, rcx
mov rdx, [ rsi + 0x10 ]
mulx r12, rbx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r14, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r11
mulx r11, rdi, [ rsi + 0x0 ]
test al, al
adox rbx, r14
adox rcx, r12
mov rdx, [ rsi + 0x8 ]
mulx r14, r12, [ rax + 0x0 ]
adcx rbx, rdi
adcx r11, rcx
mov rdx, [ rsi + 0x0 ]
mulx rcx, rdi, [ rax + 0x8 ]
add r12, rdi
adcx rcx, r14
mov rdx, 0x1000003d10 
mulx rdi, r14, r15
add r12, r13
adc rcx, 0x0
xor r15, r15
adox r14, r12
adox rcx, rdi
mov r13, r14
shrd r13, rcx, 52
test al, al
adox rbx, r13
adox r11, r15
mulx r12, rdi, r10
adcx rdi, rbx
adcx r11, r12
mov rcx, rdi
shrd rcx, r11, 52
lea rcx, [ rcx + rbp ]
xor rbp, rbp
adox r8, rcx
adox r9, rbp
mov r15, 0xfffffffffffff 
mov r13, r8
and r13, r15
shrd r8, r9, 52
add r8, [ rsp - 0x48 ]
and rdi, r15
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x18 ], r13
mov [ rbx + 0x20 ], r8
and r14, r15
mov [ rbx + 0x10 ], rdi
mov [ rbx + 0x8 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1463
; seed 1889895295523790 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1062712 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=183, initial num_batches=31): 81052 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07626901738194355
; number reverted permutation / tried permutation: 69309 / 95077 =72.898%
; number reverted decision / tried decision: 55855 / 94922 =58.843%
; validated in 0.289s
