SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, [ rdx + 0x18 ]
lea r10, [rax + 8 * rax]
lea r11, [rax + 2 * r10]
mov rax, [ rdx + 0x8 ]
lea r10, [rax + 8 * rax]
lea rcx, [rax + 2 * r10]
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, r10, [ rax + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, r11
mov [ rsp - 0x78 ], rbp
mulx rbp, r11, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x20 ]
mov [ rsp - 0x60 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r15
mulx r15, rdi, [ rax + 0x10 ]
imul rdx, [ rax + 0x10 ], 0x13
mov [ rsp - 0x38 ], r15
mov r15, [ rax + 0x20 ]
mov [ rsp - 0x30 ], rdi
mov [ rsp - 0x28 ], rbx
lea rdi, [r15 + 8 * r15]
lea rbx, [r15 + 2 * rdi]
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], r9
mulx r9, r15, rcx
mov rdx, rdi
mulx rcx, rdi, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], r8
xor r8, r8
adox r15, rdi
adox rcx, r9
mulx rdi, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x10 ], r10
mulx r10, r8, rbx
adcx r9, r11
adcx rbp, rdi
xor rdx, rdx
adox r9, r8
adox r10, rbp
mov rdx, r14
mulx r11, r14, [ rsi + 0x10 ]
mov rdx, rbx
mulx rdi, rbx, [ rsi + 0x18 ]
adcx r12, rbx
adcx rdi, r13
test al, al
adox r15, r14
adox r11, rcx
mulx rcx, r13, [ rsi + 0x8 ]
adcx r15, r13
adcx rcx, r11
mov r8, rdx
mov rdx, [ rsi + 0x8 ]
mulx r14, rbp, [ rax + 0x0 ]
xor rdx, rdx
adox r9, rbp
adox r14, r10
mov rdx, [ rax + 0x8 ]
mulx rbx, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r13, r11, [ rax + 0x0 ]
adcx r15, r11
adcx r13, rcx
mov rdx, 0x33 
bzhi rcx, r15, rdx
adox r9, r10
adox rbx, r14
shrd r15, r13, 51
add r9, r15
adc rbx, 0x0
mov rdx, [ rsi + 0x20 ]
mulx r14, rbp, r8
mov rdx, [ rax + 0x8 ]
mulx r10, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r13, r11, [ rax + 0x0 ]
add rbp, r11
adcx r13, r14
add rbp, r8
adcx r10, r13
mov rdx, [ rax + 0x0 ]
mulx r14, r15, [ rsi + 0x10 ]
add r12, r15
adcx r14, rdi
mov rdx, [ rsi + 0x8 ]
mulx r8, rdi, [ rax + 0x8 ]
test al, al
adox r12, rdi
adox r8, r14
mov rdx, [ rax + 0x10 ]
mulx r13, r11, [ rsi + 0x0 ]
adcx r12, r11
adcx r13, r8
mov rdx, [ rsi + 0x8 ]
mulx r14, r15, [ rax + 0x10 ]
mov rdx, r9
shrd rdx, rbx, 51
add r12, rdx
adc r13, 0x0
xor rbx, rbx
adox rbp, r15
adox r14, r10
adcx rbp, [ rsp - 0x10 ]
adcx r14, [ rsp - 0x18 ]
mov r10, [ rsp - 0x40 ]
add r10, [ rsp - 0x20 ]
mov rdi, [ rsp - 0x48 ]
adcx rdi, [ rsp - 0x28 ]
mov r8, r12
shrd r8, r13, 51
test al, al
adox r10, [ rsp - 0x30 ]
adox rdi, [ rsp - 0x38 ]
adcx rbp, r8
adc r14, 0x0
mov r11, 0x7ffffffffffff 
mov r15, rbp
and r15, r11
mov rdx, [ rsi + 0x8 ]
mulx r8, r13, [ rax + 0x18 ]
adox r10, r13
adox r8, rdi
mov rdx, [ rsi + 0x0 ]
mulx r13, rdi, [ rax + 0x20 ]
shrd rbp, r14, 51
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], r15
add r10, rdi
adcx r13, r8
xor r14, r14
adox r10, rbp
adox r13, r14
mov rbx, r10
and rbx, r11
shrd r10, r13, 51
imul r15, r10, 0x13
and r9, r11
lea rcx, [ rcx + r15 ]
mov r8, rcx
shr r8, 51
lea r8, [ r8 + r9 ]
mov [ rdx + 0x20 ], rbx
and rcx, r11
mov rdi, r8
shr rdi, 51
and r8, r11
mov [ rdx + 0x8 ], r8
and r12, r11
lea rdi, [ rdi + r12 ]
mov [ rdx + 0x10 ], rdi
mov [ rdx + 0x0 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.2098
; seed 1797665452619036 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1137648 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=158, initial num_batches=31): 72328 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06357678297680829
; number reverted permutation / tried permutation: 78231 / 95269 =82.116%
; number reverted decision / tried decision: 63896 / 94730 =67.451%
; validated in 0.33s
