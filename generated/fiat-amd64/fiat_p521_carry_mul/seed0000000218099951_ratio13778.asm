SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 488
mov rax, [ rdx + 0x40 ]
lea r10, [rax + rax]
mov rax, [ rdx + 0x20 ]
mov r11, rax
shl r11, 0x1
mov rax, [ rdx + 0x18 ]
lea rcx, [rax + rax]
mov rax, rdx
mov rdx, [ rsi + 0x38 ]
mulx r9, r8, [ rax + 0x8 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x60 ], r14
lea r14, [rdx + rdx]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mov r15, rdx
shl r15, 0x1
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x40 ], r13
mov [ rsp - 0x38 ], rdi
mulx rdi, r13, [ rax + 0x8 ]
mov rdx, 0x1 
mov [ rsp - 0x30 ], r12
shlx r12, [ rax + 0x38 ], rdx
mov rdx, r15
mov [ rsp - 0x28 ], r9
mulx r9, r15, [ rsi + 0x40 ]
mov rdx, r12
mov [ rsp - 0x20 ], r8
mulx r8, r12, [ rsi + 0x38 ]
mov [ rsp - 0x18 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x10 ], rbx
mov [ rsp - 0x8 ], r8
mulx r8, rbx, r11
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x0 ], r12
mov r12, rdx
shl r12, 0x1
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x8 ], r8
mov [ rsp + 0x10 ], rbx
mulx rbx, r8, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x18 ], rbx
mov [ rsp + 0x20 ], r8
mulx r8, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x28 ], r8
mov [ rsp + 0x30 ], rbx
mulx rbx, r8, r12
mov rdx, r11
mov [ rsp + 0x38 ], rbx
mulx rbx, r11, [ rsi + 0x28 ]
mov [ rsp + 0x40 ], r8
mov r8, [ rax + 0x30 ]
mov [ rsp + 0x48 ], rbx
lea rbx, [r8 + r8]
mov r8, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x50 ], r11
mov [ rsp + 0x58 ], rbx
mulx rbx, r11, r12
mov rdx, rbp
mov [ rsp + 0x60 ], rbx
mulx rbx, rbp, [ rsi + 0x30 ]
mov [ rsp + 0x68 ], rbx
mov [ rsp + 0x70 ], rbp
mulx rbp, rbx, [ rsi + 0x28 ]
xchg rdx, r14
mov [ rsp + 0x78 ], rbp
mov [ rsp + 0x80 ], rbx
mulx rbx, rbp, [ rsi + 0x38 ]
mov [ rsp + 0x88 ], r11
mov [ rsp + 0x90 ], rdi
mulx rdi, r11, [ rsi + 0x40 ]
test al, al
adox r15, rbp
adox rbx, r9
mov rdx, [ rax + 0x0 ]
mulx rbp, r9, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r15
mulx r15, rbx, r14
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xa8 ], r15
mov [ rsp + 0xb0 ], rbx
mulx rbx, r15, [ rsi + 0x8 ]
mov rdx, r12
mov [ rsp + 0xb8 ], rbx
mulx rbx, r12, [ rsi + 0x38 ]
mov [ rsp + 0xc0 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0xc8 ], r13
mov [ rsp + 0xd0 ], rbp
mulx rbp, r13, r8
adcx r13, r12
adcx rbx, rbp
mov rdx, rcx
mulx r12, rcx, [ rsi + 0x38 ]
test al, al
adox r11, rcx
adox r12, rdi
mov rdi, rdx
mov rdx, [ rsi + 0x40 ]
mulx rcx, rbp, r10
adcx rbp, r9
adcx rcx, [ rsp + 0xd0 ]
add rbp, [ rsp + 0xc8 ]
adcx rcx, [ rsp + 0x90 ]
mov rdx, r10
mulx r9, r10, [ rsi + 0x10 ]
mov [ rsp + 0xd8 ], rbx
mov rbx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe0 ], r13
mov [ rsp + 0xe8 ], r9
mulx r9, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xf0 ], r10
mov [ rsp + 0xf8 ], r12
mulx r12, r10, [ rsi + 0x10 ]
add rbp, r13
adcx r9, rcx
mov rdx, r8
mulx rcx, r8, [ rsi + 0x30 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x100 ], r12
mulx r12, r13, [ rsi + 0x20 ]
xor rdx, rdx
adox rbp, r13
adox r12, r9
adcx r11, r8
adcx rcx, [ rsp + 0xf8 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, r9, [ rax + 0x20 ]
xor rdx, rdx
adox rbp, r9
adox r8, r12
adcx rbp, r10
adcx r8, [ rsp + 0x100 ]
mov rdx, [ rax + 0x30 ]
mulx r13, r10, [ rsi + 0x8 ]
mov rdx, r15
mulx r12, r15, [ rsi + 0x28 ]
xor r9, r9
adox r11, r15
adox r12, rcx
adcx rbp, r10
adcx r13, r8
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mulx r10, r8, [ rsp + 0x58 ]
mov rdx, [ rsi + 0x30 ]
mulx r9, r15, rcx
mov rdx, rdi
mulx rcx, rdi, [ rsi + 0x30 ]
mov [ rsp + 0x108 ], r13
mov r13, rdi
test al, al
adox r13, [ rsp + 0xa0 ]
adox rcx, [ rsp + 0x98 ]
mov [ rsp + 0x110 ], rbp
mulx rbp, rdi, [ rsi + 0x40 ]
adcx rdi, [ rsp + 0x10 ]
adcx rbp, [ rsp + 0x8 ]
test al, al
adox r11, r8
adox r10, r12
mov rdx, [ rsi + 0x18 ]
mulx r8, r12, r14
adcx r11, r12
adcx r8, r10
mov rdx, [ rsi + 0x28 ]
mulx r12, r10, [ rsp + 0x58 ]
add rdi, r15
adcx r9, rbp
add rdi, r10
adcx r12, r9
mov rdx, [ rsi + 0x18 ]
mulx rbp, r15, [ rsp + 0x58 ]
add r13, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x48 ]
add r13, [ rsp + 0x88 ]
adcx rcx, [ rsp + 0x60 ]
add r13, r15
adcx rbp, rcx
mov rdx, r14
mulx r10, r14, [ rsi + 0x20 ]
xor r9, r9
adox rdi, r14
adox r10, r12
mulx r15, r12, [ rsi + 0x10 ]
mov rdx, rbx
mulx rcx, rbx, [ rsi + 0x18 ]
adcx rdi, rbx
adcx rcx, r10
mulx r10, r14, [ rsi + 0x8 ]
mov rbx, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x118 ], rcx
mulx rcx, r9, [ rsi + 0x10 ]
add r13, r12
adcx r15, rbp
test al, al
adox r13, r14
adox r10, r15
mov rdx, [ rax + 0x0 ]
mulx r12, rbp, [ rsi + 0x8 ]
adcx r11, [ rsp + 0xf0 ]
adcx r8, [ rsp + 0xe8 ]
test al, al
adox rdi, r9
adox rcx, [ rsp + 0x118 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r14, [ rax + 0x8 ]
adcx r11, rbp
adcx r12, r8
mov rdx, [ rsp + 0x58 ]
mulx rbp, r15, [ rsi + 0x38 ]
test al, al
adox r11, r14
adox r9, r12
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, r14, [ rax + 0x10 ]
mov rdx, r15
adcx rdx, [ rsp + 0x40 ]
adcx rbp, [ rsp + 0x38 ]
mov r15, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x120 ], rcx
mov [ rsp + 0x128 ], rdi
mulx rdi, rcx, [ rsi + 0x0 ]
test al, al
adox r13, rcx
adox rdi, r10
adcx r15, [ rsp + 0x70 ]
adcx rbp, [ rsp + 0x68 ]
mov rdx, rbx
mulx r10, rbx, [ rsi + 0x28 ]
test al, al
adox r15, rbx
adox r10, rbp
adcx r15, [ rsp + 0x20 ]
adcx r10, [ rsp + 0x18 ]
mov rcx, r13
shrd rcx, rdi, 58
shr rdi, 58
xor rbp, rbp
adox r11, rcx
adox rdi, r9
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx rcx, rbx, [ rax + 0x8 ]
mov rdx, 0x3a 
bzhi rbp, r11, rdx
shrd r11, rdi, 58
shr rdi, 58
mov [ rsp + 0x130 ], rbp
bzhi rbp, r13, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x138 ], rbp
mulx rbp, r13, [ rax + 0x8 ]
adox r15, rbx
adox rcx, r10
mov rdx, [ rsi + 0x40 ]
mulx rbx, r10, r8
xor rdx, rdx
adox r15, r14
adox r12, rcx
mov r14, r13
adcx r14, [ rsp + 0x128 ]
adcx rbp, [ rsp + 0x120 ]
mov rdx, r8
mulx r13, r8, [ rsi + 0x30 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x140 ], rdi
mulx rdi, rcx, [ rsi + 0x0 ]
xor rdx, rdx
adox r10, [ rsp + 0x0 ]
adox rbx, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x148 ], r11
mov [ rsp + 0x150 ], r12
mulx r12, r11, r9
adcx r14, rcx
adcx rdi, rbp
mov rdx, [ rax + 0x0 ]
mulx rcx, rbp, [ rsi + 0x28 ]
test al, al
adox r10, r11
adox r12, rbx
mov rdx, [ rsi + 0x10 ]
mulx r11, rbx, [ rax + 0x8 ]
mov rdx, r8
adcx rdx, [ rsp + 0xe0 ]
adcx r13, [ rsp + 0xd8 ]
add r10, rbp
adcx rcx, r12
test al, al
adox rdx, [ rsp + 0x80 ]
adox r13, [ rsp + 0x78 ]
mov r8, rdx
mov rdx, [ rsi + 0x20 ]
mulx r12, rbp, r9
adcx r8, rbp
adcx r12, r13
mov rdx, [ rsi + 0x18 ]
mulx rbp, r13, [ rax + 0x0 ]
add r8, r13
adcx rbp, r12
add r8, rbx
adcx r11, rbp
mov rdx, [ rax + 0x18 ]
mulx r12, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox r15, rbx
adox r12, [ rsp + 0x150 ]
adcx r8, [ rsp + 0xc0 ]
adcx r11, [ rsp + 0xb8 ]
mov rdx, [ rsi + 0x20 ]
mulx rbp, r13, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x158 ], r12
mulx r12, rbx, [ rsi + 0x0 ]
test al, al
adox r14, [ rsp + 0x148 ]
adox rdi, [ rsp + 0x140 ]
adcx r8, rbx
adcx r12, r11
mov rdx, [ rsi + 0x10 ]
mulx rbx, r11, [ rax + 0x18 ]
test al, al
adox r10, r13
adox rbp, rcx
mov rdx, [ rax + 0x10 ]
mulx r13, rcx, [ rsi + 0x18 ]
adcx r10, rcx
adcx r13, rbp
mov rdx, r14
shrd rdx, rdi, 58
shr rdi, 58
test al, al
adox r8, rdx
adox rdi, r12
adcx r10, r11
adcx rbx, r13
mov rdx, [ rsi + 0x38 ]
mulx r11, r12, r9
mov rdx, [ rax + 0x0 ]
mulx rbp, r9, [ rsi + 0x30 ]
mov rdx, 0x3ffffffffffffff 
mov rcx, r8
and rcx, rdx
and r14, rdx
adox r15, [ rsp - 0x10 ]
mov r13, [ rsp - 0x18 ]
adox r13, [ rsp + 0x158 ]
shrd r8, rdi, 58
shr rdi, 58
add r15, r8
adcx rdi, r13
mov r13, r15
and r13, rdx
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x18 ], rcx
mov rcx, r12
adox rcx, [ rsp + 0xb0 ]
adox r11, [ rsp + 0xa8 ]
adcx rcx, r9
adcx rbp, r11
mov rdx, [ rax + 0x8 ]
mulx r9, r12, [ rsi + 0x28 ]
test al, al
adox rcx, r12
adox r9, rbp
mov [ r8 + 0x20 ], r13
mov rdx, [ rsi + 0x20 ]
mulx r11, r13, [ rax + 0x20 ]
mov rdx, [ rax + 0x20 ]
mulx r12, rbp, [ rsi + 0x8 ]
adcx rcx, [ rsp + 0x30 ]
adcx r9, [ rsp + 0x28 ]
xor rdx, rdx
adox r10, rbp
adox r12, rbx
mov rdx, [ rax + 0x28 ]
mulx rbp, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x160 ], r14
mulx r14, r8, [ rax + 0x18 ]
adcx rcx, r8
adcx r14, r9
test al, al
adox r10, rbx
adox rbp, r12
shrd r15, rdi, 58
shr rdi, 58
mov rdx, [ rax + 0x0 ]
mulx r12, r9, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rbx, [ rax + 0x20 ]
test al, al
adox r9, [ rsp - 0x20 ]
adox r12, [ rsp - 0x28 ]
adcx rcx, rbx
adcx r8, r14
test al, al
adox rcx, [ rsp - 0x30 ]
adox r8, [ rsp - 0x48 ]
mov rdx, [ rax + 0x30 ]
mulx rbx, r14, [ rsi + 0x0 ]
adcx rcx, r14
adcx rbx, r8
add r10, r15
adcx rdi, rbp
mov rdx, r10
shrd rdx, rdi, 58
shr rdi, 58
xor rbp, rbp
adox rcx, rdx
adox rdi, rbx
mov r15, 0x3ffffffffffffff 
mov r8, rcx
and r8, r15
mov rdx, [ rax + 0x38 ]
mulx rbx, r14, [ rsi + 0x0 ]
mov rdx, r14
adox rdx, [ rsp + 0x110 ]
adox rbx, [ rsp + 0x108 ]
shrd rcx, rdi, 58
shr rdi, 58
xor r14, r14
adox rdx, rcx
adox rdi, rbx
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx rcx, rbx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mulx r15, r14, [ rax + 0x10 ]
adcx r9, r14
adcx r15, r12
test al, al
adox r9, [ rsp - 0x38 ]
adox r15, [ rsp - 0x40 ]
adcx r9, r13
adcx r11, r15
test al, al
adox r9, rbx
adox rcx, r11
mov rdx, [ rax + 0x30 ]
mulx r12, r13, [ rsi + 0x10 ]
mov rdx, 0x3a 
bzhi rbx, rbp, rdx
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x38 ], rbx
adox r9, r13
adox r12, rcx
mov rdx, [ rax + 0x38 ]
mulx r11, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r13, rcx, [ rax + 0x40 ]
add r9, r15
adcx r11, r12
shrd rbp, rdi, 58
shr rdi, 58
test al, al
adox r9, rcx
adox r13, r11
adcx r9, rbp
adcx rdi, r13
mov rdx, 0x1ffffffffffffff 
mov rbx, r9
and rbx, rdx
shrd r9, rdi, 57
shr rdi, 57
add r9, [ rsp + 0x138 ]
adc rdi, 0x0
mov r12, r9
shrd r12, rdi, 58
mov r15, 0x3ffffffffffffff 
and r9, r15
add r12, [ rsp + 0x130 ]
mov rcx, r12
and rcx, r15
shr r12, 58
add r12, [ rsp + 0x160 ]
and r10, r15
mov [ r14 + 0x30 ], r8
mov [ r14 + 0x28 ], r10
mov [ r14 + 0x40 ], rbx
mov [ r14 + 0x8 ], rcx
mov [ r14 + 0x10 ], r12
mov [ r14 + 0x0 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 488
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.3778
; seed 1324580161639463 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6962484 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 156481 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.022474881091288684
; number reverted permutation / tried permutation: 72131 / 94886 =76.019%
; number reverted decision / tried decision: 60048 / 95113 =63.133%
; validated in 5.916s
