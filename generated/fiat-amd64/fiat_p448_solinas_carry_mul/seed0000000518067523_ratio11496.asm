SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 504
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mulx r8, rcx, [ rax + 0x30 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r15
mulx r15, rdi, [ rax + 0x20 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], r9
mulx r9, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x28 ], r14
mov [ rsp - 0x20 ], r13
mulx r13, r14, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x18 ], r9
mov [ rsp - 0x10 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x8 ], rbx
mov [ rsp + 0x0 ], r9
mulx r9, rbx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x8 ], r13
mov [ rsp + 0x10 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x18 ], r14
mov [ rsp + 0x20 ], r13
mulx r13, r14, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x28 ], r13
mov [ rsp + 0x30 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, rbp
mov [ rsp + 0x38 ], r11
xor r11, r11
adox rdx, rbp
mov [ rsp + 0x40 ], r10
mov r10, r12
adox r10, r12
adcx rdx, r13
mov [ rsp + 0x48 ], r9
mov r9, r14
adcx r9, r10
mov r10, rdx
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x50 ], rbx
mulx rbx, r11, [ rsi + 0x30 ]
test al, al
adox rbp, r13
adox r14, r12
mov rdx, [ rsi + 0x38 ]
mulx r13, r12, [ rax + 0x28 ]
adcx r10, rdi
mov rdx, r15
adcx rdx, r9
mov r9, rdx
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x58 ], rbx
mov [ rsp + 0x60 ], r11
mulx r11, rbx, [ rsi + 0x28 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x68 ], r14
mov [ rsp + 0x70 ], rbp
mulx rbp, r14, [ rsi + 0x18 ]
mov rdx, r12
test al, al
adox rdx, rcx
mov [ rsp + 0x78 ], rbp
mov rbp, r8
adox rbp, r13
adcx rdx, rbx
mov [ rsp + 0x80 ], r14
mov r14, r11
adcx r14, rbp
test al, al
adox r10, [ rsp + 0x50 ]
adox r9, [ rsp + 0x48 ]
mov rbp, rdx
adcx rbp, r12
adcx r13, r14
mov r12, rdi
mov [ rsp + 0x88 ], r9
xor r9, r9
adox r12, [ rsp + 0x70 ]
adox r15, [ rsp + 0x68 ]
mov rdi, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x90 ], r10
mulx r10, r9, [ rsi + 0x38 ]
adcx rbp, rcx
adcx r8, r13
add rbp, rbx
adcx r11, r8
mov rdx, [ rax + 0x18 ]
mulx rbx, rcx, [ rsi + 0x28 ]
add r12, [ rsp + 0x50 ]
adcx r15, [ rsp + 0x48 ]
mov rdx, [ rsi + 0x30 ]
mulx r8, r13, [ rax + 0x10 ]
add rbp, r9
mov rdx, r10
adcx rdx, r11
test al, al
adox rbp, r13
mov r11, r8
adox r11, rdx
adcx rdi, r9
adcx r10, r14
test al, al
adox rdi, r13
adox r8, r10
adcx rdi, rcx
mov r14, rbx
adcx r14, r8
mov rdx, [ rax + 0x30 ]
mulx r13, r9, [ rsi + 0x38 ]
mov rdx, r9
add rdx, [ rsp + 0x60 ]
mov r10, r13
adcx r10, [ rsp + 0x58 ]
test al, al
adox rbp, rcx
adox rbx, r11
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, r11, [ rax + 0x20 ]
adcx rdi, r11
mov rdx, r8
adcx rdx, r14
mov r14, rcx
add r14, r9
adcx r13, r10
add r14, [ rsp + 0x60 ]
adcx r13, [ rsp + 0x58 ]
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], rbp
mulx rbp, rbx, [ rax + 0x30 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xa8 ], rbp
mov [ rsp + 0xb0 ], rbx
mulx rbx, rbp, [ rsi + 0x38 ]
xor rdx, rdx
adox rdi, [ rsp + 0x40 ]
adox r9, [ rsp + 0x38 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xb8 ], r9
mov [ rsp + 0xc0 ], rdi
mulx rdi, r9, [ rsi + 0x20 ]
adcx rcx, rbp
mov rdx, rbx
adcx rdx, r10
test al, al
adox rcx, [ rsp + 0x10 ]
adox rdx, [ rsp + 0x8 ]
adcx r14, rbp
adcx rbx, r13
add r12, r9
mov r10, rdi
adcx r10, r15
xor r15, r15
adox r14, [ rsp + 0x10 ]
adox rbx, [ rsp + 0x8 ]
mov r13, r11
adcx r13, [ rsp + 0xa0 ]
adcx r8, [ rsp + 0x98 ]
mov r11, rdx
mov rdx, [ rax + 0x28 ]
mulx r15, rbp, [ rsi + 0x20 ]
add r13, [ rsp + 0x40 ]
adcx r8, [ rsp + 0x38 ]
mov rdx, r9
test al, al
adox rdx, [ rsp + 0x90 ]
adox rdi, [ rsp + 0x88 ]
adcx rdx, [ rsp - 0x10 ]
adcx rdi, [ rsp - 0x18 ]
test al, al
adox r13, [ rsp + 0xb0 ]
adox r8, [ rsp + 0xa8 ]
mov r9, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc8 ], rdi
mov [ rsp + 0xd0 ], r8
mulx r8, rdi, [ rax + 0x20 ]
adcx r14, rdi
mov rdx, r8
adcx rdx, rbx
test al, al
adox rcx, rdi
adox r8, r11
adcx rcx, rbp
mov r11, r15
adcx r11, r8
mov rbx, rdx
mov rdx, [ rsi + 0x38 ]
mulx r8, rdi, [ rax + 0x20 ]
xor rdx, rdx
adox r14, rbp
adox r15, rbx
mov rdx, [ rsi + 0x18 ]
mulx rbx, rbp, [ rax + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xd8 ], r9
mov [ rsp + 0xe0 ], r13
mulx r13, r9, [ rax + 0x30 ]
adcx rcx, rbp
mov rdx, rbx
adcx rdx, r11
test al, al
adox r14, rbp
adox rbx, r15
adcx rdi, [ rsp - 0x20 ]
adcx r8, [ rsp - 0x28 ]
xor r11, r11
adox rdi, r9
adox r13, r8
mov r15, rdx
mov rdx, [ rax + 0x38 ]
mulx r9, rbp, [ rsi + 0x20 ]
adcx rdi, rbp
adcx r9, r13
mov rdx, rdi
xor r8, r8
adox rdx, [ rsp + 0x80 ]
mov r11, r9
adox r11, [ rsp + 0x78 ]
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx r8, rbp, [ rax + 0x0 ]
adcx rcx, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x38 ]
xor rdx, rdx
adox rcx, rbp
adox r8, r15
mov rdx, [ rsi + 0x8 ]
mulx r15, rbp, [ rax + 0x10 ]
adcx r14, [ rsp - 0x30 ]
adcx rbx, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe8 ], r8
mov [ rsp + 0xf0 ], rcx
mulx rcx, r8, [ rax + 0x0 ]
test al, al
adox r12, [ rsp - 0x10 ]
adox r10, [ rsp - 0x18 ]
adcx r14, r8
adcx rcx, rbx
mov rdx, [ rsi + 0x38 ]
mulx r8, rbx, [ rax + 0x0 ]
add rdi, rbx
adcx r8, r9
mov rdx, [ rsi + 0x10 ]
mulx rbx, r9, [ rax + 0x8 ]
xor rdx, rdx
adox r13, r9
adox rbx, r11
adcx r13, rbp
adcx r15, rbx
mov rdx, [ rax + 0x28 ]
mulx rbp, r11, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mulx rbx, r9, [ rsi + 0x30 ]
test al, al
adox rdi, r9
adox rbx, r8
mov rdx, [ rax + 0x10 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0xf8 ], r10
mov [ rsp + 0x100 ], r12
mulx r12, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x108 ], rcx
mov [ rsp + 0x110 ], r14
mulx r14, rcx, [ rax + 0x8 ]
adcx rdi, r8
adcx r9, rbx
mov rdx, [ rsi + 0x20 ]
mulx r8, rbx, [ rax + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x118 ], r15
mov [ rsp + 0x120 ], r13
mulx r13, r15, [ rsi + 0x8 ]
add rdi, rbx
adcx r8, r9
test al, al
adox rdi, [ rsp + 0x0 ]
adox r8, [ rsp - 0x8 ]
mov rdx, [ rax + 0x18 ]
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, r15
adcx rdx, [ rsp + 0xe0 ]
mov [ rsp + 0x128 ], rbx
mov rbx, r13
adcx rbx, [ rsp + 0xd0 ]
mov [ rsp + 0x130 ], r9
xor r9, r9
adox rdi, r11
adox rbp, r8
mov r11, rdx
mov rdx, [ rsi + 0x20 ]
mulx r9, r8, [ rax + 0x0 ]
adcx r11, r8
adcx r9, rbx
mov rdx, [ rax + 0x30 ]
mulx r8, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox rdi, rbx
adox r8, rbp
adcx r11, rcx
adcx r14, r9
mov rdx, [ rax + 0x18 ]
mulx rbp, rcx, [ rsi + 0x8 ]
xor rdx, rdx
adox rdi, r10
adox r12, r8
mov rdx, [ rax + 0x8 ]
mulx r9, r10, [ rsi + 0x28 ]
mov rdx, rdi
shrd rdx, r12, 56
mov rbx, rdx
mov rdx, [ rax + 0x10 ]
mulx r12, r8, [ rsi + 0x10 ]
test al, al
adox r11, r8
adox r12, r14
adcx r11, rcx
adcx rbp, r12
mov rdx, [ rax + 0x0 ]
mulx rcx, r14, [ rsi + 0x30 ]
mov rdx, [ rsp + 0x120 ]
add rdx, [ rsp + 0x130 ]
mov r8, [ rsp + 0x118 ]
adcx r8, [ rsp + 0x128 ]
mov r12, r14
test al, al
adox r12, [ rsp + 0xd8 ]
adox rcx, [ rsp + 0xc8 ]
adcx r12, r10
adcx r9, rcx
xor r10, r10
adox r11, [ rsp + 0x30 ]
adox rbp, [ rsp + 0x28 ]
mov r14, rdx
shrd r14, r8, 56
test al, al
adox r11, r14
adox rbp, r10
mov r8, rbx
adcx r8, r11
adc rbp, 0x0
mov rcx, rdx
mov rdx, [ rax + 0x10 ]
mulx r11, r14, [ rsi + 0x20 ]
test al, al
adox r12, r14
adox r11, r9
mov rdx, [ rsp + 0xb0 ]
mov r9, rdx
adcx r9, [ rsp + 0xc0 ]
mov r14, [ rsp + 0xa8 ]
adcx r14, [ rsp + 0xb8 ]
add r9, r15
adcx r13, r14
mov rdx, 0xffffffffffffff 
mov r15, r8
and r15, rdx
adox r12, [ rsp + 0x20 ]
adox r11, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx r10, r14, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x138 ], r15
mov [ rsp + 0x140 ], r11
mulx r11, r15, [ rsi + 0x0 ]
adcx r9, r15
adcx r11, r13
mov rdx, r14
test al, al
adox rdx, [ rsp + 0x110 ]
adox r10, [ rsp + 0x108 ]
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r15, r14, [ rax + 0x10 ]
adcx rbx, r9
adc r11, 0x0
test al, al
adox r13, r14
adox r15, r10
mov rdx, 0xffffffffffffff 
mov r9, rbx
and r9, rdx
mov rdx, [ rax + 0x8 ]
mulx r14, r10, [ rsi + 0x0 ]
mov rdx, r10
adox rdx, [ rsp + 0xf0 ]
adox r14, [ rsp + 0xe8 ]
mov r10, rdx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x148 ], r9
mov [ rsp + 0x150 ], r12
mulx r12, r9, [ rsi + 0x10 ]
shrd rbx, r11, 56
add r13, r9
adcx r12, r15
mov rdx, [ rsi + 0x8 ]
mulx r15, r11, [ rax + 0x20 ]
xor rdx, rdx
adox r10, rbx
adox r14, rdx
adcx r13, r11
adcx r15, r12
mov r9, r10
shrd r9, r14, 56
test al, al
adox r13, [ rsp - 0x40 ]
adox r15, [ rsp - 0x48 ]
mov rbx, 0x38 
bzhi r12, r10, rbx
mov rdx, [ rsi + 0x10 ]
mulx r10, r11, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rbx, r14, [ rax + 0x8 ]
mov rdx, r11
adox rdx, [ rsp + 0x100 ]
adox r10, [ rsp + 0xf8 ]
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x158 ], r12
mov [ rsp + 0x160 ], r9
mulx r9, r12, [ rax + 0x20 ]
shrd r8, rbp, 56
mov rdx, r12
xor rbp, rbp
adox rdx, [ rsp + 0x150 ]
adox r9, [ rsp + 0x140 ]
adcx r13, r8
adc r15, 0x0
mov r12, rdx
mov rdx, [ rax + 0x28 ]
mulx rbp, r8, [ rsi + 0x8 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x168 ], r15
mov [ rsp + 0x170 ], r13
mulx r13, r15, [ rsi + 0x0 ]
xor rdx, rdx
adox r12, r8
adox rbp, r9
adcx r12, r15
adcx r13, rbp
mov r9, 0x38 
bzhi r8, rcx, r9
adox r11, r14
adox rbx, r10
mov rdx, [ rax + 0x10 ]
mulx r14, rcx, [ rsi + 0x0 ]
test al, al
adox r11, rcx
adox r14, rbx
adcx r11, [ rsp + 0x160 ]
adc r14, 0x0
mov rdx, r11
shrd rdx, r14, 56
mov r10, [ rsp + 0x170 ]
mov r15, [ rsp + 0x168 ]
mov rbp, r10
shrd rbp, r15, 56
xor r15, r15
adox r12, rbp
adox r13, r15
mov rbx, r12
shrd rbx, r13, 56
lea rdx, [ rdx + r8 ]
mov r8, rdx
shr r8, 56
bzhi rcx, r12, r9
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x30 ], rcx
bzhi rbp, rdi, r9
lea rbx, [ rbx + rbp ]
mov rdi, rbx
shr rdi, 56
bzhi r12, rdx, r9
mov r13, rdi
add r13, [ rsp + 0x138 ]
lea r8, [ r8 + r13 ]
bzhi rdx, r8, r9
mov [ r14 + 0x18 ], r12
shr r8, 56
add rdi, [ rsp + 0x148 ]
mov rcx, rdi
shr rcx, 56
bzhi rbp, rdi, r9
add rcx, [ rsp + 0x158 ]
mov [ r14 + 0x8 ], rcx
bzhi r12, r10, r9
mov [ r14 + 0x20 ], rdx
lea r8, [ r8 + r12 ]
mov [ r14 + 0x28 ], r8
bzhi r10, r11, r9
mov [ r14 + 0x10 ], r10
bzhi r11, rbx, r9
mov [ r14 + 0x0 ], rbp
mov [ r14 + 0x38 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 504
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.1496
; seed 2279173772110384 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 5729276 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=54, initial num_batches=31): 138498 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.024173735040867294
; number reverted permutation / tried permutation: 67340 / 94870 =70.981%
; number reverted decision / tried decision: 53899 / 95129 =56.659%
; validated in 5.444s
