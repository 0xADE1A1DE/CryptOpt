SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 424
mov rax, rdx
mov rdx, [ rsi + 0x30 ]
mulx r11, r10, [ rax + 0x38 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, [ rax + 0x30 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x30 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r15
mulx r15, rdi, [ rsi + 0x18 ]
mov rdx, rbp
add rdx, rbp
mov [ rsp - 0x38 ], r15
mov r15, r12
adcx r15, r12
mov [ rsp - 0x30 ], rdi
mov rdi, r9
add rdi, r10
mov [ rsp - 0x28 ], r8
mov r8, r11
adcx r8, rbx
mov [ rsp - 0x20 ], rcx
mov rcx, rdx
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x18 ], r14
mov [ rsp - 0x10 ], r13
mulx r13, r14, [ rsi + 0x20 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x8 ], r13
mov [ rsp + 0x0 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x8 ], r14
mov [ rsp + 0x10 ], r13
mulx r13, r14, [ rsi + 0x28 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x18 ], r13
mov [ rsp + 0x20 ], r14
mulx r14, r13, [ rsi + 0x28 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x28 ], r14
mov [ rsp + 0x30 ], r13
mulx r13, r14, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x38 ], r13
mov [ rsp + 0x40 ], r14
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x48 ], r14
mov [ rsp + 0x50 ], r13
mulx r13, r14, [ rax + 0x30 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x58 ], r13
mov [ rsp + 0x60 ], r14
mulx r14, r13, [ rsi + 0x38 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x68 ], r15
mov [ rsp + 0x70 ], rcx
mulx rcx, r15, [ rsi + 0x10 ]
mov rdx, rdi
mov [ rsp + 0x78 ], rcx
xor rcx, rcx
adox rdx, r13
mov [ rsp + 0x80 ], r15
mov r15, r14
adox r15, r8
adcx rdi, r9
adcx rbx, r8
add rdi, r10
adcx r11, rbx
mov r10, rdx
mov rdx, [ rax + 0x18 ]
mulx r8, r9, [ rsi + 0x38 ]
xor rdx, rdx
adox rbp, r9
mov rcx, r8
adox rcx, r12
adcx rdi, r13
adcx r14, r11
mov r12, r9
add r12, [ rsp + 0x70 ]
adcx r8, [ rsp + 0x68 ]
mov rdx, [ rsi + 0x30 ]
mulx rbx, r13, [ rax + 0x20 ]
xor rdx, rdx
adox rbp, r13
mov r11, rbx
adox r11, rcx
adcx r10, [ rsp - 0x10 ]
adcx r15, [ rsp - 0x18 ]
add rbp, [ rsp + 0x20 ]
adcx r11, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, r9, [ rax + 0x28 ]
test al, al
adox r12, r13
adox rbx, r8
adcx rbp, [ rsp + 0x10 ]
adcx r11, [ rsp + 0x8 ]
test al, al
adox r12, [ rsp + 0x20 ]
adox rbx, [ rsp + 0x18 ]
mov rdx, [ rax + 0x20 ]
mulx r13, r8, [ rsi + 0x28 ]
adcx r10, r8
mov rdx, r13
adcx rdx, r15
xor r15, r15
adox rdi, [ rsp - 0x10 ]
adox r14, [ rsp - 0x18 ]
adcx rdi, r8
adcx r13, r14
add rbp, [ rsp + 0x40 ]
adcx r11, [ rsp + 0x38 ]
xor r8, r8
adox rdi, r9
mov r15, rcx
adox r15, r13
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, r13, [ rax + 0x30 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x88 ], r11
mov [ rsp + 0x90 ], rbp
mulx rbp, r11, [ rsi + 0x30 ]
adcx rdi, r13
mov rdx, r8
adcx rdx, r15
mov r15, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r12
mulx r12, rbx, [ rax + 0x28 ]
xor rdx, rdx
adox r10, r9
adox rcx, r14
mov r9, rbx
adcx r9, r11
mov r14, rbp
adcx r14, r12
add r10, r13
adcx r8, rcx
test al, al
adox r10, [ rsp + 0x80 ]
adox r8, [ rsp + 0x78 ]
adcx rdi, [ rsp + 0x80 ]
adcx r15, [ rsp + 0x78 ]
mov rdx, [ rax + 0x8 ]
mulx rcx, r13, [ rsi + 0x38 ]
test al, al
adox r9, [ rsp + 0x30 ]
adox r14, [ rsp + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xa8 ], r8
mov [ rsp + 0xb0 ], r10
mulx r10, r8, [ rsi + 0x30 ]
mov rdx, r9
adcx rdx, rbx
adcx r12, r14
test al, al
adox rdx, r11
adox rbp, r12
adcx rdx, [ rsp + 0x30 ]
adcx rbp, [ rsp + 0x28 ]
test al, al
adox r9, r13
mov r11, rcx
adox r11, r14
adcx r9, r8
mov rbx, r10
adcx rbx, r11
add rdx, r13
adcx rcx, rbp
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, r14, [ rax + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mulx r11, rbp, [ rax + 0x18 ]
test al, al
adox r13, r8
adox r10, rcx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r8, [ rax + 0x20 ]
adcx r13, rbp
mov rdx, r11
adcx rdx, r10
xor r10, r10
adox r13, r8
mov [ rsp + 0xb8 ], r15
mov r15, rcx
adox r15, rdx
adcx r9, rbp
adcx r11, rbx
xor rbx, rbx
adox r9, r8
adox rcx, r11
adcx r13, r14
mov r10, r12
adcx r10, r15
mov rdx, [ rax + 0x28 ]
mulx r8, rbp, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x38 ]
mulx r11, r15, [ rax + 0x20 ]
xor rdx, rdx
adox r15, rbp
adox r8, r11
adcx r9, r14
adcx r12, rcx
xor rbx, rbx
adox r9, [ rsp - 0x20 ]
adox r12, [ rsp - 0x28 ]
adcx r9, [ rsp - 0x40 ]
adcx r12, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x28 ]
mulx rcx, r14, [ rax + 0x30 ]
add r15, r14
adcx rcx, r8
test al, al
adox r15, [ rsp + 0x0 ]
adox rcx, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x38 ]
mulx r11, rbp, [ rax + 0x0 ]
adcx r13, [ rsp - 0x20 ]
adcx r10, [ rsp - 0x28 ]
mov rdx, [ rax + 0x10 ]
mulx r14, r8, [ rsi + 0x28 ]
xor rdx, rdx
adox r13, [ rsp - 0x40 ]
adox r10, [ rsp - 0x48 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xc0 ], r12
mulx r12, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xc8 ], r9
mov [ rsp + 0xd0 ], rdi
mulx rdi, r9, [ rax + 0x20 ]
mov rdx, r15
adcx rdx, rbp
adcx r11, rcx
add r13, rbx
adcx r12, r10
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r10, [ rax + 0x0 ]
test al, al
adox r15, r10
adox rbx, rcx
mov rdx, [ rax + 0x8 ]
mulx r10, rcx, [ rsi + 0x30 ]
adcx rbp, rcx
adcx r10, r11
add rbp, r8
adcx r14, r10
mov rdx, [ rsi + 0x20 ]
mulx r11, r8, [ rax + 0x18 ]
test al, al
adox rbp, r8
adox r11, r14
adcx rbp, r9
adcx rdi, r11
mov rdx, [ rax + 0x28 ]
mulx rcx, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, r10, [ rax + 0x0 ]
mov rdx, r10
test al, al
adox rdx, [ rsp + 0xd0 ]
adox r14, [ rsp + 0xb8 ]
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, r11, [ rax + 0x8 ]
adcx rbp, r9
adcx rcx, rdi
mov rdx, [ rsi + 0x0 ]
mulx r9, rdi, [ rax + 0x38 ]
xor rdx, rdx
adox rbp, [ rsp + 0x60 ]
adox rcx, [ rsp + 0x58 ]
adcx rbp, rdi
adcx r9, rcx
mov rdx, [ rax + 0x10 ]
mulx rcx, rdi, [ rsi + 0x10 ]
mov rdx, rbp
shrd rdx, r9, 56
add r13, r11
adcx r10, r12
mov r12, 0xffffffffffffff 
and rbp, r12
adox r13, rdi
adox rcx, r10
mov r11, rdx
mov rdx, [ rax + 0x0 ]
mulx rdi, r9, [ rsi + 0x0 ]
mov rdx, r9
adcx rdx, [ rsp + 0xc8 ]
adcx rdi, [ rsp + 0xc0 ]
mov r10, rdx
mov rdx, [ rax + 0x20 ]
mulx r12, r9, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xd8 ], rbp
mov [ rsp + 0xe0 ], rcx
mulx rcx, rbp, [ rsi + 0x0 ]
mov rdx, r11
mov [ rsp + 0xe8 ], r13
xor r13, r13
adox rdx, r10
adox rdi, r13
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xf0 ], rdi
mulx rdi, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xf8 ], r10
mov [ rsp + 0x100 ], r12
mulx r12, r10, [ rax + 0x8 ]
adcx r8, r13
adcx rdi, r14
test al, al
adox r15, r10
adox r12, rbx
mov rdx, [ rsi + 0x8 ]
mulx r14, rbx, [ rax + 0x10 ]
adcx r15, rbx
adcx r14, r12
mov rdx, [ rsi + 0x10 ]
mulx r10, r13, [ rax + 0x18 ]
test al, al
adox r15, rbp
adox rcx, r14
mov rdx, [ rsi + 0x18 ]
mulx r12, rbp, [ rax + 0x10 ]
mov rdx, r15
shrd rdx, rcx, 56
mov rbx, [ rsp + 0xa0 ]
test al, al
adox rbx, [ rsp + 0x10 ]
mov r14, [ rsp + 0x98 ]
adox r14, [ rsp + 0x8 ]
adcx rbx, [ rsp + 0x40 ]
adcx r14, [ rsp + 0x38 ]
xor rcx, rcx
adox r8, rbp
adox r12, rdi
adcx r8, r13
adcx r10, r12
mov rdi, 0xffffffffffffff 
and r15, rdi
mov r13, rdx
mov rdx, [ rax + 0x0 ]
mulx r12, rbp, [ rsi + 0x30 ]
adox r8, r9
adox r10, [ rsp + 0x100 ]
mov rdx, [ rax + 0x8 ]
mulx rcx, r9, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x108 ], r15
mulx r15, rdi, [ rax + 0x18 ]
mov rdx, rdi
adcx rdx, [ rsp + 0xe8 ]
adcx r15, [ rsp + 0xe0 ]
mov rdi, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x110 ], r10
mov [ rsp + 0x118 ], r8
mulx r8, r10, [ rsi + 0x0 ]
test al, al
adox rdi, r10
adox r8, r15
adcx rdi, r13
adc r8, 0x0
add r11, rdi
adc r8, 0x0
add rbx, rbp
adcx r12, r14
test al, al
adox rbx, r9
adox rcx, r12
mov rdx, [ rsi + 0x20 ]
mulx r14, r13, [ rax + 0x10 ]
adcx rbx, r13
adcx r14, rcx
mov rdx, [ rsi + 0x10 ]
mulx r9, rbp, [ rax + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mulx r10, r15, [ rax + 0x28 ]
mov rdx, 0xffffffffffffff 
mov rdi, r11
and rdi, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r12, [ rax + 0x0 ]
adox rbx, [ rsp - 0x30 ]
adox r14, [ rsp - 0x38 ]
mov rdx, r12
adcx rdx, [ rsp + 0xb0 ]
adcx rcx, [ rsp + 0xa8 ]
shrd r11, r8, 56
mov r8, r15
xor r13, r13
adox r8, [ rsp + 0x118 ]
adox r10, [ rsp + 0x110 ]
adcx r8, r11
adc r10, 0x0
mov r15, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r12, [ rax + 0x8 ]
test al, al
adox r15, r12
adox r11, rcx
mov rdx, [ rax + 0x28 ]
mulx r12, rcx, [ rsi + 0x8 ]
adcx rbx, rbp
adcx r9, r14
test al, al
adox rbx, rcx
adox r12, r9
mov rdx, 0x38 
bzhi rbp, r8, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r14, [ rax + 0x30 ]
shrd r8, r10, 56
add rbx, r14
adcx rcx, r12
add rbx, r8
adc rcx, 0x0
mov rdx, [ rax + 0x10 ]
mulx r9, r10, [ rsi + 0x0 ]
mov rdx, 0x38 
bzhi r12, rbx, rdx
mov rdx, [ rax + 0x0 ]
mulx r8, r14, [ rsi + 0x10 ]
mov rdx, r14
adox rdx, [ rsp + 0x90 ]
adox r8, [ rsp + 0x88 ]
shrd rbx, rcx, 56
add rbx, [ rsp + 0xd8 ]
mov rcx, 0x38 
bzhi r14, rbx, rcx
mov r13, [ rsp + 0xf8 ]
mov rcx, [ rsp + 0xf0 ]
mov [ rsp + 0x120 ], rbp
mov rbp, r13
shrd rbp, rcx, 56
xor rcx, rcx
adox r15, rbp
adox r11, rcx
mov rbp, r15
shrd rbp, r11, 56
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x38 ], r14
mov r14, 0x38 
bzhi rcx, r15, r14
mov [ r11 + 0x30 ], r12
adox rdx, [ rsp + 0x50 ]
adox r8, [ rsp + 0x48 ]
test al, al
adox rdx, r10
adox r9, r8
adcx rdx, rbp
adc r9, 0x0
bzhi r10, rdx, r14
shrd rdx, r9, 56
shr rbx, 56
lea rdi, [ rdi + rbx ]
mov [ r11 + 0x10 ], r10
add rdx, [ rsp + 0x108 ]
bzhi r12, rdx, r14
shr rdx, 56
lea rdx, [ rdx + rdi ]
mov [ r11 + 0x18 ], r12
bzhi r15, rdx, r14
shr rdx, 56
bzhi rbp, r13, r14
lea rbp, [ rbp + rbx ]
bzhi r13, rbp, r14
mov [ r11 + 0x0 ], r13
shr rbp, 56
lea rbp, [ rbp + rcx ]
mov [ r11 + 0x8 ], rbp
add rdx, [ rsp + 0x120 ]
mov [ r11 + 0x28 ], rdx
mov [ r11 + 0x20 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 424
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.2325
; seed 3718301706707921 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6488600 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=41, initial num_batches=31): 154884 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.023870172302191534
; number reverted permutation / tried permutation: 69065 / 95309 =72.464%
; number reverted decision / tried decision: 52831 / 94690 =55.794%
; validated in 4.992s
