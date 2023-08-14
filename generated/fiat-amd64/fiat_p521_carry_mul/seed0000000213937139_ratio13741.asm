SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 472
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x20 ]
imul rdx, [ rax + 0x18 ], 0x2
mov rcx, 0x1 
shlx r8, [ rax + 0x40 ], rcx
mov r9, [ rax + 0x28 ]
lea rcx, [r9 + r9]
mov r9, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x0 ]
mov rdx, 0x1 
mov [ rsp - 0x60 ], r14
shlx r14, [ rax + 0x30 ], rdx
mov rdx, r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x30 ]
mov [ rsp - 0x50 ], rdi
imul rdi, [ rax + 0x8 ], 0x2
mov [ rsp - 0x48 ], r11
mov r11, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], rbp
mulx rbp, r10, r9
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x30 ], rbx
mov [ rsp - 0x28 ], r13
mulx r13, rbx, [ rax + 0x8 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x20 ], r13
mov [ rsp - 0x18 ], rbx
mulx rbx, r13, rdi
mov rdx, [ rax + 0x10 ]
mov rdi, rdx
shl rdi, 0x1
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x10 ], r12
mov [ rsp - 0x8 ], rbp
mulx rbp, r12, r11
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x0 ], rbp
mov [ rsp + 0x8 ], r12
mulx r12, rbp, r11
mov rdx, r8
mov [ rsp + 0x10 ], r12
mulx r12, r8, [ rsi + 0x28 ]
mov [ rsp + 0x18 ], rbp
mov rbp, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x20 ], r12
mov [ rsp + 0x28 ], r8
mulx r8, r12, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x30 ], r10
mov [ rsp + 0x38 ], r15
mulx r15, r10, rdi
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], r14
lea r14, [rdx + rdx]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x48 ], rcx
mov [ rsp + 0x50 ], r14
mulx r14, rcx, rbp
test al, al
adox r13, r10
adox r15, rbx
adcx rcx, r12
adcx r8, r14
mov rdx, [ rax + 0x0 ]
mulx r12, rbx, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mulx r14, r10, [ rax + 0x8 ]
add rcx, r10
adcx r14, r8
mov rdx, [ rsi + 0x30 ]
mulx r10, r8, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x58 ], r12
mov [ rsp + 0x60 ], rbx
mulx rbx, r12, rdi
mov rdx, r9
mulx rdi, r9, [ rsi + 0x38 ]
add r12, r9
adcx rdi, rbx
mov rbx, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x68 ], r14
mulx r14, r9, [ rax + 0x20 ]
add r12, r8
adcx r10, rdi
mov rdx, rbx
mulx r8, rbx, [ rsi + 0x40 ]
mov rdx, [ rsp + 0x50 ]
mov [ rsp + 0x70 ], r14
mulx r14, rdi, [ rsi + 0x38 ]
mov [ rsp + 0x78 ], r9
mov r9, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x80 ], r10
mov [ rsp + 0x88 ], r12
mulx r12, r10, [ rsp + 0x48 ]
add rbx, rdi
adcx r14, r8
mov rdx, r9
mulx r8, r9, [ rsi + 0x40 ]
mov [ rsp + 0x90 ], r14
mulx r14, rdi, [ rsi + 0x28 ]
test al, al
adox r9, r10
adox r12, r8
imul rdx, [ rax + 0x38 ], 0x2
mulx r8, r10, [ rsi + 0x10 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r8
mulx r8, rbx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], r10
xor r10, r10
adox r9, [ rsp + 0x40 ]
adox r12, [ rsp + 0x38 ]
mov [ rsp + 0xb0 ], rcx
mulx rcx, r10, [ rsi + 0x18 ]
adcx r13, [ rsp + 0x30 ]
adcx r15, [ rsp - 0x8 ]
test al, al
adox r13, rdi
adox r14, r15
adcx r9, rbx
adcx r8, r12
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mulx r12, rbx, rbp
test al, al
adox r9, rbx
adox r12, r8
mov rdx, [ rsi + 0x10 ]
mulx r8, r15, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xb8 ], rcx
mulx rcx, rbx, [ rsi + 0x18 ]
adcx r9, rbx
adcx rcx, r12
mov rdx, r11
mulx r12, r11, [ rsi + 0x38 ]
mov rbx, rdx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xc0 ], r10
mov [ rsp + 0xc8 ], r14
mulx r14, r10, [ rsi + 0x28 ]
xor rdx, rdx
adox r9, r15
adox r8, rcx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r15, [ rax + 0x18 ]
mov rdx, r10
adcx rdx, [ rsp + 0xb0 ]
adcx r14, [ rsp + 0x68 ]
mov r10, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0xd0 ], r13
mov [ rsp + 0xd8 ], r8
mulx r8, r13, [ rsp + 0x48 ]
add r10, r15
adcx rcx, r14
add r13, r11
adcx r12, r8
mov rdx, [ rsi + 0x30 ]
mulx r15, r11, rdi
mov rdx, [ rsi + 0x8 ]
mulx r8, r14, [ rax + 0x10 ]
xor rdx, rdx
adox r13, r11
adox r15, r12
adcx r9, r14
adcx r8, [ rsp + 0xd8 ]
mov rdx, rdi
mulx r12, rdi, [ rsi + 0x40 ]
test al, al
adox r13, [ rsp + 0x28 ]
adox r15, [ rsp + 0x20 ]
mov r11, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xe0 ], r8
mulx r8, r14, rbp
adcx r13, [ rsp - 0x10 ]
adcx r15, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xe8 ], r15
mov [ rsp + 0xf0 ], r13
mulx r13, r15, [ rax + 0x0 ]
xor rdx, rdx
adox rdi, r14
adox r8, r12
mov rdx, [ rax + 0x28 ]
mulx r14, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xf8 ], r9
mov [ rsp + 0x100 ], r14
mulx r14, r9, [ rax + 0x8 ]
adcx r10, [ rsp - 0x30 ]
adcx rcx, [ rsp - 0x38 ]
xor rdx, rdx
adox rdi, r15
adox r13, r8
mov rdx, [ rsi + 0x18 ]
mulx r8, r15, [ rax + 0x18 ]
adcx r10, r12
adcx rcx, [ rsp + 0x100 ]
xor rdx, rdx
adox rdi, r9
adox r14, r13
adcx rdi, [ rsp - 0x40 ]
adcx r14, [ rsp - 0x48 ]
add rdi, r15
adcx r8, r14
mov rdx, [ rsi + 0x10 ]
mulx r9, r12, [ rax + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mulx r15, r13, [ rsp + 0x48 ]
mov rdx, r13
xor r14, r14
adox rdx, [ rsp + 0xd0 ]
adox r15, [ rsp + 0xc8 ]
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x108 ], rcx
mulx rcx, r14, rbp
adcx r13, [ rsp + 0x8 ]
adcx r15, [ rsp + 0x0 ]
xor rdx, rdx
adox rdi, r12
adox r9, r8
mov rdx, [ rsi + 0x28 ]
mulx r12, r8, rbx
adcx r13, [ rsp + 0xa8 ]
adcx r15, [ rsp + 0xa0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x110 ], r10
mov [ rsp + 0x118 ], r9
mulx r9, r10, [ rsp + 0x48 ]
mov rdx, r10
test al, al
adox rdx, [ rsp + 0x98 ]
adox r9, [ rsp + 0x90 ]
adcx rdx, r8
adcx r12, r9
mov r8, rdx
mov rdx, [ rsi + 0x20 ]
mulx r9, r10, r11
add r13, r14
adcx rcx, r15
mov rdx, [ rsi + 0x0 ]
mulx r15, r14, [ rax + 0x8 ]
xor rdx, rdx
adox r13, [ rsp + 0x60 ]
adox rcx, [ rsp + 0x58 ]
adcx r8, r10
adcx r9, r12
mov r12, 0x3ffffffffffffff 
mov r10, r13
and r10, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x120 ], r10
mulx r10, r12, rbp
mov rdx, [ rsp + 0x48 ]
mov [ rsp + 0x128 ], rdi
mov [ rsp + 0x130 ], r15
mulx r15, rdi, [ rsi + 0x28 ]
adox r8, r12
adox r10, r9
mov rdx, rdi
adcx rdx, [ rsp + 0x88 ]
adcx r15, [ rsp + 0x80 ]
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r12, rbp
mov rdx, rbx
mov [ rsp + 0x138 ], r10
mulx r10, rbx, [ rsi + 0x20 ]
xor rdx, rdx
adox r9, rbx
adox r10, r15
adcx r9, [ rsp + 0xc0 ]
adcx r10, [ rsp + 0xb8 ]
xor r15, r15
adox r9, r12
adox rdi, r10
mov rdx, [ rax + 0x0 ]
mulx rbx, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mulx r15, r10, [ rsi + 0x8 ]
adcx r9, r10
adcx r15, rdi
add r9, r14
adcx r15, [ rsp + 0x130 ]
mov rdx, [ rax + 0x8 ]
mulx rdi, r14, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x140 ], r15
mulx r15, r10, [ rax + 0x18 ]
test al, al
adox r8, r12
adox rbx, [ rsp + 0x138 ]
adcx r8, r14
adcx rdi, rbx
shrd r13, rcx, 58
shr rcx, 58
mov rdx, [ rax + 0x18 ]
mulx r14, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x148 ], r15
mulx r15, rbx, [ rax + 0x10 ]
add r9, r13
adcx rcx, [ rsp + 0x140 ]
mov rdx, r9
shrd rdx, rcx, 58
shr rcx, 58
xor r13, r13
adox r8, rbx
adox r15, rdi
adcx r8, rdx
adcx rcx, r15
mov rdi, r12
test al, al
adox rdi, [ rsp + 0xf8 ]
adox r14, [ rsp + 0xe0 ]
mov r12, r8
shrd r12, rcx, 58
shr rcx, 58
mov rdx, [ rax + 0x8 ]
mulx r15, rbx, [ rsi + 0x18 ]
mov rdx, r11
mulx r13, r11, [ rsi + 0x38 ]
add rdi, r12
adcx rcx, r14
mov rdx, [ rsi + 0x10 ]
mulx r12, r14, [ rax + 0x10 ]
mov rdx, rbx
test al, al
adox rdx, [ rsp + 0xf0 ]
adox r15, [ rsp + 0xe8 ]
adcx rdx, r14
adcx r12, r15
mov rbx, 0x3a 
bzhi r14, r9, rbx
adox rdx, r10
adox r12, [ rsp + 0x148 ]
bzhi r10, rdi, rbx
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x18 ], r10
mov r15, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbx, r10, [ rax + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x150 ], r14
mulx r14, r9, [ rsi + 0x20 ]
adox r15, r10
adox rbx, r12
shrd rdi, rcx, 58
shr rcx, 58
mov rdx, r11
xor r12, r12
adox rdx, [ rsp + 0x18 ]
adox r13, [ rsp + 0x10 ]
xchg rdx, rbp
mulx r10, r11, [ rsi + 0x30 ]
adcx rbp, r11
adcx r10, r13
add r15, rdi
adcx rcx, rbx
mov rdx, [ rax + 0x0 ]
mulx rdi, rbx, [ rsi + 0x28 ]
xor rdx, rdx
adox rbp, rbx
adox rdi, r10
adcx rbp, r9
adcx r14, rdi
mov rdx, [ rsi + 0x8 ]
mulx r9, r12, [ rax + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx r11, r13, [ rax + 0x10 ]
xor rdx, rdx
adox rbp, r13
adox r11, r14
mov rdx, [ rax + 0x18 ]
mulx rbx, r10, [ rsi + 0x10 ]
adcx rbp, r10
adcx rbx, r11
xor rdx, rdx
adox rbp, r12
adox r9, rbx
mov rdx, [ rsi + 0x8 ]
mulx r14, rdi, [ rax + 0x28 ]
mov rdx, 0x3ffffffffffffff 
mov r12, r15
and r12, rdx
mov r13, rdi
adox r13, [ rsp + 0x128 ]
adox r14, [ rsp + 0x118 ]
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x20 ], r12
mov rdx, [ rsi + 0x0 ]
mulx rbx, r10, [ rax + 0x28 ]
mov rdx, [ rax + 0x30 ]
mulx r12, rdi, [ rsi + 0x0 ]
adcx r13, rdi
adcx r12, r14
test al, al
adox rbp, r10
adox rbx, r9
mov rdx, [ rax + 0x18 ]
mulx r14, r9, [ rsi + 0x28 ]
shrd r15, rcx, 58
shr rcx, 58
xor rdx, rdx
adox rbp, r15
adox rcx, rbx
mov r10, 0x3a 
bzhi rdi, rbp, r10
mov rdx, [ rax + 0x0 ]
mulx r15, rbx, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x30 ]
mulx r11, r10, [ rax + 0x10 ]
shrd rbp, rcx, 58
shr rcx, 58
test al, al
adox r13, rbp
adox rcx, r12
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x28 ], rdi
mov r12, r13
shrd r12, rcx, 58
shr rcx, 58
xor rdi, rdi
adox rbx, [ rsp - 0x18 ]
adox r15, [ rsp - 0x20 ]
adcx rbx, r10
adcx r11, r15
add rbx, r9
adcx r14, r11
mov r9, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbp, r10, [ rax + 0x38 ]
mov rdx, [ rax + 0x30 ]
mulx r11, r15, [ rsi + 0x8 ]
mov rdx, 0x3a 
bzhi rdi, r13, rdx
mov rdx, [ rax + 0x38 ]
mulx r9, r13, [ rsi + 0x8 ]
mov rdx, r15
adox rdx, [ rsp + 0x110 ]
adox r11, [ rsp + 0x108 ]
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x30 ], rdi
add rdx, r10
adcx rbp, r11
mov r10, rdx
mov rdx, [ rax + 0x28 ]
mulx r11, rdi, [ rsi + 0x18 ]
xor rdx, rdx
adox rbx, [ rsp + 0x78 ]
adox r14, [ rsp + 0x70 ]
adcx rbx, rdi
adcx r11, r14
test al, al
adox r10, r12
adox rcx, rbp
mov r12, 0x3a 
bzhi rbp, r10, r12
mov [ r15 + 0x38 ], rbp
mov rdx, [ rax + 0x30 ]
mulx r14, rdi, [ rsi + 0x10 ]
adox rbx, rdi
adox r14, r11
xor rdx, rdx
adox rbx, r13
adox r9, r14
mov rdx, [ rsi + 0x0 ]
mulx r11, r13, [ rax + 0x40 ]
shrd r10, rcx, 58
shr rcx, 58
test al, al
adox rbx, r13
adox r11, r9
adcx rbx, r10
adcx rcx, r11
mov rdx, rbx
shrd rdx, rcx, 57
shr rcx, 57
add rdx, [ rsp + 0x120 ]
adc rcx, 0x0
mov rbp, rdx
shrd rbp, rcx, 58
add rbp, [ rsp + 0x150 ]
bzhi rdi, rdx, r12
bzhi r14, rbp, r12
mov [ r15 + 0x8 ], r14
mov r9, 0x39 
bzhi r13, rbx, r9
mov [ r15 + 0x40 ], r13
shr rbp, 58
bzhi r10, r8, r12
lea rbp, [ rbp + r10 ]
mov [ r15 + 0x10 ], rbp
mov [ r15 + 0x0 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 472
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.3741
; seed 1045999688527612 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 7116956 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 163836 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02302051607456896
; number reverted permutation / tried permutation: 71965 / 95290 =75.522%
; number reverted decision / tried decision: 59360 / 94709 =62.676%
; validated in 5.65s
