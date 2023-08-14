SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 400
imul rax, [ rsi + 0x28 ], 0x2
mov r10, 0x2 
shlx r11, [ rsi + 0x30 ], r10
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x78 ], rbp
mov rbp, rdx
shl rbp, 0x2
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x70 ], r12
lea r12, [ 4 * rdx]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rax
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov r15, rdx
shl r15, 0x1
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r10, r12
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x48 ], rbx
mov rbx, rdx
shl rbx, 0x2
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x40 ], r9
mov [ rsp - 0x38 ], r15
mulx r15, r9, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r8
mov [ rsp - 0x28 ], rcx
mulx rcx, r8, rbx
imul rdx, [ rsi + 0x38 ], 0x2
mov [ rsp - 0x20 ], rcx
mov rcx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x18 ], r8
mov [ rsp - 0x10 ], rdi
mulx rdi, r8, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], r10
mov [ rsp + 0x0 ], rbp
mulx rbp, r10, r11
mov rdx, 0x1 
mov [ rsp + 0x8 ], rdi
shlx rdi, [ rsi + 0x30 ], rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x10 ], r8
mov [ rsp + 0x18 ], rdi
mulx rdi, r8, rcx
mov rdx, rcx
mov [ rsp + 0x20 ], r14
mulx r14, rcx, [ rsi + 0x0 ]
mov [ rsp + 0x28 ], r14
xor r14, r14
adox r8, r9
adox r15, rdi
adcx r13, r10
adcx rbp, [ rsp + 0x20 ]
mov r9, rdx
mov rdx, [ rsi + 0x30 ]
mulx rdi, r10, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], rcx
mulx rcx, r14, r12
mov rdx, r14
test al, al
adox rdx, [ rsp + 0x10 ]
adox rcx, [ rsp + 0x8 ]
mov r14, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x38 ], r15
mov [ rsp + 0x40 ], r8
mulx r8, r15, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x48 ], rcx
mov [ rsp + 0x50 ], r14
mulx r14, rcx, r11
adcx r15, rcx
adcx r14, r8
test al, al
adox r15, [ rsp - 0x8 ]
adox r14, [ rsp - 0x10 ]
adcx r15, [ rsp - 0x18 ]
adcx r14, [ rsp - 0x20 ]
test al, al
adox r15, [ rsp - 0x28 ]
adox r14, [ rsp - 0x30 ]
mov rdx, r12
mulx r11, r12, [ rsi + 0x18 ]
adcx r13, r12
adcx r11, rbp
mov rbp, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r8, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x58 ], rcx
mulx rcx, r12, rbx
imul rdx, [ rsi + 0x20 ], 0x2
mov [ rsp + 0x60 ], r8
xor r8, r8
adox r13, r12
adox rcx, r11
mov r11, rdx
mov rdx, [ rsp - 0x38 ]
mulx r8, r12, [ rsi + 0x0 ]
mov rdx, r11
mov [ rsp + 0x68 ], rax
mulx rax, r11, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], rax
mov rax, r15
shrd rax, r14, 58
shr r14, 58
add r13, r12
adcx r8, rcx
mulx r12, rcx, [ rsi + 0x10 ]
mov [ rsp + 0x78 ], r12
mov r12, 0x3ffffffffffffff 
and r15, r12
adox r13, rax
adox r14, r8
mulx r8, rax, [ rsi + 0x8 ]
mov r12, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x80 ], r15
mov [ rsp + 0x88 ], rcx
mulx rcx, r15, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x90 ], r8
mov r8, rdx
shl r8, 0x1
add r10, r15
adcx rcx, rdi
mov rdx, r8
mulx rdi, r8, [ rsi + 0x8 ]
mov r15, 0x3ffffffffffffff 
mov [ rsp + 0x98 ], rax
mov rax, r13
and rax, r15
mov r15, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xa0 ], rax
mov [ rsp + 0xa8 ], r11
mulx r11, rax, rbp
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], r11
mulx r11, rbp, rbx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb8 ], rax
mov [ rsp + 0xc0 ], r11
mulx r11, rax, rbx
adox r10, rax
adox r11, rcx
adcx r10, r8
adcx rdi, r11
mov rdx, rbp
xor rcx, rcx
adox rdx, [ rsp + 0x50 ]
mov r8, [ rsp + 0xc0 ]
adox r8, [ rsp + 0x48 ]
imul rbp, [ rsi + 0x18 ], 0x2
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, r15
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc8 ], rdi
mulx rdi, r15, rbp
mov rdx, rbx
mov [ rsp + 0xd0 ], r10
mulx r10, rbx, [ rsi + 0x28 ]
add rax, [ rsp - 0x40 ]
adcx r8, [ rsp - 0x48 ]
shrd r13, r14, 58
shr r14, 58
mov [ rsp + 0xd8 ], rdi
xor rdi, rdi
adox rax, r11
adox rcx, r8
adcx rax, r13
adcx r14, rcx
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx r13, r8, rbp
mov rdx, rax
shrd rdx, r14, 58
shr r14, 58
mov rcx, rbx
mov [ rsp + 0xe0 ], r13
xor r13, r13
adox rcx, [ rsp + 0xb8 ]
adox r10, [ rsp + 0xb0 ]
mov rdi, r15
adcx rdi, [ rsp + 0xd0 ]
mov rbx, [ rsp + 0xd8 ]
adcx rbx, [ rsp + 0xc8 ]
xor r15, r15
adox rdi, rdx
adox r14, rbx
mov r13, 0x3ffffffffffffff 
mov rdx, rdi
and rdx, r13
mov rbx, [ rsp - 0x50 ]
mov [ rbx + 0x18 ], rdx
mov rdx, [ rsi + 0x18 ]
mulx r13, r15, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xe8 ], r13
mulx r13, rbx, rdx
adox rcx, rbx
adox r13, r10
adcx rcx, r8
adcx r13, [ rsp + 0xe0 ]
shrd rdi, r14, 58
shr r14, 58
test al, al
adox rcx, [ rsp + 0xa8 ]
adox r13, [ rsp + 0x70 ]
adcx rcx, rdi
adcx r14, r13
mov rdx, 0x3ffffffffffffff 
and rax, rdx
mov r8, rcx
and r8, rdx
mov rdx, r11
mulx r10, r11, [ rsi + 0x38 ]
adox r11, r15
adox r10, [ rsp + 0xe8 ]
mov rdx, rbp
mulx r15, rbp, [ rsi + 0x10 ]
shrd rcx, r14, 58
shr r14, 58
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbx, [ rsp + 0x68 ]
mov rdx, rbp
xor r13, r13
adox rdx, [ rsp + 0x40 ]
adox r15, [ rsp + 0x38 ]
adcx rdx, [ rsp + 0x98 ]
adcx r15, [ rsp + 0x90 ]
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf0 ], rax
mulx rax, r13, [ rsp + 0x68 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x20 ], r8
test al, al
adox rbp, r13
adox rax, r15
adcx rbp, rcx
adcx r14, rax
mov r8, [ rsi + 0x40 ]
mov rcx, r8
shl rcx, 0x1
mov r8, rbp
shrd r8, r14, 58
shr r14, 58
mov r15, rdx
mov rdx, [ rsi + 0x0 ]
mulx rax, r13, [ rsp + 0x18 ]
add r11, [ rsp + 0x88 ]
adcx r10, [ rsp + 0x78 ]
add r11, rbx
adcx rdi, r10
xor rdx, rdx
adox r11, r13
adox rax, rdi
adcx r11, r8
adcx r14, rax
mov rbx, r11
shrd rbx, r14, 58
shr r14, 58
mov rdx, [ rsi + 0x18 ]
mulx r13, r8, r12
mov rdx, 0x3a 
bzhi r12, r11, rdx
mov rdx, [ rsp + 0x18 ]
mulx rdi, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mulx r11, rax, rdx
mov rdx, rcx
mulx r15, rcx, [ rsi + 0x40 ]
mov [ rsp + 0xf8 ], r12
mov r12, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x100 ], r9
mov [ rsp + 0x108 ], r14
mulx r14, r9, [ rsp + 0x68 ]
adox rax, r9
adox r14, r11
add rcx, r8
adcx r13, r15
mov rdx, [ rsp + 0x68 ]
mulx r11, r8, [ rsi + 0x10 ]
xor rdx, rdx
adox rax, r10
adox rdi, r14
mov r10, 0x3ffffffffffffff 
and rbp, r10
adox rcx, r8
adox r11, r13
adcx rcx, [ rsp + 0x60 ]
adcx r11, [ rsp + 0x58 ]
test al, al
adox rcx, [ rsp + 0x30 ]
adox r11, [ rsp + 0x28 ]
mov rdx, r12
mulx r15, r12, [ rsi + 0x0 ]
adcx rcx, rbx
adcx r11, [ rsp + 0x108 ]
mov rdx, rcx
shrd rdx, r11, 58
shr r11, 58
mov rbx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r14, r9, [ rsp + 0x100 ]
xor rdx, rdx
adox rax, r9
adox r14, rdi
adcx rax, r12
adcx r15, r14
xor r13, r13
adox rax, rbx
adox r11, r15
mov rdx, rax
shrd rdx, r11, 57
shr r11, 57
test al, al
adox rdx, [ rsp + 0x80 ]
adox r11, r13
mov r8, rdx
shrd r8, r11, 58
mov rdi, 0x1ffffffffffffff 
and rax, rdi
add r8, [ rsp + 0xa0 ]
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x40 ], rax
mov rbx, r8
shr rbx, 58
add rbx, [ rsp + 0xf0 ]
and rdx, r10
and rcx, r10
and r8, r10
mov [ r12 + 0x10 ], rbx
mov [ r12 + 0x8 ], r8
mov r9, [ rsp + 0xf8 ]
mov [ r12 + 0x30 ], r9
mov [ r12 + 0x0 ], rdx
mov [ r12 + 0x38 ], rcx
mov [ r12 + 0x28 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 400
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2975
; seed 0362323719496031 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2737679 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=88, initial num_batches=31): 102707 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.037516085706176656
; number reverted permutation / tried permutation: 75151 / 94899 =79.191%
; number reverted decision / tried decision: 68426 / 95100 =71.952%
; validated in 1.714s
