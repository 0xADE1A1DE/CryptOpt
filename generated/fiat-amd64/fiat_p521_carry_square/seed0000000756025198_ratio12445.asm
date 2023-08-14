SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 424
mov rax, [ rsi + 0x18 ]
lea r10, [rax + rax]
mov rax, [ rsi + 0x10 ]
lea r11, [rax + rax]
imul rax, [ rsi + 0x38 ], 0x2
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r10
mov rdx, 0x1 
mov [ rsp - 0x58 ], r15
shlx r15, [ rsi + 0x28 ], rdx
mov rdx, rax
mov [ rsp - 0x50 ], rdi
mulx rdi, rax, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], rdi
mov rdi, [ rsi + 0x40 ]
mov [ rsp - 0x40 ], rax
mov rax, rdi
shl rax, 0x2
mov rdi, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], r14
mulx r14, r11, rax
imul rdx, [ rsi + 0x38 ], 0x4
mov [ rsp - 0x28 ], r13
mov [ rsp - 0x20 ], r8
mulx r8, r13, [ rsi + 0x30 ]
mov [ rsp - 0x18 ], rcx
mov [ rsp - 0x10 ], r12
mulx r12, rcx, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], rbp
mov [ rsp + 0x0 ], r15
mulx r15, rbp, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], rbx
mov rbx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], r9
lea r9, [rbx + rbx]
xchg rdx, r9
mov [ rsp + 0x18 ], r15
mulx r15, rbx, [ rsi + 0x18 ]
mov [ rsp + 0x20 ], rbp
mov rbp, [ rsi + 0x40 ]
mov [ rsp + 0x28 ], r15
mov r15, rbp
shl r15, 0x1
mov rbp, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x30 ], rbx
mov [ rsp + 0x38 ], r12
mulx r12, rbx, r15
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], r12
mov [ rsp + 0x48 ], rbx
mulx rbx, r12, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], rbx
mov [ rsp + 0x58 ], r12
mulx r12, rbx, r10
mov rdx, [ rsi + 0x30 ]
mov r10, rdx
shl r10, 0x2
mov rdx, r10
mov [ rsp + 0x60 ], r12
mulx r12, r10, [ rsi + 0x28 ]
mov [ rsp + 0x68 ], rbx
xor rbx, rbx
adox r13, r11
adox r14, r8
adcx r10, rcx
adcx r12, [ rsp + 0x38 ]
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r8, rax
xor rdx, rdx
adox r10, r8
adox rcx, r12
mov rdx, rbp
mulx rbp, rbx, [ rsi + 0x10 ]
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], rbp
mulx rbp, r8, r15
imul rdx, [ rsi + 0x30 ], 0x2
mov r15, [ rsi + 0x28 ]
mov [ rsp + 0x78 ], rbp
lea rbp, [ 4 * r15]
mov [ rsp + 0x80 ], r8
mulx r8, r15, [ rsi + 0x30 ]
mov [ rsp + 0x88 ], rbx
mov rbx, [ rsp + 0x48 ]
test al, al
adox rbx, [ rsp + 0x30 ]
mov [ rsp + 0x90 ], r14
mov r14, [ rsp + 0x40 ]
adox r14, [ rsp + 0x28 ]
mov [ rsp + 0x98 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], rbx
mov [ rsp + 0xa8 ], r13
mulx r13, rbx, r11
mov rdx, rbp
mov [ rsp + 0xb0 ], rcx
mulx rcx, rbp, [ rsi + 0x20 ]
adcx rbp, rbx
adcx r13, rcx
xor rdx, rdx
adox r15, [ rsp + 0x20 ]
adox r8, [ rsp + 0x18 ]
mov rdx, r9
mulx rbx, r9, [ rsi + 0x10 ]
adcx rbp, r9
adcx rbx, r13
add r10, [ rsp + 0x10 ]
mov rcx, [ rsp + 0xb0 ]
adcx rcx, [ rsp + 0x8 ]
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xb8 ], rcx
mulx rcx, r9, rax
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc0 ], r10
mov [ rsp + 0xc8 ], r8
mulx r8, r10, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd0 ], r15
mov [ rsp + 0xd8 ], r8
mulx r8, r15, r11
xor rdx, rdx
adox rbp, r9
adox rcx, rbx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r11, r14
adcx r10, r15
adcx r8, [ rsp + 0xd8 ]
mov rdx, r13
mulx r9, r13, [ rsi + 0x18 ]
xor rdx, rdx
adox r10, r13
adox r9, r8
mov rdx, rax
mulx r15, rax, [ rsi + 0x10 ]
adcx rbp, [ rsp - 0x8 ]
adcx rcx, [ rsp - 0x10 ]
test al, al
adox r10, rax
adox r15, r9
mov r8, 0x3a 
bzhi r13, rbp, r8
mov r9, [ rsi + 0x8 ]
mov rax, r9
shl rax, 0x1
mov r9, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xe0 ], r13
mulx r13, r8, rax
shrd rbp, rcx, 58
shr rcx, 58
add r10, r8
adcx r13, r15
test al, al
adox r10, rbp
adox rcx, r13
mov rdx, r10
shrd rdx, rcx, 58
shr rcx, 58
mov r15, [ rsp + 0xa8 ]
xor rax, rax
adox r15, [ rsp - 0x18 ]
mov r8, [ rsp + 0x90 ]
adox r8, [ rsp - 0x20 ]
adcx r15, [ rsp - 0x28 ]
adcx r8, [ rsp - 0x30 ]
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mulx rax, r13, [ rsp - 0x38 ]
mov rdx, r9
mov [ rsp + 0xe8 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
mov [ rsp + 0xf0 ], r11
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf8 ], rdi
mov [ rsp + 0x100 ], r8
mulx r8, rdi, [ rsp - 0x38 ]
mov rdx, r9
add rdx, [ rsp + 0xd0 ]
adcx rbx, [ rsp + 0xc8 ]
mov r9, r13
add r9, [ rsp + 0xc0 ]
adcx rax, [ rsp + 0xb8 ]
test al, al
adox rdx, rdi
adox r8, rbx
adcx r9, rbp
adcx rcx, rax
add rdx, [ rsp + 0x58 ]
adcx r8, [ rsp + 0x50 ]
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx rdi, r13, rdx
mov rdx, [ rsi + 0x38 ]
mulx rax, rbx, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x108 ], r15
mov [ rsp + 0x110 ], rax
mulx rax, r15, r12
mov rdx, 0x3ffffffffffffff 
and r10, rdx
mov [ rsp + 0x118 ], r10
mov r10, r9
and r10, rdx
shrd r9, rcx, 58
shr rcx, 58
xor rdx, rdx
adox rbp, r9
adox rcx, r8
adcx rbx, r13
adcx rdi, [ rsp + 0x110 ]
mov r8, rbp
shrd r8, rcx, 58
shr rcx, 58
mov r13, 0x3ffffffffffffff 
and rbp, r13
mov r9, r15
adox r9, [ rsp + 0x108 ]
adox rax, [ rsp + 0x100 ]
adcx r9, r8
adcx rcx, rax
mov r15, r9
shrd r15, rcx, 58
shr rcx, 58
mov rdx, [ rsi + 0x30 ]
mulx rax, r8, r11
mov rdx, [ rsp + 0xf8 ]
mulx r13, r11, [ rsi + 0x38 ]
mov [ rsp + 0x120 ], rbp
xor rbp, rbp
adox r11, r8
adox rax, r13
adcx r11, [ rsp + 0x68 ]
adcx rax, [ rsp + 0x60 ]
mov r8, 0x3ffffffffffffff 
and r9, r8
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x20 ], r9
mov r9, rdx
mov rdx, [ rsi + 0x8 ]
mulx r8, rbp, r12
adox r11, rbp
adox r8, rax
mov rdx, r14
mulx r12, r14, [ rsi + 0x0 ]
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r13, rbp, [ rsp + 0x0 ]
adcx r11, rbp
adcx r13, r8
test al, al
adox r11, r15
adox rcx, r13
mov rdx, [ rsp + 0x0 ]
mulx r8, r15, [ rsi + 0x8 ]
adcx rbx, [ rsp + 0x88 ]
adcx rdi, [ rsp + 0x70 ]
test al, al
adox rbx, r15
adox r8, rdi
adcx rbx, r14
adcx r12, r8
mulx rbp, r14, [ rsi + 0x10 ]
mov r13, r14
test al, al
adox r13, [ rsp + 0xa0 ]
adox rbp, [ rsp + 0x98 ]
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, rdi, rdx
mov rdx, r11
shrd rdx, rcx, 58
shr rcx, 58
mov r14, 0x3ffffffffffffff 
and r11, r14
adox rbx, rdx
adox rcx, r12
adcx r13, [ rsp + 0xf0 ]
adcx rbp, [ rsp + 0xe8 ]
mov r12, rbx
and r12, r14
adox r13, [ rsp - 0x40 ]
adox rbp, [ rsp - 0x48 ]
shrd rbx, rcx, 58
shr rcx, 58
mov rdx, r15
mulx r14, r15, [ rsi + 0x18 ]
xor rdx, rdx
adox rdi, r15
adox r14, r8
adcx r13, rbx
adcx rcx, rbp
mov r8, 0x3ffffffffffffff 
mov rbp, r13
and rbp, r8
mov rdx, rax
mulx rbx, rax, [ rsi + 0x10 ]
adox rdi, rax
adox rbx, r14
mov rdx, r9
mulx r15, r9, [ rsi + 0x8 ]
shrd r13, rcx, 58
shr rcx, 58
xor rdx, rdx
adox rdi, r9
adox r15, rbx
adcx rdi, [ rsp + 0x80 ]
adcx r15, [ rsp + 0x78 ]
xor r14, r14
adox rdi, r13
adox rcx, r15
mov rdx, rdi
shrd rdx, rcx, 57
shr rcx, 57
test al, al
adox rdx, [ rsp + 0xe0 ]
adox rcx, r14
mov rax, rdx
shrd rax, rcx, 58
add rax, [ rsp + 0x118 ]
mov rbx, rax
shr rbx, 58
lea rbx, [ rbx + r10 ]
and rdx, r8
and rax, r8
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x8 ], rax
mov r9, 0x1ffffffffffffff 
and rdi, r9
mov [ r10 + 0x40 ], rdi
mov [ r10 + 0x28 ], r11
mov [ r10 + 0x38 ], rbp
mov r11, [ rsp + 0x120 ]
mov [ r10 + 0x18 ], r11
mov [ r10 + 0x0 ], rdx
mov [ r10 + 0x10 ], rbx
mov [ r10 + 0x30 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 424
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.2445
; seed 2300274505315282 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4207620 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=92, initial num_batches=31): 132065 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.031387102447464364
; number reverted permutation / tried permutation: 52853 / 95027 =55.619%
; number reverted decision / tried decision: 50950 / 94972 =53.647%
; validated in 1.545s
