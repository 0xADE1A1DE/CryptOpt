SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 488
mov rax, [ rdx + 0x30 ]
mov r10, rax
shl r10, 0x1
imul rax, [ rdx + 0x8 ], 0x2
mov r11, [ rdx + 0x18 ]
mov rcx, r11
shl rcx, 0x1
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, r10
mov rdx, [ r11 + 0x30 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x8 ]
mov rdx, [ r11 + 0x28 ]
mov [ rsp - 0x70 ], r12
lea r12, [rdx + rdx]
mov rdx, [ r11 + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r12
mov rdx, [ r11 + 0x40 ]
mov [ rsp - 0x48 ], rbp
lea rbp, [rdx + rdx]
mov rdx, r12
mov [ rsp - 0x40 ], rbx
mulx rbx, r12, [ rsi + 0x30 ]
mov [ rsp - 0x38 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x30 ], r13
mov [ rsp - 0x28 ], rbx
mulx rbx, r13, [ r11 + 0x0 ]
mov rdx, r10
mov [ rsp - 0x20 ], rbx
mulx rbx, r10, [ rsi + 0x40 ]
mov [ rsp - 0x18 ], rbx
mov rbx, [ r11 + 0x38 ]
mov [ rsp - 0x10 ], r10
lea r10, [rbx + rbx]
imul rbx, [ r11 + 0x20 ], 0x2
mov [ rsp - 0x8 ], r13
mov r13, rdx
mov rdx, [ r11 + 0x10 ]
mov [ rsp + 0x0 ], r10
mov [ rsp + 0x8 ], r12
mulx r12, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x10 ], r12
mov [ rsp + 0x18 ], r10
mulx r10, r12, rbx
mov rdx, [ r11 + 0x28 ]
mov [ rsp + 0x20 ], r10
mov [ rsp + 0x28 ], r12
mulx r12, r10, [ rsi + 0x0 ]
mov rdx, [ r11 + 0x0 ]
mov [ rsp + 0x30 ], r12
mov [ rsp + 0x38 ], r10
mulx r10, r12, [ rsi + 0x30 ]
mov rdx, [ r11 + 0x8 ]
mov [ rsp + 0x40 ], r10
mov [ rsp + 0x48 ], r12
mulx r12, r10, [ rsi + 0x20 ]
mov rdx, rbx
mov [ rsp + 0x50 ], r12
mulx r12, rbx, [ rsi + 0x28 ]
mov [ rsp + 0x58 ], r10
mov r10, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x60 ], rbp
mov [ rsp + 0x68 ], r9
mulx r9, rbp, rax
mov rdx, [ r11 + 0x30 ]
mov [ rsp + 0x70 ], r8
mulx r8, rax, [ rsi + 0x10 ]
mov rdx, [ r11 + 0x10 ]
mov [ rsp + 0x78 ], r8
mov r8, rdx
shl r8, 0x1
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x80 ], rax
mov [ rsp + 0x88 ], r12
mulx r12, rax, r8
mov rdx, r8
mov [ rsp + 0x90 ], rbx
mulx rbx, r8, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r8
mulx r8, rbx, [ r11 + 0x20 ]
test al, al
adox rbp, rax
adox r12, r9
mov rdx, r13
mulx r9, r13, [ rsi + 0x30 ]
mov rax, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0xa8 ], r8
mov [ rsp + 0xb0 ], rbx
mulx rbx, r8, r10
adcx r8, r15
adcx rdi, rbx
test al, al
adox r8, r13
adox r9, rdi
mov rdx, [ rsi + 0x30 ]
mulx r13, r15, rcx
adcx rbp, r15
adcx r13, r12
mov rdx, [ rsi + 0x20 ]
mulx rbx, r12, r14
add rbp, [ rsp + 0x90 ]
adcx r13, [ rsp + 0x88 ]
add rbp, r12
adcx rbx, r13
mov rdx, [ rsi + 0x38 ]
mulx r15, rdi, rcx
mov rdx, rdi
xor r12, r12
adox rdx, [ rsp + 0xa0 ]
adox r15, [ rsp + 0x98 ]
adcx rbp, [ rsp + 0x70 ]
adcx rbx, [ rsp + 0x68 ]
mov r13, rdx
mov rdx, [ rsi + 0x38 ]
mulx r12, rdi, [ rsp + 0x60 ]
test al, al
adox r13, [ rsp + 0x28 ]
adox r15, [ rsp + 0x20 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xb8 ], r12
mov [ rsp + 0xc0 ], rdi
mulx rdi, r12, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc8 ], r9
mulx r9, r10, rax
mov rdx, rcx
mov [ rsp + 0xd0 ], r8
mulx r8, rcx, [ rsi + 0x40 ]
adcx rcx, r12
adcx rdi, r8
xor rdx, rdx
adox rcx, [ rsp + 0x8 ]
adox rdi, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, r12, [ rsp + 0x0 ]
adcx rcx, r10
adcx r9, rdi
test al, al
adox rbp, r12
adox r8, rbx
mov rdx, [ rsi + 0x38 ]
mulx r10, rbx, [ r11 + 0x8 ]
mov rdx, [ r11 + 0x0 ]
mulx r12, rdi, [ rsi + 0x40 ]
adcx rdi, rbx
adcx r10, r12
mov rdx, [ r11 + 0x10 ]
mulx r12, rbx, [ rsi + 0x30 ]
test al, al
adox rdi, rbx
adox r12, r10
mov rdx, [ rsi + 0x38 ]
mulx rbx, r10, rax
mov rdx, rax
mov [ rsp + 0xd8 ], r12
mulx r12, rax, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe0 ], rdi
mov [ rsp + 0xe8 ], r8
mulx r8, rdi, r14
adcx r13, rdi
adcx r8, r15
xor rdx, rdx
adox r13, rax
adox r12, r8
mov rdx, [ rsi + 0x40 ]
mulx rax, r15, r14
mov rdx, [ rsi + 0x30 ]
mulx rdi, r14, [ rsp + 0x0 ]
adcx r15, r10
adcx rbx, rax
xor rdx, rdx
adox r15, r14
adox rdi, rbx
mov rdx, [ rsi + 0x18 ]
mulx r8, r10, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, rax, [ rsp + 0x60 ]
adcx r13, r10
adcx r8, r12
mov rdx, [ rsi + 0x40 ]
mulx rbx, r12, [ rsp + 0x60 ]
xor rdx, rdx
adox r12, [ rsp - 0x8 ]
adox rbx, [ rsp - 0x20 ]
adcx r15, rax
adcx r14, rdi
mov rdx, [ rsi + 0x30 ]
mulx r10, rdi, [ r11 + 0x8 ]
add r12, rdi
adcx r10, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, rax, [ rsp + 0x60 ]
add r13, rax
adcx rbx, r8
mov rdx, [ rsi + 0x10 ]
mulx rdi, r8, [ r11 + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xf0 ], r10
mulx r10, rax, [ rsp + 0x0 ]
mov rdx, [ r11 + 0x0 ]
mov [ rsp + 0xf8 ], r12
mov [ rsp + 0x100 ], rbx
mulx rbx, r12, [ rsi + 0x20 ]
test al, al
adox rcx, rax
adox r10, r9
mov rdx, [ rsi + 0x18 ]
mulx rax, r9, [ r11 + 0x8 ]
adcx r15, r12
adcx rbx, r14
mov rdx, [ rsi + 0x18 ]
mulx r12, r14, [ rsp + 0x60 ]
xor rdx, rdx
adox rcx, r14
adox r12, r10
adcx rcx, r8
adcx rdi, r12
mov rdx, [ rsi + 0x8 ]
mulx r10, r8, [ r11 + 0x0 ]
xor rdx, rdx
adox r15, r9
adox rax, rbx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r9, [ rsp + 0x60 ]
adcx rbp, r9
adcx rbx, [ rsp + 0xe8 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, r14, [ r11 + 0x8 ]
mov rdx, [ r11 + 0x10 ]
mov [ rsp + 0x108 ], rax
mulx rax, r9, [ rsi + 0x0 ]
test al, al
adox rcx, r14
adox r12, rdi
adcx rcx, r9
adcx rax, r12
mov rdx, [ r11 + 0x8 ]
mulx r14, rdi, [ rsi + 0x0 ]
mov rdx, [ r11 + 0x0 ]
mulx r12, r9, [ rsi + 0x0 ]
add rbp, r9
adcx r12, rbx
test al, al
adox r13, r8
adox r10, [ rsp + 0x100 ]
mov rdx, rbp
shrd rdx, r12, 58
shr r12, 58
xor r8, r8
adox r13, rdi
adox r14, r10
adcx r13, rdx
adcx r12, r14
mov rdx, [ rsi + 0x28 ]
mulx rdi, rbx, [ rsp + 0x0 ]
mov rdx, 0x3ffffffffffffff 
and rbp, rdx
mov r9, rbx
adox r9, [ rsp + 0xd0 ]
adox rdi, [ rsp + 0xc8 ]
mov r10, r13
shrd r10, r12, 58
shr r12, 58
mov rdx, [ rsi + 0x20 ]
mulx rbx, r14, [ rsp + 0x60 ]
mov rdx, [ r11 + 0x0 ]
mov [ rsp + 0x110 ], rbp
mulx rbp, r8, [ rsi + 0x18 ]
add r9, r14
adcx rbx, rdi
xor rdx, rdx
adox r9, r8
adox rbp, rbx
mov rdx, [ rsi + 0x10 ]
mulx r14, rdi, [ r11 + 0x8 ]
mov rdx, 0x3a 
bzhi r8, r13, rdx
mov r13, [ rsp + 0xe0 ]
adox r13, [ rsp - 0x30 ]
mov rbx, [ rsp + 0xd8 ]
adox rbx, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x118 ], r8
mov [ rsp + 0x120 ], r15
mulx r15, r8, [ r11 + 0x20 ]
test al, al
adox rcx, r10
adox r12, rax
mov rdx, rcx
shrd rdx, r12, 58
shr r12, 58
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x128 ], r12
mulx r12, r10, [ r11 + 0x28 ]
test al, al
adox r13, r8
adox r15, rbx
mov rdx, [ rsp + 0x60 ]
mulx r8, rbx, [ rsi + 0x30 ]
adcx r13, r10
adcx r12, r15
xor rdx, rdx
adox r9, rdi
adox r14, rbp
adcx r9, [ rsp + 0x18 ]
adcx r14, [ rsp + 0x10 ]
mov rdx, [ r11 + 0x18 ]
mulx rdi, rbp, [ rsi + 0x0 ]
add r9, rbp
adcx rdi, r14
xor rdx, rdx
adox r9, rax
adox rdi, [ rsp + 0x128 ]
mov rax, 0x3a 
bzhi r10, r9, rax
mov rdx, [ r11 + 0x18 ]
mulx r14, r15, [ rsi + 0x10 ]
mov rdx, [ r11 + 0x10 ]
mulx rax, rbp, [ rsi + 0x10 ]
mov rdx, [ rsp + 0x0 ]
mov [ rsp + 0x130 ], r12
mov [ rsp + 0x138 ], r13
mulx r13, r12, [ rsi + 0x38 ]
mov [ rsp + 0x140 ], r14
mov r14, rbp
adox r14, [ rsp + 0x120 ]
adox rax, [ rsp + 0x108 ]
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x18 ], r10
mov r10, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x148 ], r15
mulx r15, rbp, [ r11 + 0x18 ]
add r14, rbp
adcx r15, rax
mov rdx, r12
add rdx, [ rsp - 0x10 ]
adcx r13, [ rsp - 0x18 ]
add rdx, rbx
adcx r8, r13
mov rbx, rdx
mov rdx, [ r11 + 0x0 ]
mulx rax, r12, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mulx r13, rbp, [ r11 + 0x20 ]
xor rdx, rdx
adox r14, rbp
adox r13, r15
adcx rbx, r12
adcx rax, r8
mov rdx, [ rsi + 0x40 ]
mulx r8, r15, r10
test al, al
adox r15, [ rsp + 0xc0 ]
adox r8, [ rsp + 0xb8 ]
shrd r9, rdi, 58
shr rdi, 58
mov rdx, [ rsi + 0x18 ]
mulx r12, r10, [ r11 + 0x10 ]
test al, al
adox r14, r9
adox rdi, r13
mov rdx, [ rsi + 0x28 ]
mulx r13, rbp, [ r11 + 0x8 ]
adcx r15, [ rsp + 0x48 ]
adcx r8, [ rsp + 0x40 ]
add r15, rbp
adcx r13, r8
mov rdx, [ rsi + 0x20 ]
mulx rbp, r9, [ r11 + 0x10 ]
test al, al
adox r15, r9
adox rbp, r13
mov rdx, [ r11 + 0x18 ]
mulx r13, r8, [ rsi + 0x18 ]
mov rdx, [ r11 + 0x20 ]
mov [ rsp + 0x150 ], rdi
mulx rdi, r9, [ rsi + 0x10 ]
adcx r15, r8
adcx r13, rbp
mov rdx, [ rsi + 0x8 ]
mulx r8, rbp, [ r11 + 0x28 ]
add rbx, [ rsp + 0x58 ]
adcx rax, [ rsp + 0x50 ]
xor rdx, rdx
adox rbx, r10
adox r12, rax
adcx rbx, [ rsp + 0x148 ]
adcx r12, [ rsp + 0x140 ]
mov rdx, [ rsi + 0x8 ]
mulx rax, r10, [ r11 + 0x20 ]
xor rdx, rdx
adox rbx, r10
adox rax, r12
mov r12, [ rsp + 0x150 ]
mov r10, r14
shrd r10, r12, 58
shr r12, 58
test al, al
adox rbx, [ rsp + 0x38 ]
adox rax, [ rsp + 0x30 ]
adcx rbx, r10
adcx r12, rax
mov r10, 0x3a 
bzhi rax, rbx, r10
shrd rbx, r12, 58
shr r12, 58
xor r10, r10
adox r15, r9
adox rdi, r13
adcx r15, rbp
adcx r8, rdi
mov rdx, [ rsi + 0x20 ]
mulx r13, r9, [ r11 + 0x18 ]
mov rdx, [ r11 + 0x40 ]
mulx rdi, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x158 ], rdi
mulx rdi, r10, [ r11 + 0x10 ]
mov rdx, r10
mov [ rsp + 0x160 ], rbp
xor rbp, rbp
adox rdx, [ rsp + 0xf8 ]
adox rdi, [ rsp + 0xf0 ]
adcx rdx, r9
adcx r13, rdi
mov r9, rdx
mov rdx, [ rsi + 0x0 ]
mulx rdi, r10, [ r11 + 0x30 ]
xor rdx, rdx
adox r15, r10
adox rdi, r8
adcx r15, rbx
adcx r12, rdi
mov rbp, 0x3ffffffffffffff 
mov rbx, r15
and rbx, rbp
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x28 ], rax
shrd r15, r12, 58
shr r12, 58
test al, al
adox r9, [ rsp + 0xb0 ]
adox r13, [ rsp + 0xa8 ]
mov rax, [ rsp + 0x80 ]
mov r10, rax
adcx r10, [ rsp + 0x138 ]
mov rdi, [ rsp + 0x78 ]
adcx rdi, [ rsp + 0x130 ]
mov [ r8 + 0x30 ], rbx
mov rdx, [ rsi + 0x8 ]
mulx rbx, rax, [ r11 + 0x38 ]
xor rdx, rdx
adox r10, rax
adox rbx, rdi
mov rdx, [ rsi + 0x10 ]
mulx rax, rdi, [ r11 + 0x28 ]
adcx r9, rdi
adcx rax, r13
add r9, [ rsp - 0x40 ]
adcx rax, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x0 ]
mulx rdi, r13, [ r11 + 0x38 ]
test al, al
adox r9, r13
adox rdi, rax
adcx r9, r15
adcx r12, rdi
mov rdx, r9
shrd rdx, r12, 58
shr r12, 58
xor r15, r15
adox r10, [ rsp + 0x160 ]
adox rbx, [ rsp + 0x158 ]
adcx r10, rdx
adcx r12, rbx
mov rax, r10
shrd rax, r12, 57
shr r12, 57
add rax, [ rsp + 0x110 ]
adc r12, 0x0
mov r13, rax
shrd r13, r12, 58
and rax, rbp
mov [ r8 + 0x0 ], rax
add r13, [ rsp + 0x118 ]
and rcx, rbp
mov rdi, 0x39 
bzhi rdx, r10, rdi
mov rbx, r13
shr rbx, 58
and r13, rbp
lea rbx, [ rbx + rcx ]
and r14, rbp
mov [ r8 + 0x8 ], r13
and r9, rbp
mov [ r8 + 0x40 ], rdx
mov [ r8 + 0x20 ], r14
mov [ r8 + 0x38 ], r9
mov [ r8 + 0x10 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 488
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.3595
; seed 2403027947485506 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 9810932 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 221042 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02253017348402782
; number reverted permutation / tried permutation: 71301 / 95220 =74.880%
; number reverted decision / tried decision: 59474 / 94779 =62.750%
; validated in 5.34s
