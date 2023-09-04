SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 368
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, [ rax + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x28 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x30 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], r9
mulx r9, rbx, [ rax + 0x38 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x38 ], r14
mov [ rsp - 0x30 ], r13
mulx r13, r14, [ rsi + 0x38 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x28 ], r9
mov [ rsp - 0x20 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], r10
mulx r10, r11, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x8 ], r10
mov [ rsp + 0x0 ], r11
mulx r11, r10, [ rax + 0x20 ]
test al, al
adox r10, rbp
adox r12, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, rbp, [ rax + 0x28 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x8 ], r11
mov [ rsp + 0x10 ], rbp
mulx rbp, r11, [ rsi + 0x28 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x18 ], rbx
mov [ rsp + 0x20 ], r9
mulx r9, rbx, [ rsi + 0x20 ]
adcx r10, r11
adcx rbp, r12
mov rdx, [ rax + 0x0 ]
mulx r11, r12, [ rsi + 0x38 ]
xor rdx, rdx
adox r10, rbx
adox r9, rbp
mov rbx, r14
adcx rbx, r14
mov rbp, r13
adcx rbp, r13
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x28 ], rdi
mov [ rsp + 0x30 ], r15
mulx r15, rdi, [ rsi + 0x38 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x38 ], r8
mov [ rsp + 0x40 ], rcx
mulx rcx, r8, [ rsi + 0x30 ]
test al, al
adox rbx, rdi
mov rdx, r15
adox rdx, rbp
mov rbp, r10
adcx rbp, r12
adcx r11, r9
add r14, rdi
adcx r15, r13
mov r13, rdx
mov rdx, [ rax + 0x0 ]
mulx rdi, r12, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x48 ], r11
mov [ rsp + 0x50 ], rbp
mulx rbp, r11, [ rax + 0x20 ]
test al, al
adox r14, r11
mov rdx, rbp
adox rdx, r15
mov r15, rdx
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x58 ], rcx
mov [ rsp + 0x60 ], r8
mulx r8, rcx, [ rsi + 0x20 ]
adcx r10, r12
adcx rdi, r9
add r14, [ rsp + 0x40 ]
adcx r15, [ rsp + 0x38 ]
add rbx, r11
adcx rbp, r13
test al, al
adox r14, rcx
mov rdx, r8
adox rdx, r15
mov r9, rdx
mov rdx, [ rsi + 0x30 ]
mulx r12, r13, [ rax + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mulx r15, r11, [ rax + 0x38 ]
adcx rbx, [ rsp + 0x40 ]
adcx rbp, [ rsp + 0x38 ]
mov rdx, r13
test al, al
adox rdx, [ rsp + 0x30 ]
mov [ rsp + 0x68 ], rdi
mov rdi, r12
adox rdi, [ rsp + 0x28 ]
adcx rbx, rcx
adcx r8, rbp
xor rcx, rcx
adox rdx, r11
mov rbp, r15
adox rbp, rdi
mov rdi, rdx
adcx rdi, [ rsp + 0x30 ]
mov [ rsp + 0x70 ], r10
mov r10, rbp
adcx r10, [ rsp + 0x28 ]
add rdi, r13
adcx r12, r10
add rdi, r11
adcx r15, r12
mov r13, rdx
mov rdx, [ rax + 0x8 ]
mulx r10, r11, [ rsi + 0x38 ]
test al, al
adox rbx, [ rsp + 0x20 ]
adox r8, [ rsp + 0x18 ]
adcx r13, r11
mov rdx, r10
adcx rdx, rbp
mov rbp, rdx
mov rdx, [ rsi + 0x28 ]
mulx rcx, r12, [ rax + 0x18 ]
add rbx, [ rsp + 0x60 ]
adcx r8, [ rsp + 0x58 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x78 ], r8
mov [ rsp + 0x80 ], rbx
mulx rbx, r8, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x88 ], r9
mov [ rsp + 0x90 ], r14
mulx r14, r9, [ rax + 0x10 ]
xor rdx, rdx
adox rdi, r11
adox r10, r15
adcx rdi, r8
mov r15, rbx
adcx r15, r10
mov rdx, [ rsi + 0x20 ]
mulx r10, r11, [ rax + 0x20 ]
test al, al
adox r13, r8
adox rbx, rbp
adcx rdi, r12
mov rdx, rcx
adcx rdx, r15
xor rbp, rbp
adox r13, r12
adox rcx, rbx
adcx rdi, r11
mov r12, r10
adcx r12, rdx
test al, al
adox r13, r11
adox r10, rcx
mov rdx, [ rax + 0x8 ]
mulx r15, r8, [ rsi + 0x30 ]
mov rdx, [ rax + 0x28 ]
mulx rbx, r11, [ rsi + 0x18 ]
mov rdx, r8
adcx rdx, [ rsp + 0x50 ]
adcx r15, [ rsp + 0x48 ]
mov rcx, rdx
mov rdx, [ rax + 0x18 ]
mulx rbp, r8, [ rsi + 0x20 ]
test al, al
adox rcx, r9
adox r14, r15
adcx rcx, r8
adcx rbp, r14
add rdi, r11
mov rdx, rbx
adcx rdx, r12
xor r9, r9
adox rdi, [ rsp - 0x10 ]
adox rdx, [ rsp - 0x18 ]
adcx r13, r11
adcx rbx, r10
test al, al
adox rdi, [ rsp + 0x0 ]
adox rdx, [ rsp - 0x8 ]
mov r12, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x20 ]
adcx rcx, r10
adcx r11, rbp
mov rdx, [ rax + 0x30 ]
mulx r8, r15, [ rsi + 0x38 ]
mov rdx, [ rax + 0x30 ]
mulx rbp, r14, [ rsi + 0x8 ]
xor rdx, rdx
adox r13, [ rsp - 0x10 ]
adox rbx, [ rsp - 0x18 ]
adcx rcx, [ rsp + 0x10 ]
adcx r11, [ rsp + 0x8 ]
xor r9, r9
adox rcx, r14
adox rbp, r11
adcx r13, [ rsp + 0x0 ]
adcx rbx, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r14, r10, [ rax + 0x38 ]
test al, al
adox rcx, r10
adox r14, rbp
mov rdx, rcx
shrd rdx, r14, 56
mov r11, rdx
mov rdx, [ rsi + 0x38 ]
mulx r10, rbp, [ rax + 0x10 ]
mov rdx, 0x38 
bzhi r9, rcx, rdx
mov rcx, r15
adox rcx, [ rsp - 0x20 ]
mov r14, r8
adox r14, [ rsp - 0x28 ]
mov rdx, rcx
add rdx, r15
adcx r8, r14
xor r15, r15
adox rcx, rbp
mov [ rsp + 0x98 ], r9
mov r9, r10
adox r9, r14
adcx rdx, [ rsp - 0x20 ]
adcx r8, [ rsp - 0x28 ]
mov r14, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xa0 ], r12
mulx r12, r15, [ rax + 0x0 ]
add r13, r15
adcx r12, rbx
mov rdx, r11
add rdx, r13
adc r12, 0x0
test al, al
adox rcx, [ rsp - 0x30 ]
adox r9, [ rsp - 0x38 ]
mov rbx, rdx
shrd rbx, r12, 56
mov r15, rdx
mov rdx, [ rax + 0x20 ]
mulx r12, r13, [ rsi + 0x28 ]
test al, al
adox rcx, r13
mov rdx, r12
adox rdx, r9
adcx r14, rbp
adcx r10, r8
mov rbp, rdx
mov rdx, [ rsi + 0x20 ]
mulx r9, r8, [ rax + 0x28 ]
mov rdx, 0x38 
mov [ rsp + 0xa8 ], rbx
bzhi rbx, r15, rdx
adox r14, [ rsp - 0x30 ]
adox r10, [ rsp - 0x38 ]
add r14, r13
adcx r12, r10
xor r15, r15
adox r14, r8
mov r13, r9
adox r13, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xb0 ], rbx
mulx rbx, r15, [ rsi + 0x18 ]
adcx r14, r15
mov rdx, rbx
adcx rdx, r13
add rcx, r8
adcx r9, rbp
add rcx, r15
adcx rbx, r9
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx r13, r8, [ rax + 0x38 ]
add rcx, r8
mov rdx, r13
adcx rdx, rbx
test al, al
adox r14, r8
adox r13, rbp
mov r15, rdx
mov rdx, [ rax + 0x0 ]
mulx r9, rbp, [ rsi + 0x28 ]
adcx r14, rbp
adcx r9, r13
mov rdx, [ rax + 0x8 ]
mulx r8, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mulx rbp, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xb8 ], r15
mov [ rsp + 0xc0 ], rcx
mulx rcx, r15, [ rsi + 0x8 ]
test al, al
adox rdi, r13
adox rbp, [ rsp + 0xa0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xc8 ], rcx
mulx rcx, r13, [ rsi + 0x10 ]
adcx r14, rbx
adcx r8, r9
mov rdx, [ rax + 0x10 ]
mulx rbx, r9, [ rsi + 0x18 ]
test al, al
adox r14, r9
adox rbx, r8
mov rdx, [ rax + 0x8 ]
mulx r9, r8, [ rsi + 0x10 ]
adcx rdi, r10
adcx r12, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbp, r10, [ rax + 0x10 ]
xor rdx, rdx
adox rdi, r10
adox rbp, r12
adcx rdi, r15
adcx rbp, [ rsp + 0xc8 ]
mov rdx, [ rsi + 0x0 ]
mulx r12, r15, [ rax + 0x20 ]
add r14, r13
adcx rcx, rbx
mov rdx, [ rax + 0x10 ]
mulx rbx, r13, [ rsi + 0x8 ]
test al, al
adox rdi, r15
adox r12, rbp
mov rdx, [ rsp + 0x90 ]
adcx rdx, [ rsp + 0x20 ]
mov r10, [ rsp + 0x88 ]
adcx r10, [ rsp + 0x18 ]
mov rbp, r8
add rbp, [ rsp + 0x70 ]
adcx r9, [ rsp + 0x68 ]
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xd0 ], rcx
mulx rcx, r15, [ rax + 0x18 ]
xor rdx, rdx
adox rbp, r13
adox rbx, r9
adcx rbp, r15
adcx rcx, rbx
mov rdx, [ rax + 0x8 ]
mulx r9, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx rbx, r15, [ rax + 0x0 ]
mov rdx, 0x38 
mov [ rsp + 0xd8 ], r14
bzhi r14, rbp, rdx
shrd rbp, rcx, 56
xor rcx, rcx
adox rdi, rbp
adox r12, rcx
mov rdx, [ rax + 0x0 ]
mulx rcx, rbp, [ rsi + 0x8 ]
adcx r8, r15
adcx rbx, r10
mov rdx, [ rsi + 0x8 ]
mulx r15, r10, [ rax + 0x8 ]
xor rdx, rdx
adox r8, r10
adox r15, rbx
adcx r11, rdi
adc r12, 0x0
mov rdi, rbp
add rdi, [ rsp + 0xc0 ]
adcx rcx, [ rsp + 0xb8 ]
xor rbp, rbp
adox rdi, r13
adox r9, rcx
adcx rdi, [ rsp + 0xa8 ]
adc r9, 0x0
mov rdx, [ rsi + 0x18 ]
mulx rbx, r13, [ rax + 0x18 ]
mov rdx, rdi
shrd rdx, r9, 56
mov r10, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, rcx, [ rax + 0x10 ]
add r8, rcx
adcx r9, r15
mov rdx, 0x38 
bzhi r15, rdi, rdx
adox r8, r10
adox r9, rbp
mov rdx, [ rax + 0x20 ]
mulx r10, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mulx rbp, rcx, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xe0 ], r15
mov [ rsp + 0xe8 ], r14
mulx r14, r15, [ rsi + 0x28 ]
mov rdx, r15
add rdx, [ rsp + 0x80 ]
adcx r14, [ rsp + 0x78 ]
test al, al
adox rdx, rcx
adox rbp, r14
mov rcx, rdx
mov rdx, [ rax + 0x28 ]
mulx r14, r15, [ rsi + 0x0 ]
mov rdx, rdi
adcx rdx, [ rsp + 0xd8 ]
adcx r10, [ rsp + 0xd0 ]
add rdx, r15
adcx r14, r10
mov rdi, rdx
mov rdx, [ rax + 0x30 ]
mulx r10, r15, [ rsi + 0x0 ]
test al, al
adox rcx, r13
adox rbx, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbp, r13, [ rax + 0x20 ]
mov rdx, r11
shrd rdx, r12, 56
add rcx, r13
adcx rbp, rbx
add rdi, rdx
adc r14, 0x0
xor r12, r12
adox rcx, [ rsp - 0x40 ]
adox rbp, [ rsp - 0x48 ]
adcx rcx, r15
adcx r10, rbp
mov r15, rdi
shrd r15, r14, 56
test al, al
adox rcx, r15
adox r10, r12
mov rbx, rcx
shrd rbx, r10, 56
add rbx, [ rsp + 0x98 ]
mov r13, 0x38 
bzhi rdx, rcx, r13
mov r14, r8
shrd r14, r9, 56
add r14, [ rsp + 0xe8 ]
bzhi r9, r14, r13
mov rbp, rbx
shr rbp, 56
mov r15, rbp
add r15, [ rsp + 0xb0 ]
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x30 ], rdx
bzhi r10, r11, r13
mov [ rcx + 0x18 ], r9
bzhi r11, r8, r13
mov [ rcx + 0x10 ], r11
mov r8, r15
shr r8, 56
shr r14, 56
lea r10, [ r10 + rbp ]
add r8, [ rsp + 0xe0 ]
lea r14, [ r14 + r10 ]
bzhi rdx, r14, r13
bzhi r9, r15, r13
bzhi rbp, rdi, r13
mov [ rcx + 0x0 ], r9
shr r14, 56
lea r14, [ r14 + rbp ]
mov [ rcx + 0x28 ], r14
bzhi rdi, rbx, r13
mov [ rcx + 0x8 ], r8
mov [ rcx + 0x20 ], rdx
mov [ rcx + 0x38 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 368
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.2576
; seed 0931182527016399 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8508561 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=41, initial num_batches=31): 208022 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02444855246380675
; number reverted permutation / tried permutation: 69932 / 94981 =73.627%
; number reverted decision / tried decision: 54040 / 95018 =56.873%
; validated in 7.116s
