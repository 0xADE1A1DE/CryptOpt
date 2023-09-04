SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 464
mov rax, rdx
mov rdx, [ rdx + 0x30 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, [ rax + 0x38 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x38 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x38 ], rdi
mov [ rsp - 0x30 ], r15
mulx r15, rdi, [ rsi + 0x8 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x28 ], r15
mov [ rsp - 0x20 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], rdi
mov [ rsp - 0x10 ], r15
mulx r15, rdi, [ rax + 0x30 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x8 ], r15
mov [ rsp + 0x0 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x8 ], rdi
mov [ rsp + 0x10 ], r15
mulx r15, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x18 ], r15
mov [ rsp + 0x20 ], rdi
mulx rdi, r15, [ rax + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], rdi
mov [ rsp + 0x30 ], r15
mulx r15, rdi, [ rax + 0x18 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x38 ], r15
mov [ rsp + 0x40 ], rdi
mulx rdi, r15, [ rax + 0x38 ]
mov rdx, r15
add rdx, r15
mov [ rsp + 0x48 ], rbp
mov rbp, rdi
adcx rbp, rdi
mov [ rsp + 0x50 ], r12
mov r12, rdx
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x58 ], r8
mov [ rsp + 0x60 ], rcx
mulx rcx, r8, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x68 ], rcx
mov [ rsp + 0x70 ], r8
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x78 ], r8
mov [ rsp + 0x80 ], rcx
mulx rcx, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x88 ], rcx
mov [ rsp + 0x90 ], r8
mulx r8, rcx, [ rax + 0x18 ]
test al, al
adox r15, rcx
mov rdx, r8
adox rdx, rdi
mov rdi, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x98 ], rbx
mov [ rsp + 0xa0 ], r9
mulx r9, rbx, [ rax + 0x20 ]
adcx r12, rcx
adcx r8, rbp
mov rdx, [ rsi + 0x28 ]
mulx rcx, rbp, [ rax + 0x28 ]
xor rdx, rdx
adox r12, rbx
mov [ rsp + 0xa8 ], r14
mov r14, r9
adox r14, r8
adcx r12, rbp
mov r8, rcx
adcx r8, r14
test al, al
adox r15, rbx
adox r9, rdi
mov rdx, [ rsi + 0x38 ]
mulx rbx, rdi, [ rax + 0x30 ]
adcx r15, rbp
adcx rcx, r9
add r15, r10
mov rdx, r11
adcx rdx, rcx
mov rbp, rdx
mov rdx, [ rax + 0x38 ]
mulx r9, r14, [ rsi + 0x30 ]
mov rdx, rdi
add rdx, r14
mov rcx, r9
adcx rcx, rbx
add r15, r13
adcx rbp, [ rsp + 0xa8 ]
mov [ rsp + 0xb0 ], rbp
mov rbp, rdx
mov [ rsp + 0xb8 ], r15
xor r15, r15
adox rbp, rdi
adox rbx, rcx
adcx rbp, r14
adcx r9, rbx
xor rdi, rdi
adox rbp, [ rsp + 0xa0 ]
adox r9, [ rsp + 0x98 ]
adcx r12, r10
adcx r11, r8
xor r15, r15
adox rdx, [ rsp + 0xa0 ]
adox rcx, [ rsp + 0x98 ]
mov rdi, rdx
mov rdx, [ rsi + 0x30 ]
mulx r8, r10, [ rax + 0x18 ]
adcx rdi, r10
mov rdx, r8
adcx rdx, rcx
add r12, r13
adcx r11, [ rsp + 0xa8 ]
mov r13, rdx
mov rdx, [ rax + 0x30 ]
mulx rbx, r14, [ rsi + 0x30 ]
mov rdx, [ rax + 0x28 ]
mulx r15, rcx, [ rsi + 0x38 ]
test al, al
adox rbp, r10
adox r8, r9
mov rdx, rcx
adcx rdx, r14
mov r9, rbx
adcx r9, r15
mov r10, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xc0 ], r11
mov [ rsp + 0xc8 ], r12
mulx r12, r11, [ rsi + 0x28 ]
test al, al
adox r10, [ rsp + 0x60 ]
adox r9, [ rsp + 0x58 ]
mov rdx, r10
adcx rdx, rcx
adcx r15, r9
add rdx, r14
adcx rbx, r15
test al, al
adox rdi, r11
mov r14, r12
adox r14, r13
adcx rbp, r11
adcx r12, r8
test al, al
adox rdx, [ rsp + 0x60 ]
adox rbx, [ rsp + 0x58 ]
mov r13, rdx
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x38 ]
mov rdx, [ rax + 0x28 ]
mulx r15, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd0 ], r12
mov [ rsp + 0xd8 ], rbp
mulx rbp, r12, [ rax + 0x30 ]
adcx r13, rcx
mov rdx, r8
adcx rdx, rbx
add rdi, r11
mov rbx, r15
adcx rbx, r14
add rdi, r12
mov r14, rbp
adcx r14, rbx
mov rbx, r11
test al, al
adox rbx, [ rsp + 0xd8 ]
adox r15, [ rsp + 0xd0 ]
adcx r10, rcx
adcx r8, r9
test al, al
adox r13, [ rsp + 0x50 ]
adox rdx, [ rsp + 0x48 ]
mov r9, rdx
mov rdx, [ rsi + 0x28 ]
mulx r11, rcx, [ rax + 0x18 ]
adcx r13, rcx
mov rdx, r11
adcx rdx, r9
add rdi, [ rsp - 0x30 ]
adcx r14, [ rsp - 0x38 ]
add r10, [ rsp + 0x50 ]
adcx r8, [ rsp + 0x48 ]
mov r9, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xe0 ], r14
mov [ rsp + 0xe8 ], rdi
mulx rdi, r14, [ rsi + 0x20 ]
xor rdx, rdx
adox r10, rcx
adox r11, r8
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, [ rax + 0x0 ]
adcx rbx, r12
adcx rbp, r15
mov rdx, rcx
xor r12, r12
adox rdx, [ rsp + 0xb8 ]
adox r8, [ rsp + 0xb0 ]
adcx r13, r14
mov r15, rdi
adcx r15, r9
mov r9, rdx
mov rdx, [ rax + 0x0 ]
mulx r12, rcx, [ rsi + 0x20 ]
xor rdx, rdx
adox rbx, [ rsp - 0x30 ]
adox rbp, [ rsp - 0x38 ]
adcx r10, r14
adcx rdi, r11
xor r14, r14
adox r13, [ rsp + 0x30 ]
adox r15, [ rsp + 0x28 ]
adcx r10, [ rsp + 0x30 ]
adcx rdi, [ rsp + 0x28 ]
add r10, [ rsp + 0x0 ]
adcx rdi, [ rsp - 0x8 ]
add r13, [ rsp + 0x0 ]
adcx r15, [ rsp - 0x8 ]
add r13, [ rsp + 0x70 ]
adcx r15, [ rsp + 0x68 ]
add r9, [ rsp - 0x20 ]
adcx r8, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x20 ]
mulx r14, r11, [ rax + 0x38 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xf0 ], rbp
mov [ rsp + 0xf8 ], rbx
mulx rbx, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x100 ], rbx
mov [ rsp + 0x108 ], rbp
mulx rbp, rbx, [ rax + 0x0 ]
add r13, rcx
adcx r12, r15
mov rdx, [ rax + 0x10 ]
mulx r15, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x110 ], r12
mov [ rsp + 0x118 ], r13
mulx r13, r12, [ rsi + 0x30 ]
test al, al
adox r10, [ rsp + 0x70 ]
adox rdi, [ rsp + 0x68 ]
adcx r9, rcx
adcx r15, r8
mov rdx, [ rax + 0x30 ]
mulx rcx, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x120 ], r15
mov [ rsp + 0x128 ], r9
mulx r9, r15, [ rax + 0x20 ]
xor rdx, rdx
adox r15, r12
adox r13, r9
adcx r15, r8
adcx rcx, r13
add r15, r11
adcx r14, rcx
mov rdx, [ rax + 0x8 ]
mulx r12, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x38 ]
mulx r9, r8, [ rax + 0x0 ]
mov rdx, r15
add rdx, rbx
adcx rbp, r14
add rdx, r11
adcx r12, rbp
mov rbx, rdx
mov rdx, [ rax + 0x10 ]
mulx rcx, r13, [ rsi + 0x8 ]
xor rdx, rdx
adox rbx, r13
adox rcx, r12
adcx rbx, [ rsp + 0x108 ]
adcx rcx, [ rsp + 0x100 ]
mov r11, 0x38 
bzhi rbp, rbx, r11
mov rdx, [ rax + 0x0 ]
mulx r13, r12, [ rsi + 0x0 ]
shrd rbx, rcx, 56
mov rdx, [ rax + 0x8 ]
mulx r11, rcx, [ rsi + 0x30 ]
add r10, r12
adcx r13, rdi
mov rdx, [ rax + 0x8 ]
mulx r12, rdi, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x130 ], rbp
mov [ rsp + 0x138 ], r13
mulx r13, rbp, [ rsi + 0x28 ]
xor rdx, rdx
adox r15, r8
adox r9, r14
mov r14, rdi
adcx r14, [ rsp + 0x118 ]
adcx r12, [ rsp + 0x110 ]
mov rdx, [ rsi + 0x18 ]
mulx rdi, r8, [ rax + 0x20 ]
test al, al
adox r15, rcx
adox r11, r9
adcx r15, rbp
adcx r13, r11
mov rdx, [ rsi + 0x0 ]
mulx rbp, rcx, [ rax + 0x38 ]
mov rdx, [ rsi + 0x20 ]
mulx r11, r9, [ rax + 0x18 ]
xor rdx, rdx
adox r15, r9
adox r11, r13
adcx r15, r8
adcx rdi, r11
mov rdx, [ rsi + 0x8 ]
mulx r13, r8, [ rax + 0x30 ]
add r15, [ rsp - 0x10 ]
adcx rdi, [ rsp - 0x18 ]
xor rdx, rdx
adox r15, r8
adox r13, rdi
mov rdx, [ rsi + 0x28 ]
mulx r11, r9, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rdi, r8, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x140 ], r10
mov [ rsp + 0x148 ], rbx
mulx rbx, r10, [ rsi + 0x30 ]
adcx r15, rcx
adcx rbp, r13
mov rdx, [ rsi + 0x28 ]
mulx r13, rcx, [ rax + 0x0 ]
mov rdx, rcx
test al, al
adox rdx, [ rsp + 0xf8 ]
adox r13, [ rsp + 0xf0 ]
mov rcx, r10
adcx rcx, [ rsp + 0xc8 ]
adcx rbx, [ rsp + 0xc0 ]
add rcx, r9
adcx r11, rbx
mov r9, rdx
mov rdx, [ rax + 0x10 ]
mulx rbx, r10, [ rsi + 0x20 ]
add r14, r8
adcx rdi, r12
test al, al
adox r14, [ rsp + 0x40 ]
adox rdi, [ rsp + 0x38 ]
mov rdx, [ rax + 0x20 ]
mulx r8, r12, [ rsi + 0x0 ]
adcx rcx, r10
adcx rbx, r11
xor rdx, rdx
adox r14, r12
adox r8, rdi
adcx rcx, [ rsp - 0x40 ]
adcx rbx, [ rsp - 0x48 ]
mov rdx, [ rax + 0x10 ]
mulx r10, r11, [ rsi + 0x18 ]
add r14, [ rsp + 0x148 ]
adc r8, 0x0
xor rdx, rdx
adox r9, [ rsp + 0x80 ]
adox r13, [ rsp + 0x78 ]
adcx r9, r11
adcx r10, r13
mov rdx, [ rax + 0x20 ]
mulx r12, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r13, r11, [ rax + 0x20 ]
xor rdx, rdx
adox r9, [ rsp + 0x10 ]
adox r10, [ rsp + 0x8 ]
adcx r9, r11
adcx r13, r10
add rcx, rdi
adcx r12, rbx
mov rbx, r15
shrd rbx, rbp, 56
test al, al
adox rcx, [ rsp + 0x20 ]
adox r12, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx rdi, rbp, [ rax + 0x28 ]
mov rdx, rbx
adcx rdx, r14
adc r8, 0x0
mov r14, rdx
mov rdx, [ rsi + 0x0 ]
mulx r10, r11, [ rax + 0x30 ]
add r9, rbp
adcx rdi, r13
mov rdx, r14
shrd rdx, r8, 56
mov r13, 0x38 
bzhi rbp, r14, r13
adox r9, rdx
mov r14, 0x0 
adox rdi, r14
mov rdx, [ rsi + 0x8 ]
mulx r14, r8, [ rax + 0x0 ]
add rcx, r11
adcx r10, r12
bzhi rdx, r9, r13
shrd r9, rdi, 56
xor r12, r12
adox rcx, r9
adox r10, r12
adcx rbx, [ rsp + 0x140 ]
mov r11, [ rsp + 0x138 ]
adc r11, 0x0
mov rdi, r8
xor r9, r9
adox rdi, [ rsp + 0xe8 ]
adox r14, [ rsp + 0xe0 ]
adcx rdi, [ rsp + 0x90 ]
adcx r14, [ rsp + 0x88 ]
bzhi r12, rcx, r13
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x30 ], r12
mov r12, rbx
shrd r12, r11, 56
shrd rcx, r10, 56
bzhi r10, r15, r13
lea rcx, [ rcx + r10 ]
adox rdi, r12
adox r14, r9
bzhi r15, rdi, r13
bzhi r11, rcx, r13
shr rcx, 56
bzhi r12, rbx, r13
mov [ r8 + 0x38 ], r11
shrd rdi, r14, 56
mov rbx, rdi
xor r10, r10
adox rbx, [ rsp + 0x128 ]
mov r9, [ rsp + 0x120 ]
adox r9, r10
bzhi r14, rbx, r13
lea r12, [ r12 + rcx ]
bzhi r11, r12, r13
mov [ r8 + 0x10 ], r14
mov [ r8 + 0x0 ], r11
shrd rbx, r9, 56
add rbx, [ rsp + 0x130 ]
bzhi rdi, rbx, r13
shr r12, 56
mov [ r8 + 0x18 ], rdi
lea rbp, [ rbp + rcx ]
shr rbx, 56
lea rbx, [ rbx + rbp ]
bzhi rcx, rbx, r13
mov [ r8 + 0x20 ], rcx
shr rbx, 56
lea r12, [ r12 + r15 ]
mov [ r8 + 0x8 ], r12
lea rbx, [ rbx + rdx ]
mov [ r8 + 0x28 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 464
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.2191
; seed 2850397374736237 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8565113 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=39, initial num_batches=31): 205489 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02399139392556759
; number reverted permutation / tried permutation: 69825 / 94683 =73.746%
; number reverted decision / tried decision: 54263 / 95316 =56.930%
; validated in 6.735s
