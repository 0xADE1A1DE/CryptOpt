SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 544
mov rax, [ rdx + 0x20 ]
lea r10, [rax + rax]
imul rax, [ rdx + 0x18 ], 0x2
xchg rdx, r10
mulx rcx, r11, [ rsi + 0x28 ]
mov r8, rdx
mov rdx, [ r10 + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ r10 + 0x0 ]
mov rdx, [ r10 + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, r8
mov [ rsp - 0x58 ], r15
mulx r15, r8, [ rsi + 0x30 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbx
mulx rbx, rdi, [ rsi + 0x38 ]
mov [ rsp - 0x40 ], r9
mov r9, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r14
mov [ rsp - 0x30 ], r13
mulx r13, r14, [ r10 + 0x8 ]
mov rdx, [ r10 + 0x40 ]
mov [ rsp - 0x28 ], r13
lea r13, [rdx + rdx]
mov rdx, r13
mov [ rsp - 0x20 ], r14
mulx r14, r13, [ rsi + 0x30 ]
mov [ rsp - 0x18 ], r14
mov [ rsp - 0x10 ], r13
mulx r13, r14, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], r13
mov r13, rdx
mov rdx, [ r10 + 0x10 ]
mov [ rsp + 0x0 ], r14
mov [ rsp + 0x8 ], rcx
mulx rcx, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], rcx
mov [ rsp + 0x18 ], r14
mulx r14, rcx, r13
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x20 ], r14
mov [ rsp + 0x28 ], rcx
mulx rcx, r14, r9
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x30 ], rcx
mulx rcx, r9, r13
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x38 ], rcx
mov [ rsp + 0x40 ], r9
mulx r9, rcx, rax
mov rdx, r13
mov [ rsp + 0x48 ], r14
mulx r14, r13, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r14
mov [ rsp + 0x58 ], r13
mulx r13, r14, [ rsi + 0x18 ]
mov [ rsp + 0x60 ], r13
mov [ rsp + 0x68 ], r14
mulx r14, r13, [ rsi + 0x8 ]
mov [ rsp + 0x70 ], r14
mov [ rsp + 0x78 ], r13
mulx r13, r14, [ rsi + 0x40 ]
xor rdx, rdx
adox r14, rbp
adox r12, r13
mov rdx, [ r10 + 0x8 ]
mulx r13, rbp, [ rsi + 0x38 ]
imul rdx, [ r10 + 0x10 ], 0x2
mov [ rsp + 0x80 ], r12
mov r12, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x88 ], r14
mov [ rsp + 0x90 ], r11
mulx r11, r14, [ r10 + 0x0 ]
test al, al
adox r14, rbp
adox r13, r11
mov rdx, [ rsi + 0x40 ]
mulx r11, rbp, r12
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x98 ], r13
mov [ rsp + 0xa0 ], r14
mulx r14, r13, rax
adcx rbp, r13
adcx r14, r11
mov rdx, r12
mulx r11, r12, [ rsi + 0x38 ]
xor rdx, rdx
adox rcx, rdi
adox rbx, r9
adcx rbp, r8
adcx r15, r14
mov r8, [ r10 + 0x8 ]
mov rdi, r8
shl rdi, 0x1
mov r8, [ r10 + 0x28 ]
mov r9, r8
shl r9, 0x1
mov rdx, [ rsi + 0x40 ]
mulx r13, r8, rdi
test al, al
adox r8, r12
adox r11, r13
mov rdx, rax
mulx r14, rax, [ rsi + 0x30 ]
mov rdx, r9
mulx r12, r9, [ rsi + 0x20 ]
adcx r8, rax
adcx r14, r11
mulx r13, rdi, [ rsi + 0x28 ]
mov r11, 0x1 
shlx rax, [ r10 + 0x30 ], r11
test al, al
adox rbp, rdi
adox r13, r15
adcx r8, [ rsp + 0x90 ]
adcx r14, [ rsp + 0x8 ]
test al, al
adox r8, r9
adox r12, r14
mulx r9, r15, [ rsi + 0x30 ]
xchg rdx, rax
mulx r14, rdi, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], r13
mulx r13, r11, [ rsi + 0x20 ]
adcx rcx, r15
adcx r9, rbx
mulx r15, rbx, [ rsi + 0x40 ]
mov [ rsp + 0xb0 ], rbp
mov [ rsp + 0xb8 ], r13
mulx r13, rbp, [ rsi + 0x30 ]
mov [ rsp + 0xc0 ], r11
xor r11, r11
adox r8, rdi
adox r14, r12
mov r12, rdx
mov rdx, [ rsi + 0x40 ]
mulx r11, rdi, rax
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xc8 ], r9
mov [ rsp + 0xd0 ], rcx
mulx rcx, r9, rax
imul rdx, [ r10 + 0x38 ], 0x2
mov [ rsp + 0xd8 ], r15
mulx r15, rax, [ rsi + 0x20 ]
xchg rdx, r12
mov [ rsp + 0xe0 ], r15
mov [ rsp + 0xe8 ], rax
mulx rax, r15, [ rsi + 0x38 ]
xchg rdx, r12
mov [ rsp + 0xf0 ], rbx
mov [ rsp + 0xf8 ], r14
mulx r14, rbx, [ rsi + 0x40 ]
add rdi, r15
adcx rax, r11
mov r11, r9
test al, al
adox r11, [ rsp + 0x48 ]
adox rcx, [ rsp + 0x30 ]
adcx r11, rbp
adcx r13, rcx
mulx r9, rbp, [ rsi + 0x30 ]
mulx rcx, r15, [ rsi + 0x10 ]
add rdi, rbp
adcx r9, rax
test al, al
adox r8, r15
adox rcx, [ rsp + 0xf8 ]
adcx rdi, [ rsp + 0x58 ]
adcx r9, [ rsp + 0x50 ]
xor rax, rax
adox r8, [ rsp + 0x78 ]
adox rcx, [ rsp + 0x70 ]
mulx r15, rbp, [ rsi + 0x38 ]
mov [ rsp + 0x100 ], r14
mov r14, rbp
adcx r14, [ rsp + 0xf0 ]
adcx r15, [ rsp + 0xd8 ]
xor rbp, rbp
adox r14, [ rsp - 0x10 ]
adox r15, [ rsp - 0x18 ]
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x108 ], rbx
mulx rbx, rbp, [ r10 + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x110 ], rcx
mov [ rsp + 0x118 ], r8
mulx r8, rcx, rax
adcx r11, rcx
adcx r8, r13
mov rdx, [ r10 + 0x0 ]
mulx rcx, r13, [ rsi + 0x28 ]
mov rdx, [ r10 + 0x0 ]
mov [ rsp + 0x120 ], r8
mov [ rsp + 0x128 ], r11
mulx r11, r8, [ rsi + 0x20 ]
test al, al
adox r14, r13
adox rcx, r15
mov rdx, [ rsi + 0x20 ]
mulx r13, r15, [ r10 + 0x8 ]
adcx r14, r15
adcx r13, rcx
mov rdx, [ rsi + 0x18 ]
mulx r15, rcx, [ r10 + 0x8 ]
test al, al
adox r14, rbp
adox rbx, r13
mov rdx, [ r10 + 0x0 ]
mulx r13, rbp, [ rsi + 0x18 ]
adcx rdi, r8
adcx r11, r9
mov rdx, [ rsi + 0x10 ]
mulx r8, r9, [ r10 + 0x8 ]
xor rdx, rdx
adox rdi, rcx
adox r15, r11
mov rdx, [ rsi + 0x28 ]
mulx r11, rcx, r12
mov rdx, rcx
adcx rdx, [ rsp + 0xd0 ]
adcx r11, [ rsp + 0xc8 ]
mov r12, [ rsp + 0x28 ]
mov rcx, r12
mov [ rsp + 0x130 ], r15
xor r15, r15
adox rcx, [ rsp + 0x128 ]
mov [ rsp + 0x138 ], rdi
mov rdi, [ rsp + 0x20 ]
adox rdi, [ rsp + 0x120 ]
adcx rcx, rbp
adcx r13, rdi
add rdx, [ rsp + 0xe8 ]
adcx r11, [ rsp + 0xe0 ]
add rcx, r9
adcx r8, r13
mov r12, rdx
mov rdx, [ r10 + 0x20 ]
mulx r9, rbp, [ rsi + 0x8 ]
mov rdx, [ r10 + 0x18 ]
mulx r13, rdi, [ rsi + 0x10 ]
test al, al
adox r14, rdi
adox r13, rbx
adcx r12, [ rsp + 0x68 ]
adcx r11, [ rsp + 0x60 ]
mov rdx, [ r10 + 0x8 ]
mulx rdi, rbx, [ rsi + 0x0 ]
mov rdx, [ rsp + 0xc0 ]
mov [ rsp + 0x140 ], rdi
mov rdi, rdx
mov [ rsp + 0x148 ], rbx
xor rbx, rbx
adox rdi, [ rsp + 0xb0 ]
mov r15, [ rsp + 0xb8 ]
adox r15, [ rsp + 0xa8 ]
adcx r12, [ rsp - 0x30 ]
adcx r11, [ rsp - 0x38 ]
add r12, [ rsp - 0x20 ]
adcx r11, [ rsp - 0x28 ]
add r14, rbp
adcx r9, r13
xor rdx, rdx
adox r12, [ rsp + 0x18 ]
adox r11, [ rsp + 0x10 ]
mov rdx, rax
mulx rbx, rax, [ rsi + 0x18 ]
adcx rdi, rax
adcx rbx, r15
mov rdx, [ rsi + 0x0 ]
mulx r13, rbp, [ r10 + 0x0 ]
mov rdx, rbp
xor r15, r15
adox rdx, [ rsp + 0x118 ]
adox r13, [ rsp + 0x110 ]
adcx rdi, [ rsp + 0x0 ]
adcx rbx, [ rsp - 0x8 ]
mov rax, 0x3a 
bzhi rbp, rdx, rax
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x150 ], rbp
mulx rbp, rax, [ r10 + 0x10 ]
mov rdx, [ r10 + 0x10 ]
mov [ rsp + 0x158 ], r9
mov [ rsp + 0x160 ], r14
mulx r14, r9, [ rsi + 0x10 ]
adox rcx, rax
adox rbp, r8
test al, al
adox rdi, [ rsp - 0x40 ]
adox rbx, [ rsp - 0x48 ]
adcx rdi, [ rsp + 0x148 ]
adcx rbx, [ rsp + 0x140 ]
shrd r15, r13, 58
shr r13, 58
test al, al
adox rdi, r15
adox r13, rbx
mov rdx, [ r10 + 0x0 ]
mulx rax, r8, [ rsi + 0x30 ]
mov rdx, rdi
shrd rdx, r13, 58
shr r13, 58
test al, al
adox r12, rdx
adox r13, r11
mov r11, r12
shrd r11, r13, 58
shr r13, 58
mov rdx, [ rsi + 0x0 ]
mulx r15, rbx, [ r10 + 0x18 ]
xor rdx, rdx
adox rcx, rbx
adox r15, rbp
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ r10 + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x168 ], rbx
mov [ rsp + 0x170 ], rbp
mulx rbp, rbx, [ r10 + 0x8 ]
adcx rcx, r11
adcx r13, r15
mov rdx, [ rsp + 0x40 ]
mov r11, rdx
xor r15, r15
adox r11, [ rsp + 0x108 ]
mov [ rsp + 0x178 ], rbp
mov rbp, [ rsp + 0x38 ]
adox rbp, [ rsp + 0x100 ]
mov rdx, 0x3ffffffffffffff 
mov r15, rcx
and r15, rdx
and r12, rdx
mov rdx, r9
adox rdx, [ rsp + 0x138 ]
adox r14, [ rsp + 0x130 ]
mov r9, 0x3ffffffffffffff 
and rdi, r9
adox r11, r8
adox rax, rbp
mov r8, rdx
mov rdx, [ r10 + 0x20 ]
mulx r9, rbp, [ rsi + 0x0 ]
adcx r11, rbx
adcx rax, [ rsp + 0x178 ]
mov rdx, [ r10 + 0x18 ]
mov [ rsp + 0x180 ], r12
mulx r12, rbx, [ rsi + 0x8 ]
shrd rcx, r13, 58
shr r13, 58
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x188 ], rdi
mov [ rsp + 0x190 ], rax
mulx rax, rdi, [ r10 + 0x28 ]
add r8, rbx
adcx r12, r14
mov rdx, [ r10 + 0x10 ]
mulx rbx, r14, [ rsi + 0x20 ]
test al, al
adox r8, rbp
adox r9, r12
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], r15
adcx r8, rcx
adcx r13, r9
mov r15, 0x3a 
bzhi rbp, r8, r15
adox r11, r14
adox rbx, [ rsp + 0x190 ]
mov rcx, rdx
mov rdx, [ r10 + 0x28 ]
mulx r14, r12, [ rsi + 0x0 ]
mov rdx, r12
test al, al
adox rdx, [ rsp + 0x160 ]
adox r14, [ rsp + 0x158 ]
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, r12, [ r10 + 0x20 ]
adcx r11, [ rsp + 0x170 ]
adcx rbx, [ rsp + 0x168 ]
shrd r8, r13, 58
shr r13, 58
xor rdx, rdx
adox r9, r8
adox r13, r14
adcx r11, r12
adcx r15, rbx
xor r14, r14
adox r11, rdi
adox rax, r15
mov rdx, 0x3ffffffffffffff 
mov rdi, r9
and rdi, rdx
shrd r9, r13, 58
shr r13, 58
mov rdx, [ r10 + 0x30 ]
mulx rbx, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mulx r15, r8, [ r10 + 0x10 ]
mov [ rcx + 0x28 ], rdi
add r11, r12
adcx rbx, rax
mov rdx, [ rsi + 0x30 ]
mulx rdi, rax, [ r10 + 0x8 ]
xor rdx, rdx
adox r11, r9
adox r13, rbx
mov r14, rax
adcx r14, [ rsp + 0x88 ]
adcx rdi, [ rsp + 0x80 ]
mov rdx, [ r10 + 0x18 ]
mulx r12, r9, [ rsi + 0x20 ]
mov rdx, [ r10 + 0x10 ]
mulx rax, rbx, [ rsi + 0x28 ]
add r14, rbx
adcx rax, rdi
add r14, r9
adcx r12, rax
mov rdx, [ rsi + 0x20 ]
mulx r9, rdi, [ r10 + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mulx rax, rbx, [ r10 + 0x38 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x198 ], rbp
mulx rbp, rcx, [ r10 + 0x20 ]
xor rdx, rdx
adox r14, rcx
adox rbp, r12
mov r12, r8
adcx r12, [ rsp + 0xa0 ]
adcx r15, [ rsp + 0x98 ]
mov rdx, [ r10 + 0x18 ]
mulx rcx, r8, [ rsi + 0x28 ]
xor rdx, rdx
adox r12, r8
adox rcx, r15
adcx r12, rdi
adcx r9, rcx
mov rdx, [ r10 + 0x28 ]
mulx r15, rdi, [ rsi + 0x18 ]
test al, al
adox r12, rdi
adox r15, r9
mov rdx, [ r10 + 0x28 ]
mulx rcx, r8, [ rsi + 0x10 ]
adcx r14, r8
adcx rcx, rbp
mov rdx, [ r10 + 0x40 ]
mulx r9, rbp, [ rsi + 0x0 ]
mov rdx, [ r10 + 0x30 ]
mulx r8, rdi, [ rsi + 0x8 ]
xor rdx, rdx
adox r14, rdi
adox r8, rcx
mov rdx, [ rsi + 0x8 ]
mulx rdi, rcx, [ r10 + 0x38 ]
adcx r14, rbx
adcx rax, r8
mov rdx, [ rsi + 0x10 ]
mulx r8, rbx, [ r10 + 0x30 ]
add r12, rbx
adcx r8, r15
add r12, rcx
adcx rdi, r8
mov rdx, r11
shrd rdx, r13, 58
shr r13, 58
xor r15, r15
adox r12, rbp
adox r9, rdi
adcx r14, rdx
adcx r13, rax
mov rbp, r14
shrd rbp, r13, 58
shr r13, 58
test al, al
adox r12, rbp
adox r13, r9
mov rcx, r12
shrd rcx, r13, 57
shr r13, 57
test al, al
adox rcx, [ rsp + 0x150 ]
adox r13, r15
mov rax, 0x3a 
bzhi rbx, rcx, rax
mov r8, 0x1ffffffffffffff 
and r12, r8
shrd rcx, r13, 58
add rcx, [ rsp + 0x188 ]
mov rdi, rcx
shr rdi, 58
add rdi, [ rsp + 0x180 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], rbx
bzhi r9, rcx, rax
bzhi rbp, r11, rax
bzhi r11, r14, rax
mov r14, [ rsp + 0x198 ]
mov [ rdx + 0x20 ], r14
mov [ rdx + 0x38 ], r11
mov [ rdx + 0x10 ], rdi
mov [ rdx + 0x40 ], r12
mov [ rdx + 0x8 ], r9
mov [ rdx + 0x30 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 544
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.3223
; seed 1545495475469056 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 9798702 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 222271 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.022683718721112245
; number reverted permutation / tried permutation: 70913 / 95258 =74.443%
; number reverted decision / tried decision: 58734 / 94741 =61.994%
; validated in 5.211s
