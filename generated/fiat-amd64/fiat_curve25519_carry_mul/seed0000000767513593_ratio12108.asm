SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, [ rdx + 0x20 ]
lea r10, [rax + 8 * rax]
lea r11, [rax + 2 * r10]
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx rcx, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx r9, r8, r11
imul rdx, [ rax + 0x10 ], 0x13
mov [ rsp - 0x80 ], rbx
mov rbx, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
imul rdx, [ rax + 0x8 ], 0x13
mov [ rsp - 0x68 ], r13
xor r13, r13
adox r8, r10
adox rcx, r9
imul r10, [ rax + 0x18 ], 0x13
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbx
mov rdx, rbx
mov [ rsp - 0x58 ], r15
mulx r15, rbx, [ rsi + 0x20 ]
mov rdx, r9
mov [ rsp - 0x50 ], rdi
mulx rdi, r9, [ rsi + 0x20 ]
mov rdx, r10
mov [ rsp - 0x48 ], r12
mulx r12, r10, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], rbp
xor rbp, rbp
adox r9, r13
adox r14, rdi
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, rdi, r11
adcx r9, r10
adcx r12, r14
xor rdx, rdx
adox r9, rdi
adox rbp, r12
mov rdx, [ rsi + 0x10 ]
mulx r14, r10, r11
mov rdx, r13
mulx rdi, r13, [ rsi + 0x18 ]
adcx rbx, r13
adcx rdi, r15
test al, al
adox rbx, r10
adox r14, rdi
mov r15, rdx
mov rdx, [ rax + 0x8 ]
mulx r10, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx rdi, r13, [ rsi + 0x0 ]
adcx r9, r13
adcx rdi, rbp
add r8, r12
adcx r10, rcx
mov rdx, [ rsi + 0x8 ]
mulx rbp, rcx, [ rax + 0x0 ]
xor rdx, rdx
adox rbx, rcx
adox rbp, r14
mov rdx, [ rax + 0x8 ]
mulx r12, r14, [ rsi + 0x0 ]
adcx rbx, r14
adcx r12, rbp
mov rdx, r9
shrd rdx, rdi, 51
test al, al
adox rbx, rdx
mov r13, 0x0 
adox r12, r13
mov rdi, 0x7ffffffffffff 
and r9, rdi
mov rcx, rbx
shrd rcx, r12, 51
mov rdx, r15
mulx rbp, r15, [ rsi + 0x20 ]
mov rdx, r11
mulx r14, r11, [ rsi + 0x18 ]
test al, al
adox r15, r11
adox r14, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbp, r12, [ rax + 0x0 ]
adcx r15, r12
adcx rbp, r14
mov rdx, [ rax + 0x8 ]
mulx r14, r11, [ rsi + 0x8 ]
mov rdx, [ rax + 0x10 ]
mulx r13, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], r9
mulx r9, rdi, [ rax + 0x18 ]
test al, al
adox r15, r11
adox r14, rbp
mov rdx, [ rsi + 0x8 ]
mulx r11, rbp, [ rax + 0x10 ]
adcx r15, r12
adcx r13, r14
mov rdx, [ rax + 0x0 ]
mulx r14, r12, [ rsi + 0x20 ]
test al, al
adox r15, rcx
mov rdx, 0x0 
adox r13, rdx
adcx r8, rbp
adcx r11, r10
xor r10, r10
adox r8, rdi
adox r9, r11
mov rdx, [ rsi + 0x18 ]
mulx rdi, rcx, [ rax + 0x8 ]
adcx r12, rcx
adcx rdi, r14
mov rdx, r15
shrd rdx, r13, 51
xor rbp, rbp
adox r8, rdx
adox r9, rbp
mov rdx, [ rax + 0x10 ]
mulx r14, r10, [ rsi + 0x10 ]
mov rdx, r8
shrd rdx, r9, 51
xor r13, r13
adox r12, r10
adox r14, rdi
mov rbp, rdx
mov rdx, [ rax + 0x18 ]
mulx rcx, r11, [ rsi + 0x8 ]
adcx r12, r11
adcx rcx, r14
xor rdx, rdx
adox r12, [ rsp - 0x40 ]
adox rcx, [ rsp - 0x48 ]
adcx r12, rbp
adc rcx, 0x0
mov r13, r12
shrd r13, rcx, 51
imul rdi, r13, 0x13
mov r9, 0x7ffffffffffff 
and r12, r9
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x20 ], r12
add rdi, [ rsp - 0x38 ]
mov rbp, rdi
shr rbp, 51
and rbx, r9
lea rbp, [ rbp + rbx ]
mov r14, rbp
and r14, r9
mov [ r10 + 0x8 ], r14
and r15, r9
and r8, r9
mov [ r10 + 0x18 ], r8
shr rbp, 51
lea rbp, [ rbp + r15 ]
and rdi, r9
mov [ r10 + 0x10 ], rbp
mov [ r10 + 0x0 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2108
; seed 1669408099015929 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 957905 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=196, initial num_batches=31): 77642 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08105396672947734
; number reverted permutation / tried permutation: 70297 / 94907 =74.069%
; number reverted decision / tried decision: 60659 / 95092 =63.790%
; validated in 0.299s
