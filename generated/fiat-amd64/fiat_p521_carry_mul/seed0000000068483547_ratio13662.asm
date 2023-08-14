SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 456
mov rax, 0x1 
shlx r10, [ rdx + 0x40 ], rax
mov r11, rdx
mov rdx, [ rdx + 0x8 ]
mulx r8, rcx, [ rsi + 0x18 ]
imul rdx, [ r11 + 0x38 ], 0x2
mov r9, [ r11 + 0x28 ]
lea rax, [r9 + r9]
mov r9, rdx
mov rdx, [ r11 + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x38 ]
mov rdx, [ r11 + 0x30 ]
mov [ rsp - 0x70 ], r12
lea r12, [rdx + rdx]
mov rdx, r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x28 ]
mov [ rsp - 0x60 ], r14
imul r14, [ r11 + 0x10 ], 0x2
mov [ rsp - 0x58 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, r14
imul rdx, [ r11 + 0x20 ], 0x2
mov [ rsp - 0x40 ], rcx
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], rdi
mulx rdi, r8, [ r11 + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x28 ], rdi
mov [ rsp - 0x20 ], r8
mulx r8, rdi, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], r8
mov [ rsp - 0x10 ], rdi
mulx rdi, r8, [ r11 + 0x10 ]
mov rdx, [ r11 + 0x28 ]
mov [ rsp - 0x8 ], rdi
mov [ rsp + 0x0 ], r8
mulx r8, rdi, [ rsi + 0x10 ]
mov rdx, [ r11 + 0x18 ]
mov [ rsp + 0x8 ], r8
lea r8, [rdx + rdx]
mov rdx, r8
mov [ rsp + 0x10 ], rdi
mulx rdi, r8, [ rsi + 0x38 ]
mov [ rsp + 0x18 ], rdi
mov [ rsp + 0x20 ], r8
mulx r8, rdi, [ rsi + 0x40 ]
mov [ rsp + 0x28 ], r9
mov r9, rdx
mov rdx, [ r11 + 0x0 ]
mov [ rsp + 0x30 ], r13
mov [ rsp + 0x38 ], r12
mulx r12, r13, [ rsi + 0x40 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x40 ], r8
mov [ rsp + 0x48 ], rdi
mulx rdi, r8, r15
add r13, rbx
adcx rbp, r12
mov rdx, [ r11 + 0x8 ]
lea rbx, [rdx + rdx]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x50 ], rdi
mulx rdi, r12, r14
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x58 ], r8
mulx r8, r14, rbx
mov rdx, r10
mulx rbx, r10, [ rsi + 0x40 ]
mov [ rsp + 0x60 ], rbx
mov [ rsp + 0x68 ], r10
mulx r10, rbx, [ rsi + 0x10 ]
test al, al
adox r14, r12
adox rdi, r8
xchg rdx, r9
mulx r8, r12, [ rsi + 0x30 ]
adcx r14, r12
adcx r8, rdi
mov rdx, [ r11 + 0x10 ]
mulx r12, rdi, [ rsi + 0x30 ]
mov rdx, [ r11 + 0x18 ]
mov [ rsp + 0x70 ], r10
mov [ rsp + 0x78 ], rbx
mulx rbx, r10, [ rsi + 0x28 ]
test al, al
adox r13, rdi
adox r12, rbp
adcx r13, r10
adcx rbx, r12
mov rdx, rax
mulx rbp, rax, [ rsi + 0x38 ]
mulx r10, rdi, [ rsi + 0x30 ]
mov [ rsp + 0x80 ], rbx
mulx rbx, r12, [ rsi + 0x28 ]
xchg rdx, rcx
mov [ rsp + 0x88 ], r13
mov [ rsp + 0x90 ], rbx
mulx rbx, r13, [ rsi + 0x28 ]
test al, al
adox r14, r13
adox rbx, r8
mulx r13, r8, [ rsi + 0x38 ]
mov [ rsp + 0x98 ], r12
mov r12, r8
adcx r12, [ rsp + 0x48 ]
adcx r13, [ rsp + 0x40 ]
mov [ rsp + 0xa0 ], rbp
mulx rbp, r8, [ rsi + 0x40 ]
test al, al
adox r12, rdi
adox r10, r13
mov rdx, rcx
mulx rdi, rcx, [ rsi + 0x20 ]
adcx r14, rcx
adcx rdi, rbx
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r13, r15
add r14, r13
adcx rcx, rdi
mov rdx, [ rsi + 0x8 ]
mulx r13, rdi, r9
add r12, [ rsp + 0x38 ]
adcx r10, [ rsp + 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa8 ], r10
mov [ rsp + 0xb0 ], r12
mulx r12, r10, [ rsp + 0x28 ]
add r14, r10
adcx r12, rcx
test al, al
adox r8, rax
adox rbp, [ rsp + 0xa0 ]
adcx r14, rdi
adcx r13, r12
xor rdx, rdx
adox r8, [ rsp + 0x58 ]
adox rbp, [ rsp + 0x50 ]
mov rax, [ rsp - 0x30 ]
adcx rax, [ rsp + 0x20 ]
mov rcx, [ rsp - 0x38 ]
adcx rcx, [ rsp + 0x18 ]
xor rdi, rdi
adox rax, [ rsp - 0x10 ]
adox rcx, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx r12, r10, r15
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xb8 ], rbp
mulx rbp, rdi, [ r11 + 0x0 ]
mov rdx, r15
mov [ rsp + 0xc0 ], r8
mulx r8, r15, [ rsi + 0x40 ]
adcx rax, [ rsp + 0x98 ]
adcx rcx, [ rsp + 0x90 ]
add r14, rdi
adcx rbp, r13
add rax, r10
adcx r12, rcx
mov r13, rdx
mov rdx, [ rsi + 0x40 ]
mulx rdi, r10, rbx
mov rdx, [ rsi + 0x38 ]
mulx rcx, rbx, r13
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xc8 ], rbp
mulx rbp, r13, [ rsp + 0x28 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xd0 ], r14
mov [ rsp + 0xd8 ], rbp
mulx rbp, r14, [ rsp + 0x28 ]
test al, al
adox r15, r14
adox rbp, r8
adcx r10, rbx
adcx rcx, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, r8, [ rsp + 0x28 ]
mov rdx, [ r11 + 0x0 ]
mulx r14, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox rax, r8
adox rdi, r12
adcx rax, [ rsp + 0x78 ]
adcx rdi, [ rsp + 0x70 ]
mov rdx, [ rsi + 0x38 ]
mulx r8, r12, [ r11 + 0x0 ]
xor rdx, rdx
adox rax, rbx
adox r14, rdi
mov rdx, r9
mulx rbx, r9, [ rsi + 0x30 ]
mov rdi, r12
adcx rdi, [ rsp + 0x68 ]
adcx r8, [ rsp + 0x60 ]
test al, al
adox r10, r13
adox rcx, [ rsp + 0xd8 ]
adcx r15, r9
adcx rbx, rbp
mov r13, rdx
mov rdx, [ rsi + 0x0 ]
mulx r12, rbp, [ r11 + 0x8 ]
xor rdx, rdx
adox rax, rbp
adox r12, r14
mov rdx, [ rsi + 0x30 ]
mulx r9, r14, [ r11 + 0x8 ]
mov rdx, [ r11 + 0x10 ]
mov [ rsp + 0xe0 ], rcx
mulx rcx, rbp, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xe8 ], r10
mov [ rsp + 0xf0 ], r12
mulx r12, r10, [ rsp + 0x28 ]
adcx rdi, r14
adcx r9, r8
add rdi, rbp
adcx rcx, r9
mov rdx, r10
test al, al
adox rdx, [ rsp + 0xb0 ]
adox r12, [ rsp + 0xa8 ]
mov r8, rdx
mov rdx, [ r11 + 0x18 ]
mulx rbp, r14, [ rsi + 0x20 ]
adcx rdi, r14
adcx rbp, rcx
mov rdx, [ r11 + 0x8 ]
mulx r9, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, rcx, [ r11 + 0x0 ]
add r15, rcx
adcx r14, rbx
xor rdx, rdx
adox r15, r10
adox r9, r14
mov rdx, [ r11 + 0x20 ]
mulx r10, rbx, [ rsi + 0x18 ]
adcx r15, [ rsp + 0x0 ]
adcx r9, [ rsp - 0x8 ]
mov rdx, [ rsp + 0xc8 ]
mov rcx, [ rsp + 0xd0 ]
shrd rcx, rdx, 58
shr rdx, 58
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xf8 ], r9
mov [ rsp + 0x100 ], r15
mulx r15, r9, r13
xor rdx, rdx
adox rdi, rbx
adox r10, rbp
mov rdx, [ rsi + 0x8 ]
mulx rbx, rbp, [ r11 + 0x8 ]
mov rdx, [ r11 + 0x10 ]
mov [ rsp + 0x108 ], r10
mov [ rsp + 0x110 ], rdi
mulx rdi, r10, [ rsi + 0x8 ]
adcx rax, rcx
adcx r14, [ rsp + 0xf0 ]
add r8, r9
adcx r15, r12
mov rdx, [ r11 + 0x0 ]
mulx rcx, r12, [ rsi + 0x10 ]
test al, al
adox r8, r12
adox rcx, r15
adcx r8, rbp
adcx rbx, rcx
mov rdx, [ rsi + 0x38 ]
mulx rbp, r9, r13
mov rdx, [ rsi + 0x28 ]
mulx r12, r15, [ rsp + 0x28 ]
mov rdx, r15
test al, al
adox rdx, [ rsp + 0xc0 ]
adox r12, [ rsp + 0xb8 ]
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x118 ], r14
mulx r14, r15, r13
adcx rcx, r15
adcx r14, r12
mov rdx, [ r11 + 0x0 ]
mulx r15, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x120 ], rax
mov [ rsp + 0x128 ], rbp
mulx rbp, rax, [ r11 + 0x10 ]
xor rdx, rdx
adox rcx, r12
adox r15, r14
mov rdx, [ r11 + 0x8 ]
mulx r12, r14, [ rsi + 0x10 ]
adcx rcx, r14
adcx r12, r15
add r8, rax
adcx rbp, rbx
mov rdx, r13
mulx rbx, r13, [ rsi + 0x28 ]
mov rdx, [ rsp + 0x28 ]
mulx r15, rax, [ rsi + 0x40 ]
mov rdx, r13
add rdx, [ rsp + 0xe8 ]
adcx rbx, [ rsp + 0xe0 ]
xor r14, r14
adox rcx, r10
adox rdi, r12
mov r10, rdx
mov rdx, [ r11 + 0x0 ]
mulx r13, r12, [ rsi + 0x20 ]
adcx r10, r12
adcx r13, rbx
add rax, r9
adcx r15, [ rsp + 0x128 ]
add r10, [ rsp - 0x40 ]
adcx r13, [ rsp - 0x48 ]
mov rdx, [ r11 + 0x18 ]
mulx rbx, r9, [ rsi + 0x0 ]
add rcx, r9
adcx rbx, rdi
mov rdx, [ rsi + 0x10 ]
mulx r12, rdi, [ r11 + 0x10 ]
mov rdx, [ r11 + 0x20 ]
mulx r14, r9, [ rsi + 0x0 ]
test al, al
adox r10, rdi
adox r12, r13
mov rdx, [ rsp + 0x118 ]
mov r13, [ rsp + 0x120 ]
shrd r13, rdx, 58
shr rdx, 58
test al, al
adox r8, r13
adox rdx, rbp
mov rbp, rdx
mov rdx, [ r11 + 0x18 ]
mulx r13, rdi, [ rsi + 0x8 ]
adcx r10, rdi
adcx r13, r12
test al, al
adox r10, r9
adox r14, r13
mov rdx, [ r11 + 0x0 ]
mulx r12, r9, [ rsi + 0x30 ]
mov rdx, 0x3a 
bzhi rdi, r8, rdx
adox rax, r9
adox r12, r15
shrd r8, rbp, 58
shr rbp, 58
mov rdx, [ rsi + 0x10 ]
mulx r13, r15, [ r11 + 0x18 ]
xor rdx, rdx
adox rcx, r8
adox rbp, rbx
mov rbx, rcx
shrd rbx, rbp, 58
shr rbp, 58
mov r9, 0x3a 
bzhi r8, rcx, r9
adox r10, rbx
adox rbp, r14
mov r14, r10
shrd r14, rbp, 58
shr rbp, 58
bzhi rcx, r10, r9
mov rdx, [ rsi + 0x28 ]
mulx r10, rbx, [ r11 + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x130 ], r8
mulx r8, r9, [ r11 + 0x28 ]
mov rdx, r15
adox rdx, [ rsp + 0x100 ]
adox r13, [ rsp + 0xf8 ]
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x138 ], rdi
mov [ rsp + 0x140 ], rcx
mulx rcx, rdi, [ r11 + 0x20 ]
test al, al
adox r15, rdi
adox rcx, r13
mov rdx, [ rsi + 0x0 ]
mulx rdi, r13, [ r11 + 0x28 ]
adcx r15, r13
adcx rdi, rcx
mov rdx, [ rsi + 0x18 ]
mulx r13, rcx, [ r11 + 0x28 ]
xor rdx, rdx
adox r15, r14
adox rbp, rdi
mov rdx, [ r11 + 0x20 ]
mulx rdi, r14, [ rsi + 0x10 ]
adcx rax, rbx
adcx r10, r12
mov rdx, [ rsi + 0x20 ]
mulx rbx, r12, [ r11 + 0x10 ]
add rax, r12
adcx rbx, r10
xor rdx, rdx
adox rax, [ rsp - 0x20 ]
adox rbx, [ rsp - 0x28 ]
adcx rax, r14
adcx rdi, rbx
mov r14, 0x3a 
bzhi r10, r15, r14
mov rdx, [ r11 + 0x20 ]
mulx rbx, r12, [ rsi + 0x20 ]
mov rdx, r12
adox rdx, [ rsp + 0x88 ]
adox rbx, [ rsp + 0x80 ]
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x28 ], r10
xor r10, r10
adox rdx, rcx
adox r13, rbx
mov rcx, rdx
mov rdx, [ r11 + 0x38 ]
mulx r10, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r12, r14, [ r11 + 0x38 ]
adcx rax, r9
adcx r8, rdi
shrd r15, rbp, 58
shr rbp, 58
mov rdx, [ rsi + 0x0 ]
mulx rdi, r9, [ r11 + 0x30 ]
test al, al
adox rax, r9
adox rdi, r8
adcx rax, r15
adcx rbp, rdi
mov rdx, [ rsp + 0x110 ]
xor r8, r8
adox rdx, [ rsp + 0x10 ]
mov r15, [ rsp + 0x108 ]
adox r15, [ rsp + 0x8 ]
mov r9, rdx
mov rdx, [ r11 + 0x30 ]
mulx r8, rdi, [ rsi + 0x8 ]
adcx r9, rdi
adcx r8, r15
test al, al
adox r9, r14
adox r12, r8
mov rdx, [ r11 + 0x40 ]
mulx r15, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rdi, [ r11 + 0x30 ]
adcx rcx, rdi
adcx r8, r13
add rcx, rbx
adcx r10, r8
add rcx, r14
adcx r15, r10
mov rdx, rax
shrd rdx, rbp, 58
shr rbp, 58
test al, al
adox r9, rdx
adox rbp, r12
mov r13, r9
shrd r13, rbp, 58
shr rbp, 58
mov rbx, 0x3a 
bzhi r12, rax, rbx
bzhi rax, r9, rbx
bzhi r14, [ rsp + 0x120 ], rbx
adox rcx, r13
adox rbp, r15
mov rdi, [ rsp + 0x140 ]
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x20 ], rdi
mov rdi, rcx
shrd rdi, rbp, 57
shr rbp, 57
bzhi r10, [ rsp + 0xd0 ], rbx
adox rdi, r10
mov r15, 0x0 
adox rbp, r15
mov rdx, rdi
shrd rdx, rbp, 58
bzhi r9, rdi, rbx
lea rdx, [ rdx + r14 ]
mov r13, rdx
shr r13, 58
add r13, [ rsp + 0x138 ]
bzhi r14, rdx, rbx
mov [ r8 + 0x8 ], r14
mov r10, 0x39 
bzhi rdi, rcx, r10
mov [ r8 + 0x10 ], r13
mov [ r8 + 0x30 ], r12
mov [ r8 + 0x0 ], r9
mov r12, [ rsp + 0x130 ]
mov [ r8 + 0x18 ], r12
mov [ r8 + 0x40 ], rdi
mov [ r8 + 0x38 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 456
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.3662
; seed 3979494003266215 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 9937653 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 210293 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.021161233945278628
; number reverted permutation / tried permutation: 70479 / 95219 =74.018%
; number reverted decision / tried decision: 58776 / 94780 =62.013%
; validated in 7.763s
