SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 472
mov rax, [ rdx + 0x38 ]
lea r10, [rax + rax]
mov rax, rdx
mov rdx, [ rdx + 0x20 ]
mulx rcx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, r10
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x38 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x38 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x50 ], rdi
lea rdi, [rdx + rdx]
imul rdx, [ rax + 0x20 ], 0x2
mov [ rsp - 0x48 ], r15
mov r15, [ rax + 0x30 ]
mov [ rsp - 0x40 ], r14
lea r14, [r15 + r15]
mov [ rsp - 0x38 ], r13
mulx r13, r15, [ rsi + 0x38 ]
mov [ rsp - 0x30 ], r12
mov r12, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], r11
mulx r11, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x18 ], r11
lea r11, [rdx + rdx]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x10 ], rcx
mov [ rsp - 0x8 ], rbp
mulx rbp, rcx, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x0 ], rbp
mov [ rsp + 0x8 ], rcx
mulx rcx, rbp, [ rax + 0x0 ]
mov rdx, 0x1 
mov [ rsp + 0x10 ], rbx
shlx rbx, [ rax + 0x18 ], rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], rcx
mov [ rsp + 0x20 ], rbp
mulx rbp, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x28 ], rbp
mov [ rsp + 0x30 ], rcx
mulx rcx, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x38 ], rcx
mov [ rsp + 0x40 ], rbp
mulx rbp, rcx, rbx
mov rdx, rbx
mov [ rsp + 0x48 ], r9
mulx r9, rbx, [ rsi + 0x40 ]
xchg rdx, r11
mov [ rsp + 0x50 ], r8
mov [ rsp + 0x58 ], r14
mulx r14, r8, [ rsi + 0x40 ]
xchg rdx, r11
mov [ rsp + 0x60 ], rbp
mov [ rsp + 0x68 ], rcx
mulx rcx, rbp, [ rsi + 0x38 ]
add r8, rbp
adcx rcx, r14
test al, al
adox rbx, r15
adox r13, r9
imul r15, [ rax + 0x40 ], 0x2
mov rdx, [ rsi + 0x38 ]
mulx r14, r9, [ rax + 0x0 ]
mov rdx, r15
mulx rbp, r15, [ rsi + 0x10 ]
mov [ rsp + 0x70 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x78 ], r15
mov [ rsp + 0x80 ], rcx
mulx rcx, r15, r10
mov rdx, rbp
mov [ rsp + 0x88 ], rcx
mulx rcx, rbp, [ rsi + 0x40 ]
mov [ rsp + 0x90 ], r15
mov [ rsp + 0x98 ], r8
mulx r8, r15, [ rsi + 0x8 ]
mov [ rsp + 0xa0 ], r8
xor r8, r8
adox rbp, r9
adox r14, rcx
mov r9, rdx
mov rdx, [ rsi + 0x40 ]
mulx r8, rcx, rdi
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa8 ], r14
mulx r14, rdi, r9
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xb0 ], rbp
mov rbp, rdx
shl rbp, 0x1
mov rdx, rbp
mov [ rsp + 0xb8 ], r14
mulx r14, rbp, [ rsi + 0x30 ]
mov [ rsp + 0xc0 ], rdi
xor rdi, rdi
adox rbx, rbp
adox r14, r13
mov r13, rdx
mov rdx, [ rsi + 0x38 ]
mulx rdi, rbp, r11
mov rdx, r12
mulx r11, r12, [ rsi + 0x28 ]
adcx rcx, rbp
adcx rdi, r8
xor r8, r8
adox rcx, [ rsp + 0x68 ]
adox rdi, [ rsp + 0x60 ]
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xc8 ], r15
mulx r15, r8, r10
adcx rcx, r12
adcx r11, rdi
mov rdx, r13
mulx r12, r13, [ rsi + 0x20 ]
test al, al
adox rcx, r13
adox r12, r11
mov rdi, rdx
mov rdx, [ rsi + 0x18 ]
mulx r13, r11, [ rsp + 0x58 ]
adcx rcx, r11
adcx r13, r12
add rcx, r8
adcx r15, r13
mov rdx, rbp
mulx r8, rbp, [ rsi + 0x30 ]
mov r12, rbp
test al, al
adox r12, [ rsp + 0x98 ]
adox r8, [ rsp + 0x80 ]
mov r11, rdx
mov rdx, [ rsi + 0x28 ]
mulx rbp, r13, rdi
adcx r12, r13
adcx rbp, r8
mov rdx, [ rax + 0x0 ]
mulx r13, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd0 ], r15
mov [ rsp + 0xd8 ], rcx
mulx rcx, r15, [ rsp + 0x58 ]
xor rdx, rdx
adox r12, r15
adox rcx, rbp
adcx r12, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x48 ]
mov rdx, [ rax + 0x8 ]
mulx r15, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe0 ], r14
mov [ rsp + 0xe8 ], rbx
mulx rbx, r14, [ rsp + 0x58 ]
xor rdx, rdx
adox r12, [ rsp + 0x78 ]
adox rcx, [ rsp + 0x70 ]
adcx r12, r8
adcx r13, rcx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r8, r9
add r12, rbp
adcx r15, r13
mov rdx, r14
xor rbp, rbp
adox rdx, [ rsp + 0xe8 ]
adox rbx, [ rsp + 0xe0 ]
mov r14, rdx
mov rdx, [ rsi + 0x20 ]
mulx rbp, r13, r10
adcx r14, r13
adcx rbp, rbx
xor rdx, rdx
adox r14, r8
adox rcx, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbx, r8, [ rax + 0x0 ]
mov rdx, [ rsp + 0xd8 ]
adcx rdx, [ rsp + 0xc8 ]
mov r13, [ rsp + 0xd0 ]
adcx r13, [ rsp + 0xa0 ]
xor rbp, rbp
adox rdx, r8
adox rbx, r13
mov r8, rdx
shrd r8, rbx, 58
shr rbx, 58
xor r13, r13
adox r12, r8
adox rbx, r15
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, r15, [ rax + 0x0 ]
adcx r14, r15
adcx r8, rcx
mov rdx, [ rsi + 0x8 ]
mulx r15, rcx, [ rax + 0x8 ]
xor rdx, rdx
adox r14, rcx
adox r15, r8
mov rdx, [ rax + 0x10 ]
mulx r8, r13, [ rsi + 0x0 ]
mov rdx, r12
shrd rdx, rbx, 58
shr rbx, 58
mov rcx, 0x3ffffffffffffff 
and rbp, rcx
adox r14, r13
adox r8, r15
adcx r14, rdx
adcx rbx, r8
and r12, rcx
mov r15, r14
shrd r15, rbx, 58
shr rbx, 58
mov rdx, [ rsi + 0x38 ]
mulx r8, r13, rdi
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0xf0 ], r12
mulx r12, rcx, r11
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xf8 ], rbp
mulx rbp, r11, [ rsp + 0x58 ]
xor rdx, rdx
adox rcx, r13
adox r8, r12
adcx rcx, r11
adcx rbp, r8
mov rdx, [ rsi + 0x28 ]
mulx r12, r13, r10
xor rdx, rdx
adox rcx, r13
adox r12, rbp
mov r11, 0x3ffffffffffffff 
and r14, r11
adox rcx, [ rsp + 0xc0 ]
adox r12, [ rsp + 0xb8 ]
mov rdx, [ rax + 0x10 ]
mulx rbp, r8, [ rsi + 0x8 ]
adcx rcx, [ rsp + 0x20 ]
adcx r12, [ rsp + 0x18 ]
mov rdx, [ rax + 0x18 ]
mulx r11, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x100 ], r14
mov [ rsp + 0x108 ], rbx
mulx rbx, r14, [ rax + 0x8 ]
test al, al
adox rcx, r14
adox rbx, r12
adcx rcx, r8
adcx rbp, rbx
add rcx, r13
adcx r11, rbp
mov rdx, [ rsi + 0x30 ]
mulx r12, r8, r10
mov rdx, rdi
mulx r13, rdi, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x38 ]
mulx rbx, r14, [ rsp + 0x58 ]
xor rdx, rdx
adox rdi, r14
adox rbx, r13
mov rdx, [ rsi + 0x40 ]
mulx r13, rbp, [ rsp + 0x58 ]
adcx rdi, r8
adcx r12, rbx
mov rdx, [ rax + 0x18 ]
mulx r14, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x110 ], r13
mulx r13, rbx, [ rax + 0x20 ]
xor rdx, rdx
adox rcx, r15
adox r11, [ rsp + 0x108 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x118 ], r11
mulx r11, r15, r9
mov rdx, r9
mov [ rsp + 0x120 ], rcx
mulx rcx, r9, [ rsi + 0x38 ]
adcx rdi, r15
adcx r11, r12
mov r12, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x128 ], rbp
mulx rbp, r15, [ rsi + 0x20 ]
xor rdx, rdx
adox rdi, r15
adox rbp, r11
mov rdx, [ rax + 0x8 ]
mulx r15, r11, [ rsi + 0x18 ]
adcx rdi, r11
adcx r15, rbp
test al, al
adox rdi, [ rsp + 0x10 ]
adox r15, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x40 ]
mulx r11, rbp, r10
adcx rbp, r9
adcx rcx, r11
xor rdx, rdx
adox rdi, r8
adox r14, r15
mov rdx, [ rsi + 0x20 ]
mulx r8, r10, [ rax + 0x8 ]
adcx rdi, rbx
adcx r13, r14
mov rdx, [ rsi + 0x30 ]
mulx r9, rbx, r12
mov rdx, [ rax + 0x0 ]
mulx r15, r12, [ rsi + 0x28 ]
mov rdx, [ rsp + 0x90 ]
mov r11, rdx
test al, al
adox r11, [ rsp + 0x128 ]
mov r14, [ rsp + 0x88 ]
adox r14, [ rsp + 0x110 ]
adcx r11, rbx
adcx r9, r14
add r11, r12
adcx r15, r9
mov rdx, [ rsi + 0x30 ]
mulx r12, rbx, [ rax + 0x0 ]
xor rdx, rdx
adox r11, r10
adox r8, r15
adcx r11, [ rsp - 0x10 ]
adcx r8, [ rsp - 0x18 ]
mov rdx, [ rax + 0x8 ]
mulx r14, r10, [ rsi + 0x28 ]
test al, al
adox rbp, rbx
adox r12, rcx
adcx rbp, r10
adcx r14, r12
mov rdx, [ rsi + 0x18 ]
mulx r9, rcx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx rbx, r15, [ rax + 0x10 ]
xor rdx, rdx
adox rbp, r15
adox rbx, r14
adcx rbp, rcx
adcx r9, rbx
add rbp, [ rsp - 0x20 ]
adcx r9, [ rsp - 0x28 ]
mov r10, [ rsp + 0x118 ]
mov r12, [ rsp + 0x120 ]
shrd r12, r10, 58
shr r10, 58
mov rdx, [ rax + 0x8 ]
mulx rcx, r14, [ rsi + 0x38 ]
test al, al
adox rdi, r12
adox r10, r13
mov rdx, 0x3ffffffffffffff 
mov r13, rdi
and r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r15, [ rax + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x130 ], r9
mulx r9, r12, [ rsi + 0x40 ]
adox r11, r15
adox rbx, r8
shrd rdi, r10, 58
shr r10, 58
mov rdx, [ rsi + 0x8 ]
mulx r15, r8, [ rax + 0x20 ]
test al, al
adox r11, r8
adox r15, rbx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x20 ], r13
adcx r12, r14
adcx rcx, r9
mov r14, rdx
mov rdx, [ rax + 0x28 ]
mulx r9, r13, [ rsi + 0x0 ]
xor rdx, rdx
adox r11, r13
adox r9, r15
mov rbx, [ rsp + 0xb0 ]
adcx rbx, [ rsp + 0x8 ]
mov r8, [ rsp + 0xa8 ]
adcx r8, [ rsp + 0x0 ]
mov rdx, [ rax + 0x28 ]
mulx r13, r15, [ rsi + 0x8 ]
xor rdx, rdx
adox rbp, r15
adox r13, [ rsp + 0x130 ]
mov rdx, [ rsi + 0x20 ]
mulx r14, r15, [ rax + 0x20 ]
adcx r11, rdi
adcx r10, r9
mov rdx, [ rax + 0x10 ]
mulx r9, rdi, [ rsi + 0x28 ]
add rbx, rdi
adcx r9, r8
mov rdx, [ rsi + 0x30 ]
mulx rdi, r8, [ rax + 0x10 ]
add r12, r8
adcx rdi, rcx
mov rdx, [ rax + 0x28 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x138 ], r10
mov [ rsp + 0x140 ], r11
mulx r11, r10, [ rax + 0x30 ]
xor rdx, rdx
adox rbx, [ rsp + 0x30 ]
adox r9, [ rsp + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x148 ], r11
mov [ rsp + 0x150 ], r10
mulx r10, r11, [ rax + 0x18 ]
adcx r12, r11
adcx r10, rdi
mov rdx, [ rax + 0x30 ]
mulx r11, rdi, [ rsi + 0x0 ]
test al, al
adox rbp, rdi
adox r11, r13
adcx r12, r15
adcx r14, r10
add rbx, [ rsp + 0x40 ]
adcx r9, [ rsp + 0x38 ]
xor rdx, rdx
adox rbx, rcx
adox r8, r9
mov rdx, [ rax + 0x40 ]
mulx r15, r13, [ rsi + 0x0 ]
mov rdx, [ rsp + 0x138 ]
mov rcx, [ rsp + 0x140 ]
shrd rcx, rdx, 58
shr rdx, 58
test al, al
adox rbp, rcx
adox rdx, r11
mov r10, 0x3a 
bzhi rdi, rbp, r10
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x30 ], rdi
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, rcx, [ rax + 0x30 ]
adox rbx, [ rsp + 0x150 ]
adox r8, [ rsp + 0x148 ]
test al, al
adox rbx, [ rsp - 0x30 ]
adox r8, [ rsp - 0x38 ]
shrd rbp, r9, 58
shr r9, 58
xor rdx, rdx
adox rbx, rbp
adox r9, r8
bzhi r8, rbx, r10
mov [ r11 + 0x38 ], r8
bzhi rbp, [ rsp + 0x120 ], r10
shrd rbx, r9, 58
shr r9, 58
mov rdx, [ rax + 0x28 ]
mulx r10, r8, [ rsi + 0x18 ]
test al, al
adox r12, r8
adox r10, r14
adcx r12, rcx
adcx rdi, r10
add r12, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
xor rdx, rdx
adox r12, r13
adox r15, rdi
adcx r12, rbx
adcx r9, r15
mov r14, 0x39 
bzhi r13, r12, r14
shrd r12, r9, 57
shr r9, 57
xor rcx, rcx
adox r12, [ rsp + 0xf8 ]
adox r9, rcx
mov rdx, r12
shrd rdx, r9, 58
add rdx, [ rsp + 0xf0 ]
mov rbx, 0x3ffffffffffffff 
and r12, rbx
mov [ r11 + 0x0 ], r12
mov r8, rdx
and r8, rbx
mov [ r11 + 0x8 ], r8
mov r10, [ rsp + 0x140 ]
and r10, rbx
shr rdx, 58
mov [ r11 + 0x40 ], r13
add rdx, [ rsp + 0x100 ]
mov [ r11 + 0x18 ], rbp
mov [ r11 + 0x28 ], r10
mov [ r11 + 0x10 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 472
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.3624
; seed 3722321809470495 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6646104 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=44, initial num_batches=31): 143141 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.021537580513335333
; number reverted permutation / tried permutation: 68335 / 94540 =72.282%
; number reverted decision / tried decision: 57744 / 95459 =60.491%
; validated in 5.049s
