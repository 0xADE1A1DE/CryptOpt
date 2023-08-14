SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 632
imul rax, [ rdx + 0x28 ], 0x2
mov r10, [ rdx + 0x18 ]
lea r11, [r10 + r10]
mov r10, [ rdx + 0x30 ]
lea rcx, [r10 + r10]
mov r10, rdx
mov rdx, [ rdx + 0x0 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ r10 + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, 0x1 
mov [ rsp - 0x70 ], r12
shlx r12, [ r10 + 0x8 ], rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ r10 + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rax
mov rdx, [ r10 + 0x18 ]
mov [ rsp - 0x48 ], r9
mov [ rsp - 0x40 ], r8
mulx r8, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], r9
mulx r9, r8, [ r10 + 0x0 ]
mov rdx, [ r10 + 0x30 ]
mov [ rsp - 0x28 ], r9
mov [ rsp - 0x20 ], r8
mulx r8, r9, [ rsi + 0x0 ]
mov rdx, [ r10 + 0x10 ]
mov [ rsp - 0x18 ], r8
mov [ rsp - 0x10 ], r9
mulx r9, r8, [ rsi + 0x30 ]
mov rdx, [ r10 + 0x40 ]
mov [ rsp - 0x8 ], r9
mov r9, rdx
shl r9, 0x1
mov rdx, [ r10 + 0x20 ]
mov [ rsp + 0x0 ], r8
mov [ rsp + 0x8 ], r14
mulx r14, r8, [ rsi + 0x18 ]
mov rdx, 0x1 
mov [ rsp + 0x10 ], r14
shlx r14, [ r10 + 0x20 ], rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], r8
mov [ rsp + 0x20 ], r13
mulx r13, r8, rcx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x28 ], rbp
mov [ rsp + 0x30 ], rbx
mulx rbx, rbp, r14
mov rdx, r9
mov [ rsp + 0x38 ], r13
mulx r13, r9, [ rsi + 0x18 ]
mov [ rsp + 0x40 ], r13
mov r13, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x48 ], r9
mov [ rsp + 0x50 ], r8
mulx r8, r9, [ r10 + 0x0 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x58 ], r8
mov [ rsp + 0x60 ], r9
mulx r9, r8, rax
xor rdx, rdx
adox rbp, r8
adox r9, rbx
mov rdx, r14
mulx rbx, r14, [ rsi + 0x38 ]
mov r8, [ r10 + 0x38 ]
mov [ rsp + 0x68 ], rbx
mov rbx, r8
shl rbx, 0x1
mov r8, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x70 ], r14
mov [ rsp + 0x78 ], rdi
mulx rdi, r14, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x80 ], r15
mov [ rsp + 0x88 ], r11
mulx r11, r15, [ r10 + 0x40 ]
mov rdx, rbx
mov [ rsp + 0x90 ], r11
mulx r11, rbx, [ rsi + 0x20 ]
mov [ rsp + 0x98 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xa0 ], r11
mov [ rsp + 0xa8 ], rbx
mulx rbx, r11, rcx
mov rdx, r15
mov [ rsp + 0xb0 ], r12
mulx r12, r15, [ rsi + 0x18 ]
test al, al
adox rbp, r11
adox rbx, r9
mov r9, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xb8 ], rbx
mulx rbx, r11, r13
mov rdx, [ r10 + 0x10 ]
mov [ rsp + 0xc0 ], rbp
mov rbp, rdx
shl rbp, 0x1
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0xc8 ], r12
mov [ rsp + 0xd0 ], r15
mulx r15, r12, rbp
test al, al
adox r14, r11
adox rbx, rdi
mov rdx, [ rsi + 0x40 ]
mulx r11, rdi, r13
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xd8 ], r11
mov [ rsp + 0xe0 ], rdi
mulx rdi, r11, rbp
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0xe8 ], rbx
mulx rbx, rbp, [ rsp + 0xb0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xf0 ], r14
mov [ rsp + 0xf8 ], r15
mulx r15, r14, r8
adcx rbp, r11
adcx rdi, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r11, [ r10 + 0x18 ]
mov rdx, [ rsp + 0x88 ]
mov [ rsp + 0x100 ], rbx
mov [ rsp + 0x108 ], r11
mulx r11, rbx, [ rsi + 0x38 ]
mov [ rsp + 0x110 ], rdi
xor rdi, rdi
adox r12, rbx
adox r11, [ rsp + 0xf8 ]
adcx r12, r14
adcx r15, r11
mov r14, rdx
mov rdx, [ r10 + 0x18 ]
mulx r11, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x118 ], r11
mulx r11, rdi, r8
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x120 ], rbx
mulx rbx, r8, r14
xor rdx, rdx
adox rbp, r8
adox rbx, [ rsp + 0x110 ]
adcx rbp, rdi
adcx r11, rbx
mov rdx, [ rsi + 0x18 ]
mulx r8, rdi, rcx
test al, al
adox rbp, [ rsp + 0x80 ]
adox r11, [ rsp + 0x78 ]
mov rdx, rax
mulx rbx, rax, [ rsi + 0x28 ]
adcx r12, rax
adcx rbx, r15
test al, al
adox r12, [ rsp + 0x50 ]
adox rbx, [ rsp + 0x38 ]
adcx r12, [ rsp + 0xd0 ]
adcx rbx, [ rsp + 0xc8 ]
add rbp, rdi
adcx r8, r11
xchg rdx, r14
mulx rdi, r15, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x10 ]
mulx rax, r11, r13
add r15, [ rsp + 0x70 ]
adcx rdi, [ rsp + 0x68 ]
mov rdx, r9
mov [ rsp + 0x128 ], rdi
mulx rdi, r9, [ rsi + 0x28 ]
mov [ rsp + 0x130 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x138 ], rdi
mov [ rsp + 0x140 ], r9
mulx r9, rdi, r13
xor rdx, rdx
adox r12, r11
adox rax, rbx
mov rdx, [ rsi + 0x10 ]
mulx r11, rbx, r15
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x148 ], rax
mov [ rsp + 0x150 ], r12
mulx r12, rax, r13
adcx rbp, rbx
adcx r11, r8
xor rdx, rdx
adox rbp, rdi
adox r9, r11
mov r8, [ rsp + 0x140 ]
mov rdi, r8
adcx rdi, [ rsp + 0xc0 ]
mov rbx, [ rsp + 0x138 ]
adcx rbx, [ rsp + 0xb8 ]
mov rdx, [ rsi + 0x30 ]
mulx r11, r8, r14
add rdi, rax
adcx r12, rbx
xor rdx, rdx
adox rdi, [ rsp + 0x30 ]
adox r12, [ rsp + 0x28 ]
mov rdx, [ r10 + 0x0 ]
mulx rbx, rax, [ rsi + 0x0 ]
adcx rbp, rax
adcx rbx, r9
mov rdx, [ rsi + 0x28 ]
mulx rax, r9, rcx
mov rdx, rbp
shrd rdx, rbx, 58
shr rbx, 58
mov [ rsp + 0x158 ], r12
mov r12, r8
add r12, [ rsp + 0x130 ]
adcx r11, [ rsp + 0x128 ]
test al, al
adox r12, r9
adox rax, r11
adcx r12, [ rsp + 0xa8 ]
adcx rax, [ rsp + 0xa0 ]
mov r8, 0x3ffffffffffffff 
and rbp, r8
mov r9, rdx
mov rdx, [ r10 + 0x0 ]
mulx r8, r11, [ rsi + 0x8 ]
mov rdx, r11
adox rdx, [ rsp + 0x150 ]
adox r8, [ rsp + 0x148 ]
adcx rdx, [ rsp + 0x20 ]
adcx r8, [ rsp + 0x8 ]
mov r11, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x160 ], rbp
mov [ rsp + 0x168 ], rdi
mulx rdi, rbp, rcx
test al, al
adox r12, [ rsp + 0x48 ]
adox rax, [ rsp + 0x40 ]
adcx r12, [ rsp - 0x40 ]
adcx rax, [ rsp - 0x48 ]
mov rdx, [ r10 + 0x8 ]
mov [ rsp + 0x170 ], rdi
mov [ rsp + 0x178 ], rbp
mulx rbp, rdi, [ rsi + 0x8 ]
xor rdx, rdx
adox r12, rdi
adox rbp, rax
adcx r11, r9
adcx rbx, r8
mov rdx, [ r10 + 0x10 ]
mulx r8, r9, [ rsi + 0x0 ]
mov rdx, 0x3ffffffffffffff 
mov rax, r11
and rax, rdx
shrd r11, rbx, 58
shr rbx, 58
xor rdi, rdi
adox r12, r9
adox r8, rbp
mov rdx, r13
mulx rbp, r13, [ rsi + 0x28 ]
mulx rdi, r9, [ rsi + 0x30 ]
adcx r12, r11
adcx rbx, r8
mov rdx, r14
mulx r11, r14, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x180 ], rax
mulx rax, r8, r15
xor rdx, rdx
adox r14, [ rsp + 0x178 ]
adox r11, [ rsp + 0x170 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x188 ], rdi
mov [ rsp + 0x190 ], r9
mulx r9, rdi, [ r10 + 0x0 ]
adcx r14, r8
adcx rax, r11
test al, al
adox r14, r13
adox rbp, rax
mov rdx, [ r10 + 0x10 ]
mulx r8, r13, [ rsi + 0x8 ]
adcx r14, rdi
adcx r9, rbp
mov rdx, [ r10 + 0x18 ]
mulx rdi, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rbp, rax, [ r10 + 0x8 ]
mov rdx, rax
mov [ rsp + 0x198 ], rbx
xor rbx, rbx
adox rdx, [ rsp + 0x168 ]
adox rbp, [ rsp + 0x158 ]
adcx rdx, r13
adcx r8, rbp
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbp, rax, [ r10 + 0x8 ]
test al, al
adox r14, rax
adox rbp, r9
mov rdx, [ r10 + 0x18 ]
mulx rax, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x1a0 ], r12
mulx r12, rbx, r15
adcx r13, r11
adcx rdi, r8
mov rdx, [ rsi + 0x10 ]
mulx r11, r15, [ r10 + 0x10 ]
add r14, r15
adcx r11, rbp
xor rdx, rdx
adox r14, r9
adox rax, r11
mov rdx, [ r10 + 0x20 ]
mulx rbp, r8, [ rsi + 0x0 ]
mov rdx, [ rsp + 0x198 ]
mov r9, [ rsp + 0x1a0 ]
shrd r9, rdx, 58
shr rdx, 58
xor r15, r15
adox r14, r8
adox rbp, rax
mov r11, rdx
mov rdx, [ rsi + 0x40 ]
mulx r8, rax, rcx
adcx rax, rbx
adcx r12, r8
mov rdx, [ rsi + 0x38 ]
mulx rbx, rcx, [ r10 + 0x8 ]
mov rdx, [ r10 + 0x0 ]
mulx r15, r8, [ rsi + 0x40 ]
xor rdx, rdx
adox r8, rcx
adox rbx, r15
mov rdx, [ rsi + 0x28 ]
mulx r15, rcx, [ r10 + 0x18 ]
adcx r13, r9
adcx r11, rdi
mov rdx, [ rsi + 0x18 ]
mulx r9, rdi, [ r10 + 0x28 ]
xor rdx, rdx
adox r8, [ rsp + 0x0 ]
adox rbx, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x1a8 ], r9
mov [ rsp + 0x1b0 ], rdi
mulx rdi, r9, [ r10 + 0x8 ]
adcx r8, rcx
adcx r15, rbx
mov rdx, r13
shrd rdx, r11, 58
shr r11, 58
mov rcx, rdx
mov rdx, [ r10 + 0x0 ]
mov [ rsp + 0x1b8 ], r15
mulx r15, rbx, [ rsi + 0x28 ]
add r14, rcx
adcx r11, rbp
test al, al
adox rax, [ rsp + 0x190 ]
adox r12, [ rsp + 0x188 ]
mov rdx, [ r10 + 0x8 ]
mulx rcx, rbp, [ rsi + 0x28 ]
adcx rax, rbx
adcx r15, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, rbx, [ r10 + 0x10 ]
xor rdx, rdx
adox rax, r9
adox rdi, r15
mov rdx, [ rsi + 0x20 ]
mulx r15, r9, [ r10 + 0x20 ]
adcx rax, rbx
adcx r12, rdi
mov rdx, [ r10 + 0x8 ]
mulx rdi, rbx, [ rsi + 0x30 ]
mov rdx, [ rsp + 0x60 ]
mov [ rsp + 0x1c0 ], rdi
mov rdi, rdx
test al, al
adox rdi, [ rsp + 0xf0 ]
mov [ rsp + 0x1c8 ], rbx
mov rbx, [ rsp + 0x58 ]
adox rbx, [ rsp + 0xe8 ]
adcx r8, r9
adcx r15, [ rsp + 0x1b8 ]
add rdi, rbp
adcx rcx, rbx
test al, al
adox r8, [ rsp + 0x1b0 ]
adox r15, [ rsp + 0x1a8 ]
mov rdx, [ r10 + 0x10 ]
mulx r9, rbp, [ rsi + 0x28 ]
mov rdx, 0x3ffffffffffffff 
and r13, rdx
mov rbx, r14
and rbx, rdx
adox rax, [ rsp + 0x108 ]
adox r12, [ rsp + 0x100 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x1d0 ], rbx
mov [ rsp + 0x1d8 ], r15
mulx r15, rbx, [ r10 + 0x10 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], r13
mov r13, [ rsp + 0xe0 ]
adcx r13, [ rsp - 0x20 ]
mov rdx, [ rsp + 0xd8 ]
adcx rdx, [ rsp - 0x28 ]
test al, al
adox rdi, rbx
adox r15, rcx
adcx rdi, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x38 ]
test al, al
adox r13, [ rsp + 0x1c8 ]
adox rdx, [ rsp + 0x1c0 ]
adcx r13, rbp
adcx r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbp, rcx, [ r10 + 0x20 ]
test al, al
adox rdi, rcx
adox rbp, r15
mov rdx, [ rsi + 0x0 ]
mulx r15, rbx, [ r10 + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x1e0 ], rbp
mulx rbp, rcx, [ r10 + 0x20 ]
adcx rax, rcx
adcx rbp, r12
mov rdx, [ r10 + 0x30 ]
mulx rcx, r12, [ rsi + 0x10 ]
add rax, rbx
adcx r15, rbp
xor rdx, rdx
adox r13, [ rsp + 0x120 ]
adox r9, [ rsp + 0x118 ]
adcx r13, [ rsp + 0x18 ]
adcx r9, [ rsp + 0x10 ]
mov rdx, [ r10 + 0x30 ]
mulx rbp, rbx, [ rsi + 0x8 ]
shrd r14, r11, 58
shr r11, 58
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x1e8 ], rdi
mov [ rsp + 0x1f0 ], rbp
mulx rbp, rdi, [ r10 + 0x28 ]
xor rdx, rdx
adox r13, rdi
adox rbp, r9
mov rdx, [ r10 + 0x38 ]
mulx rdi, r9, [ rsi + 0x8 ]
adcx rax, r14
adcx r11, r15
mov rdx, rax
shrd rdx, r11, 58
shr r11, 58
xor r15, r15
adox r8, r12
adox rcx, [ rsp + 0x1d8 ]
mov r12, rdx
mov rdx, [ r10 + 0x28 ]
mulx r15, r14, [ rsi + 0x8 ]
adcx r8, r9
adcx rdi, rcx
mov rdx, [ r10 + 0x38 ]
mulx rcx, r9, [ rsi + 0x0 ]
xor rdx, rdx
adox r13, rbx
adox rbp, [ rsp + 0x1f0 ]
mov rbx, r14
adcx rbx, [ rsp + 0x1e8 ]
adcx r15, [ rsp + 0x1e0 ]
test al, al
adox rbx, [ rsp - 0x10 ]
adox r15, [ rsp - 0x18 ]
adcx rbx, r12
adcx r11, r15
xor r12, r12
adox r13, r9
adox rcx, rbp
mov rdx, rbx
shrd rdx, r11, 58
shr r11, 58
test al, al
adox r13, rdx
adox r11, rcx
mov r14, r13
shrd r14, r11, 58
shr r11, 58
xor r9, r9
adox r8, [ rsp + 0x98 ]
adox rdi, [ rsp + 0x90 ]
mov r12, 0x3ffffffffffffff 
and r13, r12
and rax, r12
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x38 ], r13
mov [ rbp + 0x28 ], rax
adox r8, r14
adox r11, rdi
mov r15, 0x39 
bzhi rcx, r8, r15
shrd r8, r11, 57
shr r11, 57
add r8, [ rsp + 0x160 ]
adc r11, 0x0
mov rdx, r8
shrd rdx, r11, 58
mov r14, [ rsp + 0x1a0 ]
and r14, r12
add rdx, [ rsp + 0x180 ]
mov rdi, rdx
and rdi, r12
mov [ rbp + 0x8 ], rdi
and rbx, r12
and r8, r12
mov r13, [ rsp + 0x1d0 ]
mov [ rbp + 0x20 ], r13
shr rdx, 58
lea rdx, [ rdx + r14 ]
mov [ rbp + 0x10 ], rdx
mov [ rbp + 0x0 ], r8
mov [ rbp + 0x30 ], rbx
mov [ rbp + 0x40 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 632
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.2294
; seed 2680857398184373 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8729508 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=51, initial num_batches=31): 185423 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02124094507960815
; number reverted permutation / tried permutation: 69909 / 94962 =73.618%
; number reverted decision / tried decision: 58492 / 95037 =61.547%
; validated in 5.477s
