SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 408
imul rax, [ rsi + 0x30 ], 0x4
mov rdx, rax
mulx r10, rax, [ rsi + 0x28 ]
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r11
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x78 ], rbp
lea rbp, [ 4 * rdx]
mov rdx, 0x1 
mov [ rsp - 0x70 ], r12
shlx r12, [ rsi + 0x40 ], rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r12
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r15
mulx r15, rdi, r11
mov rdx, r12
mulx r11, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], r12
mulx r12, r11, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x28 ], r14
mov r14, rdx
shl r14, 0x2
mov rdx, r14
mov [ rsp - 0x20 ], r13
mulx r13, r14, [ rsi + 0x28 ]
mov [ rsp - 0x18 ], r13
mov [ rsp - 0x10 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], r15
mov r15, 0x2 
mov [ rsp + 0x0 ], rdi
shlx rdi, [ rsi + 0x40 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x8 ], r8
mov [ rsp + 0x10 ], rcx
mulx rcx, r8, rdi
mov rdx, rdi
mov [ rsp + 0x18 ], rcx
mulx rcx, rdi, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], rcx
mov rcx, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x28 ], rdi
mov [ rsp + 0x30 ], r8
mulx r8, rdi, r15
mov rdx, 0x1 
mov [ rsp + 0x38 ], r8
shlx r8, [ rsi + 0x20 ], rdx
mov rdx, rbp
mov [ rsp + 0x40 ], rdi
mulx rdi, rbp, [ rsi + 0x20 ]
xor rdx, rdx
adox rbp, r9
adox rbx, rdi
mov rdx, r8
mulx r9, r8, [ rsi + 0x10 ]
adcx rax, r13
adcx r14, r10
xchg rdx, rcx
mulx r13, r10, [ rsi + 0x18 ]
imul rdi, [ rsi + 0x28 ], 0x2
mov [ rsp + 0x48 ], r9
xor r9, r9
adox rax, r10
adox r13, r14
mov r14, rdx
mov rdx, [ rsi + 0x28 ]
mulx r9, r10, rdi
mov rdx, r15
mov [ rsp + 0x50 ], r13
mulx r13, r15, [ rsi + 0x10 ]
mov [ rsp + 0x58 ], rax
mov rax, r11
adcx rax, [ rsp + 0x30 ]
adcx r12, [ rsp + 0x18 ]
add rbp, r15
adcx r13, rbx
add rbp, [ rsp + 0x28 ]
adcx r13, [ rsp + 0x20 ]
mulx rbx, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], rbx
mulx rbx, r15, rdi
add rbp, [ rsp + 0x10 ]
adcx r13, [ rsp + 0x8 ]
xor rdx, rdx
adox rax, r8
adox r12, [ rsp + 0x48 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x68 ], rbx
mulx rbx, r8, rcx
adcx r10, [ rsp + 0x0 ]
adcx r9, [ rsp - 0x8 ]
mov rdx, r14
mov [ rsp + 0x70 ], r15
mulx r15, r14, [ rsi + 0x10 ]
test al, al
adox r10, r11
adox r9, [ rsp + 0x60 ]
mov r11, [ rsi + 0x8 ]
mov [ rsp + 0x78 ], rbx
mov rbx, r11
shl rbx, 0x1
mov r11, rbp
shrd r11, r13, 58
shr r13, 58
xchg rdx, rbx
mov [ rsp + 0x80 ], r8
mov [ rsp + 0x88 ], r12
mulx r12, r8, [ rsi + 0x0 ]
add r10, r14
adcx r15, r9
add r10, r8
adcx r12, r15
mov r14, [ rsi + 0x10 ]
lea r9, [r14 + r14]
mov r14, 0x3ffffffffffffff 
and rbp, r14
adox r10, r11
adox r13, r12
mov rdx, [ rsi + 0x20 ]
mulx r8, r11, rbx
mov rdx, [ rsi + 0x30 ]
mov r15, rdx
shl r15, 0x1
mov rdx, r15
mulx r12, r15, [ rsi + 0x30 ]
mov [ rsp + 0x90 ], rbp
mulx rbp, r14, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], rbp
mov [ rsp + 0xa0 ], r14
mulx r14, rbp, [ rsi + 0x8 ]
test al, al
adox r15, [ rsp - 0x10 ]
adox r12, [ rsp - 0x18 ]
mov [ rsp + 0xa8 ], r14
mov r14, [ rsp - 0x20 ]
mov [ rsp + 0xb0 ], rbp
mov rbp, r14
adcx rbp, [ rsp + 0x58 ]
mov [ rsp + 0xb8 ], rax
mov rax, [ rsp - 0x28 ]
adcx rax, [ rsp + 0x50 ]
xor r14, r14
adox r15, r11
adox r8, r12
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r14, r12, r9
adcx rbp, r12
adcx r14, rax
mov rdx, r10
shrd rdx, r13, 58
shr r13, 58
mov rax, 0x3ffffffffffffff 
and r10, rax
adox rbp, rdx
adox r13, r14
imul r12, [ rsi + 0x18 ], 0x2
mov rdx, r12
mulx r14, r12, [ rsi + 0x10 ]
mov [ rsp + 0xc0 ], r10
mulx r10, rax, [ rsi + 0x0 ]
mov [ rsp + 0xc8 ], r10
mov r10, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xd0 ], rax
mov [ rsp + 0xd8 ], r13
mulx r13, rax, rbx
mov rdx, 0x1 
mov [ rsp + 0xe0 ], rbp
shlx rbp, [ rsi + 0x38 ], rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xe8 ], r14
mov [ rsp + 0xf0 ], r12
mulx r12, r14, r9
xor rdx, rdx
adox r15, r14
adox r12, r8
mov rdx, rbp
mulx r9, rbp, [ rsi + 0x38 ]
adcx rbp, rax
adcx r13, r9
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, rax, rdx
test al, al
adox rbp, [ rsp + 0xf0 ]
adox r13, [ rsp + 0xe8 ]
mov rdx, [ rsp + 0xd8 ]
mov r9, [ rsp + 0xe0 ]
shrd r9, rdx, 58
shr rdx, 58
mov [ rsp + 0xf8 ], r13
mov r13, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x100 ], rbp
mov [ rsp + 0x108 ], r14
mulx r14, rbp, rbx
xor rdx, rdx
adox r15, [ rsp + 0xd0 ]
adox r12, [ rsp + 0xc8 ]
adcx r15, r9
adcx r13, r12
mov rbx, rbp
xor r9, r9
adox rbx, [ rsp + 0x40 ]
adox r14, [ rsp + 0x38 ]
mov rdx, r10
mulx rbp, r10, [ rsi + 0x8 ]
adcx rbx, rax
adcx r14, [ rsp + 0x108 ]
xor rdx, rdx
adox rbx, r10
adox rbp, r14
mov rdx, [ rsi + 0x0 ]
mulx rax, r9, rdi
mov rdx, rcx
mulx r12, rcx, [ rsi + 0x8 ]
mov r10, rcx
adcx r10, [ rsp + 0x100 ]
adcx r12, [ rsp + 0xf8 ]
mulx rcx, r14, [ rsi + 0x0 ]
test al, al
adox r10, r9
adox rax, r12
mov rdx, r15
shrd rdx, r13, 58
shr r13, 58
xor r9, r9
adox rbx, r14
adox rcx, rbp
adcx rbx, rdx
adcx r13, rcx
mov rbp, rbx
shrd rbp, r13, 58
shr r13, 58
mov rdx, [ rsi + 0x18 ]
mulx r14, r12, rdi
mov rdx, rdi
mulx rcx, rdi, [ rsi + 0x8 ]
mov rdx, rdi
mov [ rsp + 0x110 ], r14
xor r14, r14
adox rdx, [ rsp + 0xb8 ]
adox rcx, [ rsp + 0x88 ]
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, rdi, r11
adcx r10, rbp
adcx r13, rax
xor rdx, rdx
adox r9, [ rsp + 0xa0 ]
adox rcx, [ rsp + 0x98 ]
mov rdx, [ rsi + 0x20 ]
mulx rax, r11, rdx
adcx r11, r12
adcx rax, [ rsp + 0x110 ]
mov rdx, 0x3a 
bzhi rbp, r10, rdx
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x28 ], rbp
shrd r10, r13, 58
shr r13, 58
test al, al
adox r9, r10
adox r13, rcx
adcx r11, rdi
adcx r14, rax
mov rdi, [ rsp - 0x40 ]
xor rcx, rcx
adox rdi, [ rsp + 0x80 ]
mov rax, [ rsp - 0x48 ]
adox rax, [ rsp + 0x78 ]
adcx rdi, [ rsp + 0x70 ]
adcx rax, [ rsp + 0x68 ]
bzhi rbp, r9, rdx
mov [ r12 + 0x30 ], rbp
adox rdi, [ rsp + 0xb0 ]
adox rax, [ rsp + 0xa8 ]
mov rdx, [ rsi + 0x0 ]
mulx rbp, r10, r8
xor rdx, rdx
adox rdi, r10
adox rbp, rax
shrd r9, r13, 58
shr r13, 58
add rdi, r9
adcx r13, rbp
mov rcx, 0x3ffffffffffffff 
mov rax, rdi
and rax, rcx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r10, r8
mov [ r12 + 0x38 ], rax
shrd rdi, r13, 58
shr r13, 58
xor rdx, rdx
adox r11, r10
adox rbp, r14
adcx r11, [ rsp - 0x30 ]
adcx rbp, [ rsp - 0x38 ]
add r11, rdi
adcx r13, rbp
mov r8, r11
shrd r8, r13, 57
shr r13, 57
mov r14, [ rsp + 0xe0 ]
and r14, rcx
adox r8, [ rsp + 0x90 ]
adox r13, rdx
mov r9, r8
shrd r9, r13, 58
and r8, rcx
add r9, [ rsp + 0xc0 ]
mov rax, r9
and rax, rcx
mov r10, 0x1ffffffffffffff 
and r11, r10
and rbx, rcx
mov [ r12 + 0x8 ], rax
shr r9, 58
mov [ r12 + 0x40 ], r11
lea r9, [ r9 + r14 ]
mov [ r12 + 0x10 ], r9
and r15, rcx
mov [ r12 + 0x18 ], r15
mov [ r12 + 0x20 ], rbx
mov [ r12 + 0x0 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 408
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.3019
; seed 3258542119385459 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2711457 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=88, initial num_batches=31): 101824 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0375532416704377
; number reverted permutation / tried permutation: 74658 / 94902 =78.669%
; number reverted decision / tried decision: 68352 / 95097 =71.876%
; validated in 1.721s
