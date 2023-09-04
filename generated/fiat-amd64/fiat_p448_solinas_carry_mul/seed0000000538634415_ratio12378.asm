SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 408
mov rax, rdx
mov rdx, [ rsi + 0x38 ]
mulx r11, r10, [ rax + 0x38 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x20 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rax + 0x30 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], r14
mov [ rsp - 0x30 ], r13
mulx r13, r14, [ rax + 0x0 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x28 ], rbx
mov [ rsp - 0x20 ], r9
mulx r9, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], r9
mov [ rsp - 0x10 ], rbx
mulx rbx, r9, [ rax + 0x38 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x8 ], r13
mov [ rsp + 0x0 ], r14
mulx r14, r13, [ rax + 0x10 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x8 ], r14
mov [ rsp + 0x10 ], r13
mulx r13, r14, [ rax + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x18 ], rdi
mov [ rsp + 0x20 ], r15
mulx r15, rdi, [ rsi + 0x30 ]
mov rdx, r10
mov [ rsp + 0x28 ], r15
xor r15, r15
adox rdx, r10
mov [ rsp + 0x30 ], rdi
mov rdi, r11
adox rdi, r11
adcx rdx, r14
mov [ rsp + 0x38 ], rbx
mov rbx, r13
adcx rbx, rdi
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x40 ], r9
mulx r9, r15, [ rax + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x48 ], r9
mov [ rsp + 0x50 ], r15
mulx r15, r9, [ rsi + 0x30 ]
test al, al
adox r10, r14
adox r13, r11
adcx rdi, r9
mov rdx, r15
adcx rdx, rbx
test al, al
adox r10, r9
adox r15, r13
adcx r10, rcx
mov r11, r8
adcx r11, r15
mov r14, rdx
mov rdx, [ rsi + 0x38 ]
mulx r9, rbx, [ rax + 0x20 ]
mov rdx, [ rax + 0x28 ]
mulx r15, r13, [ rsi + 0x30 ]
xor rdx, rdx
adox rdi, rcx
adox r8, r14
adcx rbx, r13
adcx r15, r9
xor rcx, rcx
adox r10, r12
mov rdx, rbp
adox rdx, r11
adcx rdi, r12
adcx rbp, r8
xor r12, r12
adox r10, [ rsp + 0x40 ]
adox rdx, [ rsp + 0x38 ]
mov rcx, rdx
mov rdx, [ rax + 0x20 ]
mulx r11, r14, [ rsi + 0x10 ]
mov rdx, [ rax + 0x30 ]
mulx r13, r9, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x38 ]
mulx r12, r8, [ rax + 0x10 ]
mov rdx, r9
adcx rdx, [ rsp + 0x20 ]
mov [ rsp + 0x58 ], r11
mov r11, r13
adcx r11, [ rsp + 0x18 ]
mov [ rsp + 0x60 ], r14
mov r14, rdx
add r14, r9
adcx r13, r11
xor r9, r9
adox r14, [ rsp + 0x20 ]
adox r13, [ rsp + 0x18 ]
adcx r14, r8
mov [ rsp + 0x68 ], rbp
mov rbp, r12
adcx rbp, r13
mov r13, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x70 ], rdi
mulx rdi, r9, [ rax + 0x30 ]
test al, al
adox r10, [ rsp + 0x0 ]
adox rcx, [ rsp - 0x8 ]
adcx r13, r8
adcx r12, r11
test al, al
adox r13, [ rsp + 0x30 ]
adox r12, [ rsp + 0x28 ]
adcx r13, [ rsp - 0x20 ]
adcx r12, [ rsp - 0x28 ]
xor rdx, rdx
adox rbx, r9
adox rdi, r15
mov rdx, [ rax + 0x30 ]
mulx r8, r15, [ rsi + 0x30 ]
adcx r14, [ rsp + 0x30 ]
adcx rbp, [ rsp + 0x28 ]
add r14, [ rsp - 0x20 ]
adcx rbp, [ rsp - 0x28 ]
add rbx, [ rsp - 0x10 ]
adcx rdi, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx r9, r11, [ rax + 0x28 ]
xor rdx, rdx
adox r14, r11
mov [ rsp + 0x78 ], rcx
mov rcx, r9
adox rcx, rbp
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x80 ], r10
mulx r10, rbp, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x88 ], rdi
mov [ rsp + 0x90 ], rbx
mulx rbx, rdi, [ rax + 0x30 ]
adcx r14, rdi
mov rdx, rbx
adcx rdx, rcx
add r13, r11
adcx r9, r12
mov r12, rdx
mov rdx, [ rax + 0x38 ]
mulx rcx, r11, [ rsi + 0x10 ]
test al, al
adox r13, rdi
adox rbx, r9
adcx r13, r11
mov rdx, rcx
adcx rdx, rbx
mov rdi, rbp
xor r9, r9
adox rdi, r15
mov rbx, r8
adox rbx, r10
mov r9, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x98 ], r13
mov [ rsp + 0xa0 ], r12
mulx r12, r13, [ rax + 0x38 ]
adcx rdi, r13
mov rdx, r12
adcx rdx, rbx
xor rbx, rbx
adox r14, r11
adox rcx, [ rsp + 0xa0 ]
mov r11, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xa8 ], rcx
mulx rcx, rbx, [ rax + 0x8 ]
mov rdx, rdi
adcx rdx, rbp
adcx r10, r11
test al, al
adox rdx, r15
adox r8, r10
adcx rdx, r13
adcx r12, r8
test al, al
adox rdi, rbx
mov r15, rcx
adox r15, r11
mov rbp, rdx
mov rdx, [ rax + 0x18 ]
mulx r11, r13, [ rsi + 0x28 ]
adcx rbp, rbx
adcx rcx, r12
mov rdx, [ rsi + 0x20 ]
mulx r10, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x30 ]
mulx r12, r8, [ rax + 0x10 ]
add rbp, r8
mov rdx, r12
adcx rdx, rcx
add rdi, r8
adcx r12, r15
xor r15, r15
adox rdi, r13
mov rcx, r11
adox rcx, r12
adcx rbp, r13
adcx r11, rdx
test al, al
adox rbp, rbx
mov r13, r10
adox r13, r11
mov rdx, [ rsi + 0x10 ]
mulx r12, r8, [ rax + 0x30 ]
mov rdx, [ rsi + 0x8 ]
mulx r15, r11, [ rax + 0x38 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], r14
mov [ rsp + 0xb8 ], r15
mulx r15, r14, [ rax + 0x28 ]
adcx rbp, r14
mov rdx, r15
adcx rdx, r13
add rbp, r8
mov r13, r12
adcx r13, rdx
add rdi, rbx
adcx r10, rcx
xor rbx, rbx
adox rdi, r14
adox r15, r10
adcx rdi, r8
adcx r12, r15
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mulx r10, r14, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx rbx, r15, [ rsi + 0x8 ]
mov rdx, r15
mov [ rsp + 0xc0 ], r8
xor r8, r8
adox rdx, [ rsp + 0x98 ]
adox rbx, r9
mov r9, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, r15, [ rax + 0x18 ]
mov rdx, [ rsp - 0x30 ]
mov [ rsp + 0xc8 ], rbx
mov rbx, rdx
adcx rbx, [ rsp + 0x90 ]
mov [ rsp + 0xd0 ], r9
mov r9, [ rsp - 0x38 ]
adcx r9, [ rsp + 0x88 ]
add rbx, r14
adcx r10, r9
xor rdx, rdx
adox rbp, r11
adox r13, [ rsp + 0xb8 ]
adcx rdi, r11
adcx r12, [ rsp + 0xb8 ]
mov rdx, [ rsi + 0x10 ]
mulx r14, r11, [ rax + 0x10 ]
xor rdx, rdx
adox rbp, rcx
adox r13, [ rsp + 0xc0 ]
mov rdx, [ rsi + 0x8 ]
mulx r9, rcx, [ rax + 0x10 ]
adcx rbx, rcx
adcx r9, r10
mov rdx, [ rsi + 0x18 ]
mulx rcx, r10, [ rax + 0x8 ]
add rbp, r10
adcx rcx, r13
xor rdx, rdx
adox rbx, r15
adox r8, r9
mov rdx, [ rsi + 0x8 ]
mulx r13, r15, [ rax + 0x18 ]
mov rdx, rbx
shrd rdx, r8, 56
mov r9, rdx
mov rdx, [ rax + 0x0 ]
mulx r8, r10, [ rsi + 0x38 ]
xor rdx, rdx
adox rbp, r11
adox r14, rcx
mov r11, r10
adcx r11, [ rsp + 0x90 ]
adcx r8, [ rsp + 0x88 ]
mov rdx, [ rsi + 0x30 ]
mulx r10, rcx, [ rax + 0x8 ]
add r11, rcx
adcx r10, r8
mov rdx, 0x38 
bzhi r8, rbx, rdx
adox rbp, r15
adox r13, r14
mov rdx, [ rsi + 0x28 ]
mulx r15, rbx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, [ rax + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xd8 ], r8
mov [ rsp + 0xe0 ], r12
mulx r12, r8, [ rax + 0x28 ]
xor rdx, rdx
adox r11, rbx
adox r15, r10
mov rdx, [ rsi + 0x20 ]
mulx rbx, r10, [ rax + 0x18 ]
adcx r11, r10
adcx rbx, r15
test al, al
adox r11, r14
adox rcx, rbx
adcx r11, r8
adcx r12, rcx
mov rdx, [ rax + 0x8 ]
mulx r8, r14, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mulx r10, r15, [ rax + 0x30 ]
xor rdx, rdx
adox r11, r15
adox r10, r12
mov rdx, [ rax + 0x20 ]
mulx rcx, rbx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x38 ]
mulx r15, r12, [ rsi + 0x0 ]
adcx r11, r12
adcx r15, r10
mov rdx, 0xffffffffffffff 
mov r10, r11
and r10, rdx
shrd r11, r15, 56
test al, al
adox rbp, rbx
adox rcx, r13
adcx rbp, r9
adc rcx, 0x0
mov r9, r11
add r9, rbp
adc rcx, 0x0
mov r13, r9
and r13, rdx
mov rbx, [ rsp + 0x70 ]
adox rbx, [ rsp + 0x40 ]
mov r12, [ rsp + 0x68 ]
adox r12, [ rsp + 0x38 ]
mov rdx, [ rax + 0x0 ]
mulx rbp, r15, [ rsi + 0x30 ]
adcx rbx, r15
adcx rbp, r12
shrd r9, rcx, 56
mov rdx, [ rsi + 0x0 ]
mulx r12, rcx, [ rax + 0x0 ]
xor rdx, rdx
adox rdi, rcx
adox r12, [ rsp + 0xe0 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r15, [ rax + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe8 ], r13
mov [ rsp + 0xf0 ], r10
mulx r10, r13, [ rax + 0x0 ]
mov rdx, r13
adcx rdx, [ rsp + 0xb0 ]
adcx r10, [ rsp + 0xa8 ]
add r11, rdi
adc r12, 0x0
mov rdi, r11
shrd rdi, r12, 56
mov r13, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf8 ], rbp
mulx rbp, r12, [ rax + 0x8 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x100 ], rbx
mov [ rsp + 0x108 ], rdi
mulx rdi, rbx, [ rsi + 0x8 ]
mov rdx, r12
test al, al
adox rdx, [ rsp + 0xd0 ]
adox rbp, [ rsp + 0xc8 ]
adcx r13, r14
adcx r8, r10
mov r14, rdx
mov rdx, [ rax + 0x18 ]
mulx r12, r10, [ rsi + 0x18 ]
add r13, [ rsp + 0x10 ]
adcx r8, [ rsp + 0x8 ]
add r13, r15
adcx rcx, r8
mov rdx, [ rax + 0x28 ]
mulx r8, r15, [ rsi + 0x0 ]
add r13, [ rsp - 0x40 ]
adcx rcx, [ rsp - 0x48 ]
test al, al
adox r13, r15
adox r8, rcx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r15, [ rax + 0x8 ]
adcx r13, r9
adc r8, 0x0
mov rdx, r13
shrd rdx, r8, 56
mov r9, r15
xor r8, r8
adox r9, [ rsp + 0x80 ]
adox rcx, [ rsp + 0x78 ]
adcx r14, [ rsp + 0x108 ]
adc rbp, 0x0
mov r15, r14
shrd r15, rbp, 56
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x110 ], rdi
mulx rdi, r8, [ rax + 0x10 ]
add r9, r8
adcx rdi, rcx
xor rdx, rdx
adox r9, r15
adox rdi, rdx
mov rcx, r9
shrd rcx, rdi, 56
mov rdx, [ rax + 0x8 ]
mulx r8, r15, [ rsi + 0x28 ]
add rcx, [ rsp + 0xd8 ]
mov rdx, rcx
shr rdx, 56
mov rdi, r15
test al, al
adox rdi, [ rsp + 0x100 ]
adox r8, [ rsp + 0xf8 ]
adcx rdi, [ rsp + 0x50 ]
adcx r8, [ rsp + 0x48 ]
mov r15, 0xffffffffffffff 
and rcx, r15
and r9, r15
adox rdi, r10
adox r12, r8
adcx rdi, [ rsp + 0x60 ]
adcx r12, [ rsp + 0x58 ]
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x18 ], rcx
add rdi, rbx
adcx r12, [ rsp + 0x110 ]
mov rbx, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r8, [ rax + 0x30 ]
test al, al
adox rdi, r8
adox rcx, r12
adcx rdi, rbp
adc rcx, 0x0
mov rdx, rdi
and rdx, r15
mov [ r10 + 0x10 ], r9
shrd rdi, rcx, 56
and r11, r15
add rdi, [ rsp + 0xf0 ]
mov rbp, rdi
shr rbp, 56
lea r11, [ r11 + rbp ]
mov r9, r11
and r9, r15
and rdi, r15
mov [ r10 + 0x38 ], rdi
shr r11, 56
and r14, r15
lea r11, [ r11 + r14 ]
mov [ r10 + 0x0 ], r9
mov [ r10 + 0x8 ], r11
add rbp, [ rsp + 0xe8 ]
lea rbx, [ rbx + rbp ]
mov r12, rbx
and r12, r15
mov [ r10 + 0x30 ], rdx
and r13, r15
shr rbx, 56
mov [ r10 + 0x20 ], r12
lea rbx, [ rbx + r13 ]
mov [ r10 + 0x28 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 408
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.2378
; seed 3925769370049888 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8446507 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=41, initial num_batches=31): 215800 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02554902280907362
; number reverted permutation / tried permutation: 71097 / 94644 =75.120%
; number reverted decision / tried decision: 55687 / 95355 =58.400%
; validated in 4.675s
