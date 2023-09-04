SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 432
mov rax, [ rdx + 0x30 ]
lea r10, [rax + rax]
mov rax, [ rdx + 0x40 ]
lea r11, [rax + rax]
mov rax, rdx
mov rdx, [ rsi + 0x38 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r11
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
imul rdx, [ rax + 0x28 ], 0x2
mov [ rsp - 0x68 ], r13
mov r13, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, r13
mov [ rsp - 0x50 ], rdi
mulx rdi, r13, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], r8
mov r8, [ rax + 0x18 ]
mov [ rsp - 0x40 ], rcx
mov rcx, r8
shl rcx, 0x1
mov r8, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x38 ], r15
mov [ rsp - 0x30 ], r14
mulx r14, r15, [ rax + 0x10 ]
mov rdx, r10
mov [ rsp - 0x28 ], r14
mulx r14, r10, [ rsi + 0x38 ]
mov [ rsp - 0x20 ], r15
mov r15, [ rax + 0x8 ]
mov [ rsp - 0x18 ], r12
mov r12, r15
shl r12, 0x1
mov r15, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x10 ], rbp
mov [ rsp - 0x8 ], rdi
mulx rdi, rbp, r12
mov rdx, 0x1 
shlx r12, [ rax + 0x10 ], rdx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x0 ], r13
mov [ rsp + 0x8 ], rcx
mulx rcx, r13, [ rsi + 0x0 ]
mov rdx, r12
mov [ rsp + 0x10 ], rcx
mulx rcx, r12, [ rsi + 0x38 ]
mov [ rsp + 0x18 ], r13
mov r13, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x20 ], rbx
mov [ rsp + 0x28 ], r9
mulx r9, rbx, r8
xor rdx, rdx
adox rbp, r12
adox rcx, rdi
imul rdi, [ rax + 0x38 ], 0x2
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x30 ], rcx
mulx rcx, r12, r15
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], rcx
mov [ rsp + 0x40 ], r12
mulx r12, rcx, rdi
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x48 ], r12
mov [ rsp + 0x50 ], rcx
mulx rcx, r12, [ rsi + 0x10 ]
add rbx, r10
adcx r14, r9
mov rdx, 0x1 
shlx r10, [ rax + 0x20 ], rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x58 ], rcx
mulx rcx, r9, rdi
xor rdx, rdx
adox rbx, r9
adox rcx, r14
mov rdx, r10
mulx r14, r10, [ rsi + 0x38 ]
adcx rbx, [ rsp + 0x28 ]
adcx rcx, [ rsp + 0x20 ]
mov r9, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x60 ], r12
mov [ rsp + 0x68 ], rcx
mulx rcx, r12, [ rsp + 0x8 ]
mov rdx, r13
mov [ rsp + 0x70 ], rbx
mulx rbx, r13, [ rsi + 0x40 ]
mov rdx, r9
mov [ rsp + 0x78 ], r14
mulx r14, r9, [ rsi + 0x28 ]
add rbp, r12
adcx rcx, [ rsp + 0x30 ]
mov r12, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x80 ], r10
mov [ rsp + 0x88 ], r11
mulx r11, r10, [ rsp + 0x8 ]
test al, al
adox rbp, r9
adox r14, rcx
adcx r13, r10
adcx r11, rbx
mov rdx, [ rsi + 0x10 ]
mulx r9, rbx, rdi
xor rdx, rdx
adox rbp, [ rsp + 0x0 ]
adox r14, [ rsp - 0x8 ]
mov rdx, r12
mulx rcx, r12, [ rsi + 0x30 ]
mov r10, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x90 ], r11
mov [ rsp + 0x98 ], r13
mulx r13, r11, r15
adcx rbp, r11
adcx r13, r14
mov rdx, [ rsi + 0x38 ]
mulx r11, r14, r8
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xa0 ], rcx
mov [ rsp + 0xa8 ], r12
mulx r12, rcx, [ rsi + 0x0 ]
test al, al
adox rbp, rbx
adox r9, r13
mov rdx, [ rsi + 0x40 ]
mulx r13, rbx, r10
mov rdx, [ rsp + 0x88 ]
mov [ rsp + 0xb0 ], r12
mulx r12, r10, [ rsi + 0x8 ]
adcx rbp, r10
adcx r12, r9
xor r9, r9
adox rbx, r14
adox r11, r13
mov r14, rdx
mov rdx, [ rsi + 0x30 ]
mulx r10, r13, r8
adcx rbp, rcx
adcx r12, [ rsp + 0xb0 ]
mov rdx, [ rsi + 0x40 ]
mulx r9, rcx, [ rsp + 0x8 ]
add rcx, [ rsp + 0x80 ]
adcx r9, [ rsp + 0x78 ]
mov rdx, r15
mov [ rsp + 0xb8 ], r12
mulx r12, r15, [ rsi + 0x30 ]
add rbx, r15
adcx r12, r11
xor r11, r11
adox rcx, r13
adox r10, r9
mov r13, rdx
mov rdx, [ rsi + 0x28 ]
mulx r15, r9, rdi
adcx rbx, r9
adcx r15, r12
mov rdx, r13
mulx r12, r13, [ rsi + 0x28 ]
mulx r11, r9, [ rsi + 0x20 ]
test al, al
adox rcx, r13
adox r12, r10
mov rdx, [ rsi + 0x28 ]
mulx r13, r10, r8
mov rdx, [ rsp + 0xa8 ]
mov r8, rdx
adcx r8, [ rsp + 0x98 ]
mov [ rsp + 0xc0 ], r15
mov r15, [ rsp + 0xa0 ]
adcx r15, [ rsp + 0x90 ]
xor rdx, rdx
adox r8, r10
adox r13, r15
adcx r8, r9
adcx r11, r13
mov rdx, [ rsi + 0x18 ]
mulx r10, r9, rdi
mov rdx, [ rsi + 0x40 ]
mulx r13, r15, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xc8 ], rbx
mov [ rsp + 0xd0 ], rbp
mulx rbp, rbx, [ rsi + 0x38 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xd8 ], r12
mov [ rsp + 0xe0 ], rcx
mulx rcx, r12, [ rsi + 0x8 ]
xor rdx, rdx
adox r8, r9
adox r10, r11
mov rdx, [ rsi + 0x10 ]
mulx r9, r11, r14
adcx r8, r11
adcx r9, r10
xor rdx, rdx
adox r8, r12
adox rcx, r9
adcx r15, rbx
adcx rbp, r13
mov rdx, [ rax + 0x8 ]
mulx rbx, r13, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mulx r10, r12, [ rsi + 0x10 ]
xor rdx, rdx
adox r8, r13
adox rbx, rcx
mov r11, [ rsp + 0x50 ]
mov r9, r11
adcx r9, [ rsp + 0xe0 ]
mov rcx, [ rsp + 0x48 ]
adcx rcx, [ rsp + 0xd8 ]
mov rdx, [ rsi + 0x18 ]
mulx r13, r11, r14
add r9, r11
adcx r13, rcx
xor rdx, rdx
adox r9, r12
adox r10, r13
adcx r9, [ rsp - 0x10 ]
adcx r10, [ rsp - 0x18 ]
mov r12, [ rsp + 0xb8 ]
mov rcx, [ rsp + 0xd0 ]
shrd rcx, r12, 58
shr r12, 58
test al, al
adox r8, rcx
adox r12, rbx
mov rdx, [ rax + 0x8 ]
mulx r11, rbx, [ rsi + 0x30 ]
adcx r15, rbx
adcx r11, rbp
mov rdx, 0x3ffffffffffffff 
mov rbp, r8
and rbp, rdx
mov rdx, [ rsi + 0x28 ]
mulx rcx, r13, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xe8 ], rbp
mulx rbp, rbx, [ rax + 0x10 ]
adox r9, rbx
adox rbp, r10
shrd r8, r12, 58
shr r12, 58
xor rdx, rdx
adox r15, r13
adox rcx, r11
adcx r9, r8
adcx r12, rbp
mov r10, 0x3a 
bzhi r11, r9, r10
mov rdx, [ rsi + 0x18 ]
mulx rbx, r13, [ rax + 0x0 ]
mov rdx, r14
mulx rbp, r14, [ rsi + 0x20 ]
xchg rdx, rdi
mulx r10, r8, [ rsi + 0x40 ]
mov [ rsp + 0xf0 ], r11
mov r11, r14
adox r11, [ rsp + 0xc8 ]
adox rbp, [ rsp + 0xc0 ]
mov [ rsp + 0xf8 ], rcx
mulx rcx, r14, [ rsi + 0x38 ]
mov rdx, r14
test al, al
adox rdx, [ rsp + 0x40 ]
adox rcx, [ rsp + 0x38 ]
adcx r11, r13
adcx rbx, rbp
mov r13, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, rbp, [ rax + 0x8 ]
test al, al
adox r11, rbp
adox r14, rbx
mov rdx, [ rax + 0x18 ]
mulx rbp, rbx, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x100 ], r15
mov [ rsp + 0x108 ], rbp
mulx rbp, r15, [ rsi + 0x8 ]
adcx r11, r15
adcx rbp, r14
shrd r9, r12, 58
shr r12, 58
test al, al
adox r11, [ rsp + 0x18 ]
adox rbp, [ rsp + 0x10 ]
adcx r11, r9
adcx r12, rbp
mov rdx, 0x3a 
bzhi r14, r11, rdx
mov rdx, [ rsi + 0x30 ]
mulx r9, r15, rdi
adox r13, r15
adox r9, rcx
shrd r11, r12, 58
shr r12, 58
mov rdx, [ rsi + 0x20 ]
mulx rbp, rcx, [ rax + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x110 ], r12
mulx r12, r15, [ rax + 0x0 ]
xor rdx, rdx
adox r13, r15
adox r12, r9
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x18 ], r14
mov rdx, [ rax + 0x8 ]
mulx r15, r14, [ rsi + 0x18 ]
mov rdx, rdi
mulx r9, rdi, [ rsi + 0x38 ]
adcx r8, rdi
adcx r9, r10
mov rdx, rcx
add rdx, [ rsp + 0x70 ]
adcx rbp, [ rsp + 0x68 ]
xor r10, r10
adox rdx, r14
adox r15, rbp
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mulx rdi, r14, [ rax + 0x8 ]
adcx r13, r14
adcx rdi, r12
mov rdx, [ rsi + 0x18 ]
mulx rbp, r12, [ rax + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mulx r10, r14, [ rax + 0x10 ]
add rcx, r14
adcx r10, r15
mov rdx, [ rax + 0x28 ]
mulx r14, r15, [ rsi + 0x0 ]
add r13, r12
adcx rbp, rdi
add r13, rbx
adcx rbp, [ rsp + 0x108 ]
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x118 ], r11
mulx r11, r12, [ rax + 0x18 ]
xor rdx, rdx
adox r13, rbx
adox rdi, rbp
adcx rcx, r12
adcx r11, r10
add r13, r15
adcx r14, rdi
mov rdx, [ rsi + 0x28 ]
mulx r15, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ rax + 0x20 ]
mov rdx, [ rsi + 0x30 ]
mulx rdi, r12, [ rax + 0x0 ]
test al, al
adox r8, r12
adox rdi, r9
adcx r8, r10
adcx r15, rdi
mov rdx, [ rax + 0x18 ]
mulx r10, r9, [ rsi + 0x18 ]
xor rdx, rdx
adox rcx, [ rsp - 0x30 ]
adox r11, [ rsp - 0x38 ]
adcx rcx, [ rsp + 0x118 ]
adcx r11, [ rsp + 0x110 ]
mov rdx, [ rax + 0x10 ]
mulx rdi, r12, [ rsi + 0x20 ]
test al, al
adox r8, r12
adox rdi, r15
adcx r8, r9
adcx r10, rdi
mov rdx, rcx
shrd rdx, r11, 58
shr r11, 58
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mulx r12, r9, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x120 ], rbx
mulx rbx, rdi, [ rsi + 0x10 ]
add r8, rdi
adcx rbx, r10
xor rdx, rdx
adox r13, r15
adox r11, r14
mov r14, 0x3a 
bzhi r10, r13, r14
mov rdx, [ rsi + 0x0 ]
mulx rdi, r15, [ rax + 0x30 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x128 ], r10
mulx r10, r14, [ rsi + 0x8 ]
adox r8, r14
adox r10, rbx
mov rdx, [ rsi + 0x10 ]
mulx r14, rbx, [ rax + 0x28 ]
shrd r13, r11, 58
shr r11, 58
xor rdx, rdx
adox r8, r15
adox rdi, r10
adcx r8, r13
adcx r11, rdi
mov r15, r9
xor r10, r10
adox r15, [ rsp + 0x100 ]
adox r12, [ rsp + 0xf8 ]
mov rdx, [ rsi + 0x8 ]
mulx r13, r9, [ rax + 0x30 ]
mov rdx, [ rax + 0x38 ]
mulx r10, rdi, [ rsi + 0x0 ]
adcx r15, rbp
adcx r12, [ rsp + 0x120 ]
test al, al
adox r15, rbx
adox r14, r12
adcx r15, r9
adcx r13, r14
add r15, rdi
adcx r10, r13
mov rdx, [ rsi + 0x20 ]
mulx rbx, rbp, [ rax + 0x20 ]
mov rdx, 0x3a 
bzhi r9, r8, rdx
mov rdx, [ rax + 0x28 ]
mulx r12, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x40 ]
mulx r13, r14, [ rax + 0x0 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x30 ], r9
shrd r8, r11, 58
shr r11, 58
xor r9, r9
adox r14, [ rsp - 0x40 ]
adox r13, [ rsp - 0x48 ]
adcx r15, r8
adcx r11, r10
test al, al
adox r14, [ rsp - 0x20 ]
adox r13, [ rsp - 0x28 ]
mov r10, rdx
mov rdx, [ rsi + 0x28 ]
mulx r9, r8, [ rax + 0x18 ]
adcx r14, r8
adcx r9, r13
xor rdx, rdx
adox r14, rbp
adox rbx, r9
adcx r14, rdi
adcx r12, rbx
mov rdx, [ rax + 0x40 ]
mulx rdi, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, r13, [ rax + 0x38 ]
add r14, [ rsp + 0x60 ]
adcx r12, [ rsp + 0x58 ]
add r14, r13
adcx r8, r12
test al, al
adox r14, rbp
adox rdi, r8
mov rdx, r15
shrd rdx, r11, 58
shr r11, 58
add r14, rdx
adcx r11, rdi
mov r9, 0x1ffffffffffffff 
mov rbx, r14
and rbx, r9
mov rbp, 0x3ffffffffffffff 
and rcx, rbp
shrd r14, r11, 57
shr r11, 57
mov r13, [ rsp + 0xd0 ]
and r13, rbp
adox r14, r13
mov r12, 0x0 
adox r11, r12
mov [ r10 + 0x20 ], rcx
mov r8, [ rsp + 0x128 ]
mov [ r10 + 0x28 ], r8
mov r8, r14
shrd r8, r11, 58
add r8, [ rsp + 0xe8 ]
mov rdi, r8
and rdi, rbp
shr r8, 58
add r8, [ rsp + 0xf0 ]
mov [ r10 + 0x10 ], r8
and r14, rbp
mov [ r10 + 0x8 ], rdi
and r15, rbp
mov [ r10 + 0x40 ], rbx
mov [ r10 + 0x0 ], r14
mov [ r10 + 0x38 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 432
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.3683
; seed 2337499817854235 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 7271403 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=34, initial num_batches=31): 160409 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.022060254396572436
; number reverted permutation / tried permutation: 71530 / 95104 =75.212%
; number reverted decision / tried decision: 59091 / 94895 =62.270%
; validated in 4.882s
