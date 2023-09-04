SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 664
mov rax, [ rdx + 0x30 ]
mov r10, rax
shl r10, 0x1
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx rcx, r11, [ rsi + 0x30 ]
imul rdx, [ rax + 0x8 ], 0x2
mov r8, [ rax + 0x28 ]
mov r9, r8
shl r9, 0x1
mov [ rsp - 0x80 ], rbx
mulx rbx, r8, [ rsi + 0x40 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x78 ], rbp
lea rbp, [rdx + rdx]
mov rdx, 0x1 
mov [ rsp - 0x70 ], r12
shlx r12, [ rax + 0x20 ], rdx
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rbp
mov rdx, r12
mov [ rsp - 0x48 ], r14
mulx r14, r12, [ rsi + 0x40 ]
mov [ rsp - 0x40 ], r13
mov r13, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x38 ], rcx
mov [ rsp - 0x30 ], r11
mulx r11, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], r11
mov [ rsp - 0x20 ], rcx
mulx rcx, r11, [ rax + 0x10 ]
mov rdx, 0x1 
mov [ rsp - 0x18 ], rcx
shlx rcx, [ rax + 0x38 ], rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x10 ], r11
mov [ rsp - 0x8 ], r14
mulx r14, r11, [ rax + 0x20 ]
mov rdx, r10
mov [ rsp + 0x0 ], r14
mulx r14, r10, [ rsi + 0x28 ]
xchg rdx, rcx
mov [ rsp + 0x8 ], r11
mov [ rsp + 0x10 ], r14
mulx r14, r11, [ rsi + 0x10 ]
mov [ rsp + 0x18 ], r14
mov r14, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x20 ], r11
mov [ rsp + 0x28 ], r10
mulx r10, r11, [ rsi + 0x8 ]
mov rdx, rcx
mov [ rsp + 0x30 ], r10
mulx r10, rcx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], r11
mov r11, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x40 ], r10
mov [ rsp + 0x48 ], rcx
mulx rcx, r10, [ rsi + 0x28 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x50 ], rcx
mov [ rsp + 0x58 ], r10
mulx r10, rcx, [ rsi + 0x18 ]
mov rdx, r14
mov [ rsp + 0x60 ], r10
mulx r10, r14, [ rsi + 0x30 ]
mov [ rsp + 0x68 ], rcx
mov rcx, 0x1 
mov [ rsp + 0x70 ], r10
shlx r10, [ rax + 0x40 ], rcx
mov rcx, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x78 ], r14
mov [ rsp + 0x80 ], r12
mulx r12, r14, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x88 ], r9
mov [ rsp + 0x90 ], rbx
mulx rbx, r9, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r9
mulx r9, rbx, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xa8 ], r9
mov [ rsp + 0xb0 ], rbx
mulx rbx, r9, [ rax + 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb8 ], rbx
mov [ rsp + 0xc0 ], r9
mulx r9, rbx, r10
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xc8 ], r9
mov [ rsp + 0xd0 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
imul rdx, [ rax + 0x18 ], 0x2
mov [ rsp + 0xd8 ], rbx
mov rbx, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xe0 ], r9
mov [ rsp + 0xe8 ], r8
mulx r8, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xf0 ], r8
mov [ rsp + 0xf8 ], r9
mulx r9, r8, r10
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x100 ], r9
mov [ rsp + 0x108 ], r8
mulx r8, r9, [ rsi + 0x38 ]
mov rdx, rbx
mov [ rsp + 0x110 ], rdi
mulx rdi, rbx, [ rsi + 0x30 ]
mov [ rsp + 0x118 ], rdi
xor rdi, rdi
adox r14, r9
adox r8, r12
mulx r9, r12, [ rsi + 0x38 ]
mov [ rsp + 0x120 ], r8
mulx r8, rdi, [ rsi + 0x40 ]
mov rdx, r13
mov [ rsp + 0x128 ], r14
mulx r14, r13, [ rsi + 0x38 ]
mov [ rsp + 0x130 ], rbx
mov [ rsp + 0x138 ], r15
mulx r15, rbx, [ rsi + 0x28 ]
adcx rdi, r13
adcx r14, r8
mov r8, r12
test al, al
adox r8, [ rsp + 0x138 ]
adox r9, [ rsp + 0x110 ]
xchg rdx, rbp
mulx r13, r12, [ rsi + 0x38 ]
mov rdx, r12
adcx rdx, [ rsp + 0xe8 ]
adcx r13, [ rsp + 0x90 ]
xor r12, r12
adox rdx, [ rsp + 0x130 ]
adox r13, [ rsp + 0x118 ]
adcx rdx, rbx
adcx r15, r13
mov rbx, rdx
mov rdx, [ rsp + 0x88 ]
mulx r12, r13, [ rsi + 0x38 ]
mov [ rsp + 0x140 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x148 ], rdi
mov [ rsp + 0x150 ], r15
mulx r15, rdi, rbp
test al, al
adox r8, rdi
adox r15, r9
mov rdx, r13
adcx rdx, [ rsp + 0x80 ]
adcx r12, [ rsp - 0x8 ]
mov rbp, rdx
mov rdx, [ rsi + 0x28 ]
mulx r13, r9, r14
test al, al
adox r8, r9
adox r13, r15
mov rdx, r11
mulx rdi, r11, [ rsi + 0x20 ]
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x158 ], r12
mulx r12, r9, r14
adcx rbx, r9
adcx r12, [ rsp + 0x150 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x160 ], rbp
mulx rbp, r9, r15
xor rdx, rdx
adox rbx, [ rsp + 0x48 ]
adox r12, [ rsp + 0x40 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x168 ], rbp
mov [ rsp + 0x170 ], r9
mulx r9, rbp, rcx
adcx r8, r11
adcx rdi, r13
mov rdx, [ rax + 0x0 ]
mulx r11, r13, [ rsi + 0x8 ]
xor rdx, rdx
adox r8, rbp
adox r9, rdi
adcx r8, [ rsp + 0xd0 ]
adcx r9, [ rsp + 0xc8 ]
add r8, r13
adcx r11, r9
mov rdx, [ rsi + 0x18 ]
mulx rdi, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r13, [ rax + 0x8 ]
add r8, r13
adcx r9, r11
mov rdx, r15
mulx r11, r15, [ rsi + 0x30 ]
mov r13, r15
test al, al
adox r13, [ rsp + 0x160 ]
adox r11, [ rsp + 0x158 ]
mov r15, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x178 ], r9
mov [ rsp + 0x180 ], r8
mulx r8, r9, rcx
adcx r13, r9
adcx r8, r11
add r13, [ rsp + 0xb0 ]
adcx r8, [ rsp + 0xa8 ]
add r13, rbp
adcx rdi, r8
mov rdx, [ rsi + 0x10 ]
mulx r11, rbp, [ rax + 0x8 ]
test al, al
adox r13, rbp
adox r11, rdi
mov rdx, [ rax + 0x10 ]
mulx r8, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x30 ]
mulx rbp, rdi, r14
adcx r13, r9
adcx r8, r11
mov rdx, rdi
test al, al
adox rdx, [ rsp + 0x148 ]
adox rbp, [ rsp + 0x140 ]
xchg rdx, r14
mulx r9, r11, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x188 ], r8
mulx r8, rdi, rcx
adcx r14, [ rsp + 0x28 ]
adcx rbp, [ rsp + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x190 ], r13
mov [ rsp + 0x198 ], r12
mulx r12, r13, r10
mov rdx, r15
mov [ rsp + 0x1a0 ], r12
mulx r12, r15, [ rsi + 0x38 ]
test al, al
adox r14, rdi
adox r8, rbp
adcx r11, r15
adcx r12, r9
xor rdx, rdx
adox rbx, [ rsp + 0x20 ]
mov r9, [ rsp + 0x18 ]
adox r9, [ rsp + 0x198 ]
mov rdx, [ rsi + 0x0 ]
mulx rbp, rdi, [ rax + 0x0 ]
adcx r11, [ rsp + 0x78 ]
adcx r12, [ rsp + 0x70 ]
add r11, r13
adcx r12, [ rsp + 0x1a0 ]
add rbx, [ rsp + 0xa0 ]
adcx r9, [ rsp + 0x98 ]
xor rdx, rdx
adox rbx, rdi
adox rbp, r9
mov r13, rbx
shrd r13, rbp, 58
shr rbp, 58
mov r15, r13
xor rdi, rdi
adox r15, [ rsp + 0x180 ]
adox rbp, [ rsp + 0x178 ]
mov rdx, [ rsi + 0x18 ]
mulx r13, r9, r10
adcx r14, r9
adcx r13, r8
mov rdx, r15
shrd rdx, rbp, 58
shr rbp, 58
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r9, [ rax + 0x0 ]
xor rdx, rdx
adox r14, r9
adox rdi, r13
adcx r14, [ rsp - 0x20 ]
adcx rdi, [ rsp - 0x28 ]
test al, al
adox r14, [ rsp - 0x10 ]
adox rdi, [ rsp - 0x18 ]
mov r13, 0x3a 
bzhi r9, rbx, r13
mov rdx, [ rax + 0x0 ]
mulx r13, rbx, [ rsi + 0x20 ]
mov rdx, 0x3a 
mov [ rsp + 0x1a8 ], r9
bzhi r9, r15, rdx
adox r11, rbx
adox r13, r12
mov rdx, [ rax + 0x18 ]
mulx r15, r12, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x1b0 ], r9
mulx r9, rbx, [ rsi + 0x18 ]
mov rdx, r12
mov [ rsp + 0x1b8 ], rdi
xor rdi, rdi
adox rdx, [ rsp + 0x190 ]
adox r15, [ rsp + 0x188 ]
adcx r11, rbx
adcx r9, r13
mov r13, rdx
mov rdx, [ rax + 0x10 ]
mulx rbx, r12, [ rsi + 0x10 ]
test al, al
adox r11, r12
adox rbx, r9
mov rdx, r10
mulx r9, r10, [ rsi + 0x38 ]
mov rdx, [ rax + 0x18 ]
mulx rdi, r12, [ rsi + 0x8 ]
adcx r11, r12
adcx rdi, rbx
add r11, [ rsp + 0xf8 ]
adcx rdi, [ rsp + 0xf0 ]
add r14, r8
adcx rbp, [ rsp + 0x1b8 ]
mov rdx, rcx
mulx r8, rcx, [ rsi + 0x40 ]
mov rbx, 0x3a 
bzhi r12, r14, rbx
shrd r14, rbp, 58
shr rbp, 58
test al, al
adox r13, r14
adox rbp, r15
mov r15, r13
shrd r15, rbp, 58
shr rbp, 58
test al, al
adox r11, r15
adox rbp, rdi
bzhi rdi, r11, rbx
shrd r11, rbp, 58
shr rbp, 58
bzhi r14, r13, rbx
mov r13, rdx
mov rdx, [ rsi + 0x20 ]
mulx rbx, r15, [ rax + 0x8 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x1c0 ], r12
mov [ rsp + 0x1c8 ], rbp
mulx rbp, r12, r13
mov rdx, r12
adox rdx, [ rsp + 0x170 ]
adox rbp, [ rsp + 0x168 ]
mov r13, rdx
mov rdx, [ rax + 0x10 ]
mulx r14, r12, [ rsi + 0x18 ]
xor rdx, rdx
adox r13, [ rsp + 0x108 ]
adox rbp, [ rsp + 0x100 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x1d0 ], r11
mov [ rsp + 0x1d8 ], r8
mulx r8, r11, [ rax + 0x0 ]
adcx r13, r11
adcx r8, rbp
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x20 ], rdi
xor rdi, rdi
adox r13, r15
adox rbx, r8
mov r15, rdx
mov rdx, [ rax + 0x20 ]
mulx r11, rbp, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mulx rdi, r8, [ rsi + 0x30 ]
adcx r13, r12
adcx r14, rbx
test al, al
adox rcx, r10
adox r9, [ rsp + 0x1d8 ]
mov rdx, [ rax + 0x10 ]
mulx r12, r10, [ rsi + 0x20 ]
adcx rcx, [ rsp - 0x30 ]
adcx r9, [ rsp - 0x38 ]
mov rdx, r8
xor rbx, rbx
adox rdx, [ rsp + 0x128 ]
adox rdi, [ rsp + 0x120 ]
adcx rdx, [ rsp + 0x58 ]
adcx rdi, [ rsp + 0x50 ]
mov r8, rdx
mov rdx, [ rax + 0x8 ]
mulx r15, rbx, [ rsi + 0x28 ]
xor rdx, rdx
adox rcx, rbx
adox r15, r9
adcx rcx, r10
adcx r12, r15
mov rdx, [ rsi + 0x10 ]
mulx r9, r10, [ rax + 0x18 ]
test al, al
adox r13, r10
adox r9, r14
mov rdx, [ rsi + 0x0 ]
mulx rbx, r14, [ rax + 0x28 ]
adcx r13, rbp
adcx r11, r9
test al, al
adox rcx, [ rsp - 0x40 ]
adox r12, [ rsp - 0x48 ]
adcx r13, r14
adcx rbx, r11
add rcx, [ rsp + 0x8 ]
adcx r12, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x40 ]
mulx r15, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx r9, r10, [ rax + 0x20 ]
test al, al
adox rcx, [ rsp + 0x38 ]
adox r12, [ rsp + 0x30 ]
mov rdx, [ rax + 0x20 ]
mulx r11, r14, [ rsi + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x1e0 ], r9
mov [ rsp + 0x1e8 ], r10
mulx r10, r9, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x1f0 ], r15
mov [ rsp + 0x1f8 ], rbp
mulx rbp, r15, [ rax + 0x8 ]
adcx r13, [ rsp + 0x1d0 ]
adcx rbx, [ rsp + 0x1c8 ]
mov rdx, 0x3a 
mov [ rsp + 0x200 ], rbp
bzhi rbp, r13, rdx
shrd r13, rbx, 58
shr rbx, 58
test al, al
adox r8, r9
adox r10, rdi
adcx r8, r14
adcx r11, r10
test al, al
adox r8, [ rsp + 0xe0 ]
adox r11, [ rsp + 0xd8 ]
mov rdx, [ rax + 0x10 ]
mulx r14, rdi, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x8 ]
mulx r10, r9, [ rax + 0x30 ]
adcx rcx, [ rsp + 0xc0 ]
adcx r12, [ rsp + 0xb8 ]
test al, al
adox r8, r9
adox r10, r11
adcx rcx, r13
adcx rbx, r12
mov rdx, [ rsi + 0x0 ]
mulx r11, r13, [ rax + 0x38 ]
test al, al
adox r8, r13
adox r11, r10
mov rdx, [ rax + 0x40 ]
mulx r12, r9, [ rsi + 0x0 ]
mov rdx, [ rax + 0x18 ]
mulx r13, r10, [ rsi + 0x28 ]
mov rdx, rcx
shrd rdx, rbx, 58
shr rbx, 58
test al, al
adox r8, rdx
adox rbx, r11
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x208 ], rbp
mulx rbp, r11, [ rsi + 0x10 ]
mov rdx, r15
adcx rdx, [ rsp + 0x1f8 ]
mov [ rsp + 0x210 ], r12
mov r12, [ rsp + 0x200 ]
adcx r12, [ rsp + 0x1f0 ]
xor r15, r15
adox rdx, rdi
adox r14, r12
adcx rdx, r10
adcx r13, r14
mov rdi, 0x3ffffffffffffff 
mov r10, r8
and r10, rdi
adox rdx, [ rsp + 0x1e8 ]
adox r13, [ rsp + 0x1e0 ]
adcx rdx, [ rsp + 0x68 ]
adcx r13, [ rsp + 0x60 ]
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x38 ], r10
test al, al
adox rdx, r11
adox rbp, r13
mov r11, rdx
mov rdx, [ rax + 0x38 ]
mulx r10, r14, [ rsi + 0x8 ]
adcx r11, r14
adcx r10, rbp
shrd r8, rbx, 58
shr rbx, 58
xor rdx, rdx
adox r11, r9
adox r10, [ rsp + 0x210 ]
adcx r11, r8
adcx rbx, r10
mov r15, r11
shrd r15, rbx, 57
shr rbx, 57
mov r9, 0x1ffffffffffffff 
and r11, r9
mov [ r12 + 0x40 ], r11
adox r15, [ rsp + 0x1a8 ]
adox rbx, rdx
mov r13, r15
and r13, rdi
shrd r15, rbx, 58
mov rbp, [ rsp + 0x208 ]
mov [ r12 + 0x28 ], rbp
add r15, [ rsp + 0x1b0 ]
mov rbp, r15
and rbp, rdi
and rcx, rdi
mov [ r12 + 0x30 ], rcx
shr r15, 58
add r15, [ rsp + 0x1c0 ]
mov [ r12 + 0x0 ], r13
mov [ r12 + 0x8 ], rbp
mov [ r12 + 0x10 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 664
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.2393
; seed 1988906815531531 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6744638 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=44, initial num_batches=31): 140160 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.020780952217153835
; number reverted permutation / tried permutation: 67761 / 95076 =71.270%
; number reverted decision / tried decision: 57612 / 94923 =60.693%
; validated in 5.645s
