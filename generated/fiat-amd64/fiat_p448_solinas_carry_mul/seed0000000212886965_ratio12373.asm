SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 432
mov rax, rdx
mov rdx, [ rdx + 0x38 ]
mulx r11, r10, [ rsi + 0x30 ]
mov rdx, [ rax + 0x28 ]
mulx r8, rcx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x20 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x30 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rsi + 0x8 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x38 ], rbp
mov [ rsp - 0x30 ], r12
mulx r12, rbp, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x28 ], r14
mov [ rsp - 0x20 ], r13
mulx r13, r14, [ rax + 0x18 ]
mov rdx, rbp
mov [ rsp - 0x18 ], r13
xor r13, r13
adox rdx, r10
mov [ rsp - 0x10 ], r14
mov r14, r11
adox r14, r12
mov [ rsp - 0x8 ], rbx
mov rbx, rdx
adcx rbx, rbp
adcx r12, r14
test al, al
adox rbx, r10
adox r11, r12
mov r10, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, rbp, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x0 ], r12
mulx r12, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x8 ], r12
mov [ rsp + 0x10 ], r13
mulx r13, r12, [ rax + 0x10 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x18 ], rbp
mov [ rsp + 0x20 ], r9
mulx r9, rbp, [ rax + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x28 ], r8
mov [ rsp + 0x30 ], rcx
mulx rcx, r8, [ rsi + 0x38 ]
adcx r10, r12
mov rdx, r13
adcx rdx, r14
test al, al
adox rbx, r12
adox r13, r11
mov r14, r8
adcx r14, rbp
mov r11, r9
adcx r11, rcx
mov r12, r8
mov [ rsp + 0x38 ], rdx
xor rdx, rdx
adox r12, r8
adox rcx, rcx
adcx r14, r15
mov r8, rdi
adcx r8, r11
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x40 ], r8
mulx r8, r11, [ rsi + 0x30 ]
xor rdx, rdx
adox r12, rbp
adox r9, rcx
adcx rbx, r11
mov rbp, r8
adcx rbp, r13
add r10, r11
adcx r8, [ rsp + 0x38 ]
add r14, [ rsp + 0x30 ]
mov r13, [ rsp + 0x40 ]
adcx r13, [ rsp + 0x28 ]
xor rcx, rcx
adox r10, [ rsp + 0x20 ]
adox r8, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x30 ]
mulx rcx, r11, [ rax + 0x30 ]
adcx r12, r15
adcx rdi, r9
mov rdx, [ rax + 0x28 ]
mulx r9, r15, [ rsi + 0x38 ]
mov rdx, r15
add rdx, r11
mov [ rsp + 0x48 ], r13
mov r13, rcx
adcx r13, r9
add rdx, [ rsp - 0x20 ]
adcx r13, [ rsp - 0x28 ]
mov [ rsp + 0x50 ], r14
mov r14, rdx
add r14, r15
adcx r9, r13
xor r15, r15
adox r12, [ rsp + 0x30 ]
adox rdi, [ rsp + 0x28 ]
adcx r14, r11
adcx rcx, r9
test al, al
adox r14, [ rsp - 0x20 ]
adox rcx, [ rsp - 0x28 ]
mov r11, rdx
mov rdx, [ rsi + 0x30 ]
mulx r15, r9, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x58 ], rdi
mov [ rsp + 0x60 ], r12
mulx r12, rdi, [ rsi + 0x38 ]
adcx r14, rdi
mov rdx, r12
adcx rdx, rcx
xor rcx, rcx
adox r14, r9
mov [ rsp + 0x68 ], r8
mov r8, r15
adox r8, rdx
adcx r11, rdi
adcx r12, r13
test al, al
adox r11, r9
adox r15, r12
adcx r14, [ rsp - 0x10 ]
adcx r8, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x38 ]
mulx r9, r13, [ rax + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mulx r12, rdi, [ rax + 0x20 ]
add r11, [ rsp - 0x10 ]
adcx r15, [ rsp - 0x18 ]
xor rdx, rdx
adox r11, rdi
mov rcx, r12
adox rcx, r15
adcx r14, rdi
adcx r12, r8
test al, al
adox r11, [ rsp - 0x40 ]
adox rcx, [ rsp - 0x48 ]
mov rdx, [ rax + 0x28 ]
mulx rdi, r8, [ rsi + 0x30 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x70 ], rcx
mulx rcx, r15, [ rsi + 0x28 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x78 ], r11
mov [ rsp + 0x80 ], r12
mulx r12, r11, [ rsi + 0x20 ]
adcx r13, r8
adcx rdi, r9
test al, al
adox r13, r15
adox rcx, rdi
mov rdx, [ rax + 0x38 ]
mulx r8, r9, [ rsi + 0x20 ]
mov rdx, [ rax + 0x30 ]
mulx rdi, r15, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x88 ], r14
mov [ rsp + 0x90 ], rdi
mulx rdi, r14, [ rax + 0x8 ]
adcx r13, r9
adcx r8, rcx
mov rdx, [ rax + 0x0 ]
mulx r9, rcx, [ rsi + 0x38 ]
add rbx, [ rsp + 0x20 ]
adcx rbp, [ rsp - 0x8 ]
mov rdx, r13
add rdx, rcx
adcx r9, r8
test al, al
adox r10, r11
mov rcx, r12
adox rcx, [ rsp + 0x68 ]
adcx r10, r15
adcx rcx, [ rsp + 0x90 ]
add rdx, r14
adcx rdi, r9
test al, al
adox rbx, r11
adox r12, rbp
adcx rbx, r15
adcx r12, [ rsp + 0x90 ]
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, r15, [ rax + 0x38 ]
mov rdx, [ rax + 0x30 ]
mulx r9, rbp, [ rsi + 0x20 ]
xor rdx, rdx
adox rbx, r15
mov [ rsp + 0x98 ], rdi
mov rdi, r14
adox rdi, r12
adcx r10, r15
adcx r14, rcx
mov rdx, [ rax + 0x38 ]
mulx r12, rcx, [ rsi + 0x18 ]
mov rdx, rbp
xor r15, r15
adox rdx, [ rsp + 0x50 ]
mov [ rsp + 0xa0 ], r14
mov r14, r9
adox r14, [ rsp + 0x48 ]
mov r15, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xa8 ], r10
mov [ rsp + 0xb0 ], rdi
mulx rdi, r10, [ rax + 0x0 ]
adcx r15, rcx
mov rdx, r12
adcx rdx, r14
mov r14, rbp
mov [ rsp + 0xb8 ], rdx
xor rdx, rdx
adox r14, [ rsp + 0x60 ]
adox r9, [ rsp + 0x58 ]
adcx r14, rcx
adcx r12, r9
add r14, r10
adcx rdi, r12
mov rdx, [ rsi + 0x28 ]
mulx rcx, rbp, [ rax + 0x8 ]
add r14, rbp
adcx rcx, rdi
mov rdx, [ rax + 0x18 ]
mulx r9, r10, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mulx rdi, r12, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0xc0 ], r15
mulx r15, rbp, [ rsi + 0x20 ]
test al, al
adox r11, r12
adox rdi, [ rsp + 0x98 ]
mov rdx, [ rsp - 0x40 ]
mov r12, rdx
adcx r12, [ rsp + 0x88 ]
mov [ rsp + 0xc8 ], rbx
mov rbx, [ rsp - 0x48 ]
adcx rbx, [ rsp + 0x80 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd0 ], rbx
mov [ rsp + 0xd8 ], r12
mulx r12, rbx, [ rax + 0x20 ]
add r11, r10
adcx r9, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, r10, [ rax + 0x28 ]
xor rdx, rdx
adox r11, rbx
adox r12, r9
mov rdx, [ rsi + 0x10 ]
mulx r9, rbx, [ rax + 0x30 ]
adcx r14, rbp
adcx r15, rcx
mov rdx, [ rax + 0x18 ]
mulx rbp, rcx, [ rsi + 0x18 ]
test al, al
adox r14, rcx
adox rbp, r15
mov rdx, [ rax + 0x38 ]
mulx rcx, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xe0 ], rbp
mov [ rsp + 0xe8 ], r14
mulx r14, rbp, [ rax + 0x38 ]
adcx r11, r10
adcx rdi, r12
test al, al
adox r11, [ rsp - 0x30 ]
adox rdi, [ rsp - 0x38 ]
adcx r11, r15
adcx rcx, rdi
mov rdx, rbx
xor r10, r10
adox rdx, [ rsp + 0x78 ]
mov r12, r9
adox r12, [ rsp + 0x70 ]
mov r15, rbx
adcx r15, [ rsp + 0xd8 ]
adcx r9, [ rsp + 0xd0 ]
xor rbx, rbx
adox rdx, rbp
mov r10, r14
adox r10, r12
adcx r15, rbp
adcx r14, r9
mov rbp, r11
shrd rbp, rcx, 56
mov rdi, 0x38 
bzhi r12, r11, rdi
mov r11, rdx
mov rdx, [ rax + 0x0 ]
mulx r9, rcx, [ rsi + 0x28 ]
mov rdx, rcx
adox rdx, [ rsp + 0xc8 ]
adox r9, [ rsp + 0xb0 ]
mov rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx rdi, rbx, [ rax + 0x0 ]
xor rdx, rdx
adox r11, rbx
adox rdi, r10
mov r10, rbp
adcx r10, r11
adc rdi, 0x0
mov rdx, [ rax + 0x0 ]
mulx r11, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xf0 ], r12
mov [ rsp + 0xf8 ], rdi
mulx rdi, r12, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x100 ], r10
mov [ rsp + 0x108 ], r9
mulx r9, r10, [ rax + 0x18 ]
xor rdx, rdx
adox r15, rbx
adox r11, r14
adcx r15, r12
adcx rdi, r11
xor r14, r14
adox r15, [ rsp + 0x18 ]
adox rdi, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, rbx, [ rax + 0x10 ]
adcx r15, r10
adcx r9, rdi
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r14, rdi, [ rax + 0x28 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x110 ], r14
mov [ rsp + 0x118 ], rdi
mulx rdi, r14, [ rsi + 0x18 ]
xor rdx, rdx
adox r13, r14
adox rdi, r8
adcx r13, r10
adcx r11, rdi
mov rdx, [ rsi + 0x20 ]
mulx r10, r8, [ rax + 0x8 ]
add r13, rbx
adcx r12, r11
mov rdx, [ rsi + 0x18 ]
mulx r14, rbx, [ rax + 0x10 ]
mov rdx, [ rax + 0x20 ]
mulx r11, rdi, [ rsi + 0x0 ]
test al, al
adox r15, rdi
adox r11, r9
mov rdx, [ rax + 0x18 ]
mulx rdi, r9, [ rsi + 0x0 ]
adcx r13, r9
adcx rdi, r12
mov rdx, r13
shrd rdx, rdi, 56
add r15, rdx
adc r11, 0x0
mov rdx, [ rsi + 0x8 ]
mulx r9, r12, [ rax + 0x20 ]
test al, al
adox rcx, r8
adox r10, [ rsp + 0x108 ]
adcx rcx, rbx
adcx r14, r10
mov rdx, 0x38 
bzhi r8, r13, rdx
adox rbp, r15
mov rbx, 0x0 
adox r11, rbx
bzhi r13, rbp, rdx
shrd rbp, r11, 56
mov rdx, [ rax + 0x18 ]
mulx r15, rdi, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x120 ], r13
mulx r13, rbx, [ rax + 0x20 ]
mov rdx, rbx
add rdx, [ rsp + 0xe8 ]
adcx r13, [ rsp + 0xe0 ]
add rcx, rdi
adcx r15, r14
test al, al
adox rcx, r12
adox r9, r15
adcx rcx, [ rsp + 0x118 ]
adcx r9, [ rsp + 0x110 ]
mov r12, rdx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r14, [ rax + 0x8 ]
xor rdx, rdx
adox rcx, rbp
adox r9, rdx
mov rbp, [ rsp + 0x10 ]
mov rbx, rbp
adcx rbx, [ rsp + 0xc0 ]
mov r15, [ rsp + 0x8 ]
adcx r15, [ rsp + 0xb8 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x128 ], r8
mulx r8, rbp, [ rsi + 0x0 ]
xor rdx, rdx
adox r12, r10
adox r11, r13
adcx rbx, r14
adcx rdi, r15
mov rdx, [ rax + 0x0 ]
mulx r13, r10, [ rsi + 0x8 ]
add r12, rbp
adcx r8, r11
mov rdx, rcx
shrd rdx, r9, 56
add r12, rdx
adc r8, 0x0
mov r14, r10
test al, al
adox r14, [ rsp + 0xa8 ]
adox r13, [ rsp + 0xa0 ]
mov r9, [ rsp + 0x100 ]
mov r15, [ rsp + 0xf8 ]
mov rbp, r9
shrd rbp, r15, 56
mov r15, 0xffffffffffffff 
mov r11, r12
and r11, r15
and r9, r15
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x30 ], r11
shrd r12, r8, 56
mov rdx, [ rax + 0x8 ]
mulx r11, r8, [ rsi + 0x0 ]
add r12, [ rsp + 0xf0 ]
xor rdx, rdx
adox r14, r8
adox r11, r13
adcx r14, rbp
adc r11, 0x0
mov r13, r12
and r13, r15
mov rbp, r14
shrd rbp, r11, 56
and r14, r15
mov rdx, [ rsi + 0x0 ]
mulx r11, r8, [ rax + 0x10 ]
adox rbx, r8
adox r11, rdi
adcx rbx, rbp
adc r11, 0x0
mov rdx, rbx
shrd rdx, r11, 56
add rdx, [ rsp + 0x128 ]
mov rdi, rdx
shr rdi, 56
shr r12, 56
lea r9, [ r9 + r12 ]
mov rbp, r9
shr rbp, 56
add r12, [ rsp + 0x120 ]
and r9, r15
lea rdi, [ rdi + r12 ]
mov [ r10 + 0x0 ], r9
mov r8, rdi
and r8, r15
shr rdi, 56
and rcx, r15
and rbx, r15
lea rdi, [ rdi + rcx ]
lea rbp, [ rbp + r14 ]
and rdx, r15
mov [ r10 + 0x18 ], rdx
mov [ r10 + 0x38 ], r13
mov [ r10 + 0x20 ], r8
mov [ r10 + 0x10 ], rbx
mov [ r10 + 0x8 ], rbp
mov [ r10 + 0x28 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 432
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.2373
; seed 0231395565391194 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6215647 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=41, initial num_batches=31): 154454 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.024849223258656742
; number reverted permutation / tried permutation: 72445 / 94811 =76.410%
; number reverted decision / tried decision: 55049 / 95188 =57.832%
; validated in 5.565s
