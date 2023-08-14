SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
imul rax, [ rdx + 0x18 ], 0x13
imul r10, [ rdx + 0x20 ], 0x13
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, r10
mov rdx, [ r11 + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov rdx, [ r11 + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
imul rdx, [ r11 + 0x10 ], 0x13
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, rax
mov rdx, [ r11 + 0x8 ]
mov [ rsp - 0x40 ], r9
mov [ rsp - 0x38 ], r12
mulx r12, r9, [ rsi + 0x0 ]
mov rdx, [ r11 + 0x8 ]
mov [ rsp - 0x30 ], rbp
mov [ rsp - 0x28 ], r12
lea rbp, [rdx + 8 * rdx]
lea r12, [rdx + 2 * rbp]
xor rdx, rdx
adox rdi, rcx
adox r8, rbx
mov rdx, r12
mulx r12, rbp, [ rsi + 0x20 ]
adcx rbp, r13
adcx r14, r12
mov rdx, rax
mulx rcx, rax, [ rsi + 0x10 ]
xor r13, r13
adox rbp, rax
adox rcx, r14
mov rbx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r14, r12, r10
mov rdx, r15
mulx rax, r15, [ rsi + 0x20 ]
adcx rbp, r12
adcx r14, rcx
mov rdx, [ rsi + 0x18 ]
mulx r12, rcx, rbx
xor rdx, rdx
adox r15, rcx
adox r12, rax
mov rdx, [ rsi + 0x10 ]
mulx rbx, r13, r10
adcx r15, r13
adcx rbx, r12
mov rdx, [ rsi + 0x0 ]
mulx rcx, rax, [ r11 + 0x0 ]
xor rdx, rdx
adox rbp, rax
adox rcx, r14
mov r14, rbp
shrd r14, rcx, 51
mov rdx, [ r11 + 0x0 ]
mulx r13, r12, [ rsi + 0x8 ]
xor rdx, rdx
adox r15, r12
adox r13, rbx
mov rdx, [ r11 + 0x0 ]
mulx rax, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, rcx, [ r11 + 0x8 ]
adcx rdi, rbx
adcx rax, r8
xor rdx, rdx
adox r15, r9
adox r13, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, r9, [ r11 + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], rax
mulx rax, rbx, [ r11 + 0x10 ]
mov rdx, r10
mov [ rsp - 0x18 ], rax
mulx rax, r10, [ rsi + 0x20 ]
adcx r15, r14
adc r13, 0x0
mov rdx, r15
shrd rdx, r13, 51
xor r14, r14
adox r10, r9
adox r8, rax
mov r9, 0x7ffffffffffff 
and rbp, r9
and r15, r9
adox rdi, rcx
adox r12, [ rsp - 0x20 ]
adcx rdi, rbx
adcx r12, [ rsp - 0x18 ]
test al, al
adox rdi, rdx
adox r12, r14
mov rcx, rdi
shrd rcx, r12, 51
mov rdx, [ r11 + 0x8 ]
mulx rax, rbx, [ rsi + 0x10 ]
mov rdx, [ r11 + 0x10 ]
mulx r12, r13, [ rsi + 0x8 ]
xor rdx, rdx
adox r10, rbx
adox rax, r8
mov rdx, [ r11 + 0x18 ]
mulx r8, r14, [ rsi + 0x0 ]
adcx r10, r13
adcx r12, rax
mov rdx, [ r11 + 0x0 ]
mulx r13, rbx, [ rsi + 0x20 ]
xor rdx, rdx
adox r10, r14
adox r8, r12
mov rdx, [ r11 + 0x18 ]
mulx r14, rax, [ rsi + 0x8 ]
adcx rbx, [ rsp - 0x30 ]
adcx r13, [ rsp - 0x38 ]
xor rdx, rdx
adox rbx, [ rsp - 0x40 ]
adox r13, [ rsp - 0x48 ]
adcx rbx, rax
adcx r14, r13
xor r12, r12
adox r10, rcx
adox r8, r12
mov rdx, [ rsi + 0x0 ]
mulx rax, rcx, [ r11 + 0x20 ]
mov rdx, r10
shrd rdx, r8, 51
xor r13, r13
adox rbx, rcx
adox rax, r14
adcx rbx, rdx
adc rax, 0x0
mov r12, rbx
and r12, r9
shrd rbx, rax, 51
imul r14, rbx, 0x13
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x20 ], r12
lea rbp, [ rbp + r14 ]
mov rcx, rbp
shr rcx, 51
lea rcx, [ rcx + r15 ]
mov r15, rcx
shr r15, 51
and rcx, r9
mov [ r8 + 0x8 ], rcx
and r10, r9
and rdi, r9
lea r15, [ r15 + rdi ]
and rbp, r9
mov [ r8 + 0x10 ], r15
mov [ r8 + 0x18 ], r10
mov [ r8 + 0x0 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2135
; seed 3525237185565440 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 965477 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=196, initial num_batches=31): 78034 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08082429721267312
; number reverted permutation / tried permutation: 69252 / 94977 =72.914%
; number reverted decision / tried decision: 59570 / 95022 =62.691%
; validated in 0.288s
