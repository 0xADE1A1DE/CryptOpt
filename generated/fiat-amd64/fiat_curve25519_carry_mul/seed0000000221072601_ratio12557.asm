SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, [ rdx + 0x10 ]
lea r10, [rax + 8 * rax]
lea r11, [rax + 2 * r10]
mov rax, [ rdx + 0x20 ]
lea r10, [rax + 8 * rax]
lea rcx, [rax + 2 * r10]
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, r10, rcx
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x80 ], rbx
lea r9, [rdx + 8 * rdx]
lea rbx, [rdx + 2 * r9]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mulx rbp, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
lea rdi, [rdx + 8 * rdx]
lea rbp, [rdx + 2 * rdi]
mov rdx, rbp
mulx rbp, rdi, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], r9
mov [ rsp - 0x38 ], r13
mulx r13, r9, rbx
test al, al
adox r9, r10
adox r8, r13
mov rdx, [ rsi + 0x18 ]
mulx r13, r10, r11
adcx rdi, r10
adcx r13, rbp
mov rdx, rbx
mulx rbp, rbx, [ rsi + 0x10 ]
mov rdx, rcx
mulx r10, rcx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r8
xor r8, r8
adox rdi, rbx
adox rbp, r13
mov r13, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, rbx, r11
adcx rdi, rcx
adcx r10, rbp
mov rdx, r13
mulx r11, r13, [ rsi + 0x10 ]
xor rcx, rcx
adox rbx, r14
adox r15, r8
adcx rbx, r13
adcx r11, r15
mov r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx r8, rbp, [ rax + 0x0 ]
xor rdx, rdx
adox rbx, rbp
adox r8, r11
mov rdx, [ rax + 0x0 ]
mulx r13, rcx, [ rsi + 0x0 ]
adcx rdi, rcx
adcx r13, r10
test al, al
adox rbx, r12
adox r8, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x10 ]
mulx r10, r12, [ rax + 0x0 ]
adcx r9, r12
adcx r10, [ rsp - 0x30 ]
mov rdx, [ rax + 0x8 ]
mulx r11, r15, [ rsi + 0x8 ]
xor rdx, rdx
adox r9, r15
adox r11, r10
mov rdx, [ rax + 0x10 ]
mulx rcx, rbp, [ rsi + 0x0 ]
mov rdx, rdi
shrd rdx, r13, 51
xor r13, r13
adox rbx, rdx
adox r8, r13
mov rdx, [ rax + 0x0 ]
mulx r10, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx r13, r15, r14
mov rdx, rbx
shrd rdx, r8, 51
test al, al
adox r9, rbp
adox rcx, r11
mov r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r11, [ rax + 0x10 ]
adcx r9, r14
adc rcx, 0x0
add r15, r12
adcx r10, r13
mov rdx, [ rax + 0x8 ]
mulx r12, r8, [ rsi + 0x10 ]
test al, al
adox r15, r8
adox r12, r10
mov rdx, [ rax + 0x18 ]
mulx r14, r13, [ rsi + 0x0 ]
adcx r15, r11
adcx rbp, r12
xor rdx, rdx
adox r15, r13
adox r14, rbp
mov r11, r9
shrd r11, rcx, 51
xor rcx, rcx
adox r15, r11
adox r14, rcx
mov rdx, 0x7ffffffffffff 
mov r10, r15
and r10, rdx
and r9, rdx
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x18 ], r10
mov rdx, [ rsi + 0x10 ]
mulx r13, r12, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r11, rbp, [ rax + 0x8 ]
shrd r15, r14, 51
mov rdx, rbp
add rdx, [ rsp - 0x40 ]
adcx r11, [ rsp - 0x48 ]
xor r14, r14
adox rdx, r12
adox r13, r11
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r12, r10, [ rax + 0x18 ]
adcx rcx, r10
adcx r12, r13
mov rdx, [ rsi + 0x0 ]
mulx r11, rbp, [ rax + 0x20 ]
test al, al
adox rcx, rbp
adox r11, r12
adcx rcx, r15
adc r11, 0x0
mov rdx, rcx
shrd rdx, r11, 51
mov r15, 0x7ffffffffffff 
and rdi, r15
imul r13, rdx, 0x13
lea rdi, [ rdi + r13 ]
mov r10, rdi
and r10, r15
and rbx, r15
shr rdi, 51
lea rdi, [ rdi + rbx ]
mov r12, rdi
and r12, r15
shr rdi, 51
lea rdi, [ rdi + r9 ]
mov [ r8 + 0x8 ], r12
and rcx, r15
mov [ r8 + 0x20 ], rcx
mov [ r8 + 0x10 ], rdi
mov [ r8 + 0x0 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.2557
; seed 1726755782745113 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1179287 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=158, initial num_batches=31): 71811 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06089357382893223
; number reverted permutation / tried permutation: 78126 / 95269 =82.006%
; number reverted decision / tried decision: 63685 / 94730 =67.228%
; validated in 0.308s
