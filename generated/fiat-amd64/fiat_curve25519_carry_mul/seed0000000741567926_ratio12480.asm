SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x10 ]
imul rdx, [ rax + 0x10 ], 0x13
mov rcx, rdx
mov rdx, [ rax + 0x0 ]
mulx r9, r8, [ rsi + 0x20 ]
imul rdx, [ rax + 0x8 ], 0x13
mov [ rsp - 0x80 ], rbx
mov rbx, [ rax + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
lea rbp, [rbx + 8 * rbx]
lea r12, [rbx + 2 * rbp]
mov rbx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mulx r13, rbp, [ rax + 0x8 ]
mov rdx, r12
mov [ rsp - 0x60 ], r14
mulx r14, r12, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r9
mov r9, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x40 ], r8
mov [ rsp - 0x38 ], r13
mulx r13, r8, [ rax + 0x18 ]
imul rdx, [ rax + 0x18 ], 0x13
mov [ rsp - 0x30 ], r13
mov [ rsp - 0x28 ], r8
mulx r8, r13, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], r10
mulx r10, r11, rbx
mov rdx, rcx
mulx rbx, rcx, [ rsi + 0x18 ]
test al, al
adox r11, rcx
adox rbx, r10
adcx r11, r13
adcx r8, rbx
test al, al
adox r11, r12
adox r14, r8
mov r12, rdx
mov rdx, [ rax + 0x0 ]
mulx r10, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx rbx, rcx, r12
adcx r11, r13
adcx r10, r14
mov rdx, rbp
mulx r12, rbp, [ rsi + 0x18 ]
xor r8, r8
adox rcx, rbp
adox r12, rbx
mov r14, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r13, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rbp, [ rsi + 0x8 ]
adcx rcx, r15
adcx rdi, r12
mov rdx, r11
shrd rdx, r10, 51
xor r15, r15
adox rcx, rbp
adox r8, rdi
adcx rcx, r13
adcx rbx, r8
xor r10, r10
adox rcx, rdx
adox rbx, r10
mov rdx, [ rsi + 0x20 ]
mulx r12, r15, r14
mov rdx, 0x33 
bzhi r14, r11, rdx
mov r11, rcx
shrd r11, rbx, 51
mov rdx, [ rsi + 0x18 ]
mulx rbp, r13, r9
mov rdx, [ rax + 0x8 ]
mulx r8, rdi, [ rsi + 0x8 ]
xor rdx, rdx
adox r15, r13
adox rbp, r12
adcx r15, [ rsp - 0x10 ]
adcx rbp, [ rsp - 0x18 ]
xor r10, r10
adox r15, rdi
adox r8, rbp
mov rdx, [ rsi + 0x20 ]
mulx r12, rbx, r9
mov rdx, [ rsi + 0x18 ]
mulx r13, r9, [ rax + 0x0 ]
adcx rbx, r9
adcx r13, r12
mov rdx, [ rsi + 0x0 ]
mulx rbp, rdi, [ rax + 0x10 ]
add r15, rdi
adcx rbp, r8
add r15, r11
adc rbp, 0x0
mov rdx, [ rsi + 0x10 ]
mulx r8, r11, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mulx r9, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mulx r10, rdi, [ rax + 0x10 ]
xor rdx, rdx
adox rbx, [ rsp - 0x20 ]
adox r13, [ rsp - 0x38 ]
adcx rbx, rdi
adcx r10, r13
mov rdx, [ rax + 0x8 ]
mulx r13, rdi, [ rsi + 0x18 ]
mov rdx, rdi
add rdx, [ rsp - 0x40 ]
adcx r13, [ rsp - 0x48 ]
xor rdi, rdi
adox rdx, r11
adox r8, r13
adcx rbx, [ rsp - 0x28 ]
adcx r10, [ rsp - 0x30 ]
mov r11, r15
shrd r11, rbp, 51
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mulx rdi, r13, [ rax + 0x20 ]
xor rdx, rdx
adox rbx, r11
adox r10, rdx
mov r11, rbx
shrd r11, r10, 51
add rbp, r12
adcx r9, r8
mov r12, 0x7ffffffffffff 
and rbx, r12
adox rbp, r13
adox rdi, r9
adcx rbp, r11
adc rdi, 0x0
mov r8, rbp
and r8, r12
and rcx, r12
shrd rbp, rdi, 51
imul r13, rbp, 0x13
lea r14, [ r14 + r13 ]
mov r10, r14
shr r10, 51
lea r10, [ r10 + rcx ]
mov r11, r10
and r11, r12
and r15, r12
shr r10, 51
lea r10, [ r10 + r15 ]
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], r10
mov [ r9 + 0x20 ], r8
mov [ r9 + 0x8 ], r11
and r14, r12
mov [ r9 + 0x18 ], rbx
mov [ r9 + 0x0 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.2480
; seed 4500203187226636 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1226755 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=160, initial num_batches=31): 84878 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06918903937624057
; number reverted permutation / tried permutation: 70103 / 95094 =73.720%
; number reverted decision / tried decision: 59710 / 94905 =62.916%
; validated in 0.472s
