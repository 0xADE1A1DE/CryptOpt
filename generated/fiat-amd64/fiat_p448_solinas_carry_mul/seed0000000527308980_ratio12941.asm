SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 384
mov rax, rdx
mov rdx, [ rdx + 0x30 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x38 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x8 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rsi + 0x38 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], r10
mulx r10, r11, [ rsi + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], r11
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], r10
mulx r10, r11, [ rsi + 0x30 ]
mov rdx, r12
test al, al
adox rdx, r9
mov [ rsp - 0x8 ], r10
mov r10, rbx
adox r10, rbp
adcx rdx, r13
mov [ rsp + 0x0 ], r11
mov r11, r14
adcx r11, r10
mov r10, rdx
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x8 ], rdi
mov [ rsp + 0x10 ], r15
mulx r15, rdi, [ rsi + 0x10 ]
mov rdx, r10
add rdx, r12
adcx rbp, r11
add rdx, r9
adcx rbx, rbp
add rdx, r13
adcx r14, rbx
mov r9, rdx
mov rdx, [ rax + 0x38 ]
mulx r12, r13, [ rsi + 0x38 ]
mov rdx, r13
xor rbp, rbp
adox rdx, rcx
mov rbx, r8
adox rbx, r12
mov [ rsp + 0x18 ], r15
mov r15, r13
adcx r15, r13
adcx r12, r12
xor r13, r13
adox r15, rcx
adox r8, r12
adcx r10, [ rsp + 0x10 ]
adcx r11, [ rsp + 0x8 ]
mov rbp, rdx
mov rdx, [ rsi + 0x30 ]
mulx r12, rcx, [ rax + 0x20 ]
add r15, rcx
mov rdx, r12
adcx rdx, r8
test al, al
adox rbp, rcx
adox r12, rbx
adcx r10, [ rsp + 0x0 ]
adcx r11, [ rsp - 0x8 ]
mov rbx, rdx
mov rdx, [ rax + 0x28 ]
mulx rcx, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], rdi
mulx rdi, r13, [ rax + 0x28 ]
add r15, r8
mov rdx, rcx
adcx rdx, rbx
test al, al
adox rbp, r8
adox rcx, r12
adcx rbp, [ rsp - 0x30 ]
adcx rcx, [ rsp - 0x38 ]
mov rbx, rdx
mov rdx, [ rax + 0x30 ]
mulx r8, r12, [ rsi + 0x38 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x28 ], rdi
mov [ rsp + 0x30 ], r13
mulx r13, rdi, [ rsi + 0x30 ]
mov rdx, r12
add rdx, rdi
mov [ rsp + 0x38 ], rcx
mov rcx, r13
adcx rcx, r8
mov [ rsp + 0x40 ], rbp
mov rbp, rdx
add rbp, r12
adcx r8, rcx
test al, al
adox rbp, rdi
adox r13, r8
mov r12, rdx
mov rdx, [ rax + 0x18 ]
mulx r8, rdi, [ rsi + 0x28 ]
adcx r9, [ rsp + 0x10 ]
adcx r14, [ rsp + 0x8 ]
xor rdx, rdx
adox r10, rdi
mov [ rsp + 0x48 ], r13
mov r13, r8
adox r13, r11
adcx r9, [ rsp + 0x0 ]
adcx r14, [ rsp - 0x8 ]
test al, al
adox r15, [ rsp - 0x30 ]
adox rbx, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x50 ], r13
mulx r13, r11, [ rax + 0x20 ]
adcx r9, rdi
adcx r8, r14
test al, al
adox r15, [ rsp - 0x20 ]
adox rbx, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x38 ]
mulx r14, rdi, [ rax + 0x10 ]
adcx r9, r11
mov rdx, r13
adcx rdx, r8
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x58 ], rbx
mov [ rsp + 0x60 ], r15
mulx r15, rbx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x68 ], r8
mov [ rsp + 0x70 ], r9
mulx r9, r8, [ rax + 0x18 ]
test al, al
adox r12, rdi
mov rdx, r14
adox rdx, rcx
adcx r12, r8
mov rcx, r9
adcx rcx, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x78 ], r15
mov [ rsp + 0x80 ], rbx
mulx rbx, r15, [ rsi + 0x28 ]
xor rdx, rdx
adox rbp, rdi
adox r14, [ rsp + 0x48 ]
adcx r10, r11
adcx r13, [ rsp + 0x50 ]
test al, al
adox r12, r15
mov r11, rbx
adox r11, rcx
mov rdx, [ rax + 0x28 ]
mulx rcx, rdi, [ rsi + 0x20 ]
adcx r10, [ rsp + 0x80 ]
adcx r13, [ rsp + 0x78 ]
add rbp, r8
adcx r9, r14
xor rdx, rdx
adox rbp, r15
adox rbx, r9
adcx r10, [ rsp + 0x20 ]
adcx r13, [ rsp + 0x18 ]
mov rdx, [ rax + 0x28 ]
mulx r15, r8, [ rsi + 0x30 ]
test al, al
adox r12, rdi
mov rdx, rcx
adox rdx, r11
mov r14, rdx
mov rdx, [ rax + 0x30 ]
mulx r9, r11, [ rsi + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x88 ], r13
mov [ rsp + 0x90 ], r10
mulx r10, r13, [ rsi + 0x38 ]
adcx r13, r8
adcx r15, r10
test al, al
adox rbp, rdi
adox rcx, rbx
mov rdx, [ rax + 0x30 ]
mulx rbx, rdi, [ rsi + 0x18 ]
adcx rbp, rdi
mov rdx, rbx
adcx rdx, rcx
xor r8, r8
adox r12, rdi
adox rbx, r14
adcx r13, r11
adcx r9, r15
mov r14, rdx
mov rdx, [ rax + 0x38 ]
mulx r10, r11, [ rsi + 0x20 ]
test al, al
adox r13, r11
adox r10, r9
mov rdx, [ rax + 0x0 ]
mulx rcx, r15, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, rdi, [ rax + 0x38 ]
mov rdx, [ rsi + 0x38 ]
mulx r8, r11, [ rax + 0x0 ]
adcx r12, rdi
mov rdx, r9
adcx rdx, rbx
mov rbx, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x98 ], r12
mov [ rsp + 0xa0 ], rcx
mulx rcx, r12, [ rsi + 0x30 ]
xor rdx, rdx
adox rbp, rdi
adox r9, r14
mov rdx, [ rax + 0x10 ]
mulx rdi, r14, [ rsi + 0x28 ]
mov rdx, r13
adcx rdx, r11
adcx r8, r10
test al, al
adox rdx, r12
adox rcx, r8
adcx rdx, r14
adcx rdi, rcx
add rbp, r15
adcx r9, [ rsp + 0xa0 ]
mov r15, [ rsp + 0x70 ]
add r15, [ rsp + 0x80 ]
mov r11, [ rsp + 0x68 ]
adcx r11, [ rsp + 0x78 ]
test al, al
adox r15, [ rsp + 0x20 ]
adox r11, [ rsp + 0x18 ]
mov r12, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, r14, [ rax + 0x28 ]
adcx r12, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], r9
mulx r9, rcx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xb0 ], rbp
mov [ rsp + 0xb8 ], rbx
mulx rbx, rbp, [ rax + 0x38 ]
add r12, rcx
adcx r9, rdi
xor rdx, rdx
adox r12, r14
adox r8, r9
adcx r15, rbp
mov r14, rbx
adcx r14, r11
mov rdx, [ rsi + 0x0 ]
mulx rdi, r11, [ rax + 0x0 ]
mov rdx, rbp
xor rcx, rcx
adox rdx, [ rsp + 0x90 ]
adox rbx, [ rsp + 0x88 ]
adcx rdx, r11
adcx rdi, rbx
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r9, [ rax + 0x0 ]
xor rdx, rdx
adox r13, r9
adox r11, r10
mov rdx, [ rsi + 0x20 ]
mulx r10, rcx, [ rax + 0x0 ]
mov rdx, [ rax + 0x30 ]
mulx r9, rbx, [ rsi + 0x8 ]
adcx r12, rbx
adcx r9, r8
mov rdx, [ rax + 0x38 ]
mulx rbx, r8, [ rsi + 0x0 ]
xor rdx, rdx
adox r15, rcx
adox r10, r14
mov rdx, [ rsi + 0x0 ]
mulx rcx, r14, [ rax + 0x18 ]
adcx r12, r8
adcx rbx, r9
mov rdx, r12
shrd rdx, rbx, 56
mov r9, rdx
xor r8, r8
adox r9, rbp
adox rdi, r8
mov rbp, r9
shrd rbp, rdi, 56
mov rbx, rdx
mov rdx, [ rax + 0x8 ]
mulx r8, rdi, [ rsi + 0x10 ]
test al, al
adox r13, rdi
adox r8, r11
mov rdx, [ rsi + 0x8 ]
mulx rdi, r11, [ rax + 0x10 ]
adcx r13, r11
adcx rdi, r8
mov rdx, [ rsi + 0x30 ]
mulx r11, r8, [ rax + 0x0 ]
mov rdx, 0x38 
mov [ rsp + 0xc0 ], rbp
bzhi rbp, r12, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xc8 ], rbp
mulx rbp, r12, [ rax + 0x8 ]
adox r13, r14
adox rcx, rdi
test al, al
adox r15, r12
adox rbp, r10
mov rdx, [ rax + 0x18 ]
mulx r14, r10, [ rsi + 0x8 ]
mov rdx, r13
shrd rdx, rcx, 56
mov rdi, rdx
mov rdx, [ rax + 0x10 ]
mulx rcx, r12, [ rsi + 0x10 ]
xor rdx, rdx
adox r15, r12
adox rcx, rbp
adcx r15, r10
adcx r14, rcx
mov rbp, 0x38 
bzhi r10, r13, rbp
mov r13, [ rsp + 0x40 ]
adox r13, [ rsp - 0x20 ]
mov r12, [ rsp + 0x38 ]
adox r12, [ rsp - 0x28 ]
mov rdx, [ rax + 0x20 ]
mulx rbp, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0xd0 ], r10
mov [ rsp + 0xd8 ], r11
mulx r11, r10, [ rsi + 0x10 ]
test al, al
adox r13, r10
adox r11, r12
mov rdx, [ rsi + 0x8 ]
mulx r10, r12, [ rax + 0x0 ]
adcx r15, rcx
adcx rbp, r14
add r15, rdi
adc rbp, 0x0
xor rdx, rdx
adox rbx, r15
adox rbp, rdx
mov rdi, rbx
shrd rdi, rbp, 56
mov r14, r8
add r14, [ rsp + 0x60 ]
mov rcx, [ rsp + 0xd8 ]
adcx rcx, [ rsp + 0x58 ]
mov rdx, [ rax + 0x10 ]
mulx r15, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xe0 ], rdi
mulx rdi, rbp, [ rax + 0x8 ]
add r13, rbp
adcx rdi, r11
mov rdx, 0xffffffffffffff 
and rbx, rdx
mov r11, r12
adox r11, [ rsp + 0x98 ]
adox r10, [ rsp + 0xb8 ]
mov rdx, [ rsi + 0x0 ]
mulx rbp, r12, [ rax + 0x8 ]
adcx r11, r12
adcx rbp, r10
test al, al
adox r11, [ rsp + 0xc0 ]
mov rdx, 0x0 
adox rbp, rdx
adcx r13, r8
adcx r15, rdi
mov rdx, [ rax + 0x8 ]
mulx rdi, r8, [ rsi + 0x28 ]
xor rdx, rdx
adox r14, r8
adox rdi, rcx
mov rdx, [ rax + 0x10 ]
mulx r10, rcx, [ rsi + 0x20 ]
adcx r14, rcx
adcx r10, rdi
mov rdx, r11
shrd rdx, rbp, 56
add r13, rdx
adc r15, 0x0
mov rdx, [ rsi + 0x20 ]
mulx rbp, r12, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mulx rdi, r8, [ rsi + 0x18 ]
mov rdx, r12
add rdx, [ rsp + 0xb0 ]
adcx rbp, [ rsp + 0xa8 ]
mov rcx, r13
shrd rcx, r15, 56
xor r15, r15
adox rdx, r8
adox rdi, rbp
mov r12, rdx
mov rdx, [ rax + 0x18 ]
mulx rbp, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xe8 ], rcx
mulx rcx, r15, [ rax + 0x30 ]
adcx r12, r8
adcx rbp, rdi
mov rdx, [ rsi + 0x8 ]
mulx r8, rdi, [ rax + 0x20 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xf0 ], rbx
mov [ rsp + 0xf8 ], rcx
mulx rcx, rbx, [ rsi + 0x0 ]
xor rdx, rdx
adox r12, rdi
adox r8, rbp
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbp, [ rax + 0x20 ]
adcx r14, [ rsp - 0x10 ]
adcx r10, [ rsp - 0x18 ]
add r12, rbx
adcx rcx, r8
add r12, [ rsp + 0xe0 ]
adc rcx, 0x0
mov rdx, r12
shrd rdx, rcx, 56
mov rbx, 0xffffffffffffff 
and r12, rbx
adox r14, rbp
adox rdi, r10
and r9, rbx
adox r14, [ rsp + 0x30 ]
adox rdi, [ rsp + 0x28 ]
adcx r14, r15
adcx rdi, [ rsp + 0xf8 ]
xor r15, r15
adox r14, rdx
adox rdi, r15
mov r8, r14
shrd r8, rdi, 56
add r8, [ rsp + 0xc8 ]
mov rbp, r8
shr rbp, 56
lea r9, [ r9 + rbp ]
add rbp, [ rsp + 0xf0 ]
mov r10, [ rsp + 0xe8 ]
add r10, [ rsp + 0xd0 ]
mov rcx, r10
and rcx, rbx
shr r10, 56
lea r10, [ r10 + rbp ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], rcx
mov rdi, r10
shr rdi, 56
and r10, rbx
mov [ rdx + 0x20 ], r10
and r11, rbx
mov rbp, r9
shr rbp, 56
lea rdi, [ rdi + r12 ]
lea rbp, [ rbp + r11 ]
and r13, rbx
mov [ rdx + 0x10 ], r13
and r8, rbx
and r9, rbx
mov [ rdx + 0x38 ], r8
and r14, rbx
mov [ rdx + 0x28 ], rdi
mov [ rdx + 0x30 ], r14
mov [ rdx + 0x8 ], rbp
mov [ rdx + 0x0 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 384
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.2941
; seed 0579074271146499 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8675493 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=39, initial num_batches=31): 216833 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.024993738108024525
; number reverted permutation / tried permutation: 70976 / 95531 =74.296%
; number reverted decision / tried decision: 54027 / 94468 =57.191%
; validated in 4.414s
