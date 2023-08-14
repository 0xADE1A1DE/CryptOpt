SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 424
mov rax, [ rsi + 0x28 ]
lea r10, [rax + rax]
mov rdx, [ rsi + 0x30 ]
mulx r11, rax, rdx
mov rdx, [ rsi + 0x30 ]
lea rcx, [rdx + rdx]
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, rcx
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x40 ], r8
mov r8, rdx
shl r8, 0x1
mov rdx, r8
mov [ rsp - 0x38 ], r15
mulx r15, r8, [ rsi + 0x28 ]
mov [ rsp - 0x30 ], r14
mov [ rsp - 0x28 ], r9
mulx r9, r14, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r9
mov r9, rax
mov [ rsp - 0x18 ], r14
xor r14, r14
adox r9, r8
mov [ rsp - 0x10 ], rdi
mov rdi, r15
adox rdi, r11
mov [ rsp - 0x8 ], rbp
mulx rbp, r14, [ rsi + 0x8 ]
mov [ rsp + 0x0 ], rbp
mov rbp, r9
adcx rbp, rax
adcx r11, rdi
mov rax, 0x1 
mov [ rsp + 0x8 ], r14
shlx r14, [ rsi + 0x20 ], rax
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], rbx
mov [ rsp + 0x18 ], r13
mulx r13, rbx, rdx
xor rdx, rdx
adox rbp, r8
adox r15, r11
mov rdx, r14
mulx r8, r14, [ rsi + 0x8 ]
imul r11, [ rsi + 0x18 ], 0x2
mov [ rsp + 0x20 ], r8
mov [ rsp + 0x28 ], r14
mulx r14, r8, [ rsi + 0x18 ]
mov [ rsp + 0x30 ], r11
xor r11, r11
adox rbp, rbx
mov [ rsp + 0x38 ], r14
mov r14, r13
adox r14, r15
mulx r11, r15, [ rsi + 0x10 ]
adcx rbp, r12
adcx r14, [ rsp + 0x18 ]
mov [ rsp + 0x40 ], r11
mov [ rsp + 0x48 ], r15
mulx r15, r11, [ rsi + 0x0 ]
test al, al
adox r9, rbx
adox r13, rdi
mov rdx, [ rsi + 0x38 ]
mulx rbx, rdi, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r15
mov [ rsp + 0x58 ], r11
mulx r11, r15, rdx
adcx rbp, [ rsp + 0x10 ]
adcx r14, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x60 ], r14
mov [ rsp + 0x68 ], rbp
mulx rbp, r14, rcx
xor rdx, rdx
adox r9, r12
adox r13, [ rsp + 0x18 ]
mov r12, rdi
adcx r12, r15
mov [ rsp + 0x70 ], r8
mov r8, r11
adcx r8, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x78 ], r13
mov r13, rdx
shl r13, 0x1
mov rdx, rdi
mov [ rsp + 0x80 ], r10
xor r10, r10
adox rdx, rdi
adox rbx, rbx
adcx r12, [ rsp - 0x10 ]
adcx r8, [ rsp - 0x28 ]
xor rdi, rdi
adox rdx, r15
adox r11, rbx
adcx r12, [ rsp - 0x18 ]
adcx r8, [ rsp - 0x20 ]
mov r10, rdx
mov rdx, [ rsi + 0x30 ]
mulx rbx, r15, rax
mov rdx, r15
test al, al
adox rdx, r15
mov [ rsp + 0x88 ], r8
mov r8, rbx
adox r8, rbx
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x90 ], r12
mov [ rsp + 0x98 ], r11
mulx r11, r12, rax
adcx r14, r12
adcx r11, rbp
mov rdx, r13
mulx rbp, r13, [ rsi + 0x8 ]
mov r12, r14
test al, al
adox r12, r13
adox rbp, r11
adcx r9, [ rsp + 0x10 ]
mov r13, [ rsp - 0x8 ]
adcx r13, [ rsp + 0x78 ]
test al, al
adox r9, [ rsp + 0x8 ]
adox r13, [ rsp + 0x0 ]
xchg rdx, rax
mov [ rsp + 0xa0 ], r10
mov [ rsp + 0xa8 ], rbp
mulx rbp, r10, [ rsi + 0x10 ]
adcx r9, [ rsp - 0x30 ]
adcx r13, [ rsp - 0x38 ]
mov [ rsp + 0xb0 ], r13
xor r13, r13
adox r14, [ rsp + 0x70 ]
adox r11, [ rsp + 0x38 ]
xchg rdx, rcx
mov [ rsp + 0xb8 ], r9
mulx r9, r13, [ rsi + 0x8 ]
adcx r14, [ rsp - 0x40 ]
adcx r11, [ rsp - 0x48 ]
mov [ rsp + 0xc0 ], rbp
xor rbp, rbp
adox r14, r13
adox r9, r11
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r11, [ rsp + 0x30 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xc8 ], r10
mov [ rsp + 0xd0 ], r12
mulx r12, r10, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xd8 ], r9
mov [ rsp + 0xe0 ], r14
mulx r14, r9, [ rsp + 0x80 ]
adcx rdi, r9
mov rdx, r14
adcx rdx, r8
test al, al
adox r15, r9
adox r14, rbx
adcx r15, r10
mov rbx, r12
adcx rbx, r14
add rdi, r10
adcx r12, rdx
mov rdx, [ rsi + 0x0 ]
mulx r10, r8, rcx
mov rdx, [ rsi + 0x10 ]
mulx r9, rcx, rdx
mov rdx, rcx
test al, al
adox rdx, [ rsp + 0x68 ]
adox r9, [ rsp + 0x60 ]
adcx rdx, [ rsp + 0x8 ]
adcx r9, [ rsp + 0x0 ]
add rdx, r11
adcx rbp, r9
mov r11, rdx
mov rdx, [ rsp + 0x30 ]
mulx rcx, r14, [ rsi + 0x0 ]
mov r9, r8
test al, al
adox r9, [ rsp + 0xe0 ]
adox r10, [ rsp + 0xd8 ]
adcx r11, [ rsp + 0x58 ]
adcx rbp, [ rsp + 0x50 ]
mov r8, r14
add r8, [ rsp + 0xd0 ]
adcx rcx, [ rsp + 0xa8 ]
mov r14, 0x38 
mov [ rsp + 0xe8 ], rbx
bzhi rbx, r9, r14
mov [ rsp + 0xf0 ], r15
mulx r15, r14, [ rsi + 0x10 ]
adox rdi, [ rsp + 0xc8 ]
adox r12, [ rsp + 0xc0 ]
xor rdx, rdx
adox rdi, r14
adox r15, r12
mov r14, 0x38 
bzhi r12, r8, r14
adox rdi, [ rsp + 0x28 ]
adox r15, [ rsp + 0x20 ]
mov rdx, [ rsp + 0x80 ]
mov [ rsp + 0xf8 ], r12
mulx r12, r14, [ rsi + 0x0 ]
shrd r8, rcx, 56
mov [ rsp + 0x100 ], rbx
mulx rbx, rcx, [ rsi + 0x8 ]
xor rdx, rdx
adox r11, r8
adox rbp, rdx
mov r8, [ rsp - 0x10 ]
mov [ rsp + 0x108 ], rbx
mov rbx, r8
adcx rbx, [ rsp + 0xa0 ]
mov [ rsp + 0x110 ], rcx
mov rcx, [ rsp - 0x28 ]
adcx rcx, [ rsp + 0x98 ]
shrd r9, r10, 56
test al, al
adox rbx, [ rsp - 0x18 ]
adox rcx, [ rsp - 0x20 ]
mov r8, r9
adcx r8, r11
adc rbp, 0x0
mov r10, r8
shrd r10, rbp, 56
mov rdx, r13
mulx r11, r13, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x118 ], r11
mulx r11, rbp, rdx
mov rdx, 0x38 
mov [ rsp + 0x120 ], r13
bzhi r13, r8, rdx
adox rdi, r14
adox r12, r15
xor r15, r15
adox rbx, rbp
adox r11, rcx
adcx rbx, [ rsp + 0x48 ]
adcx r11, [ rsp + 0x40 ]
test al, al
adox rbx, [ rsp + 0x110 ]
adox r11, [ rsp + 0x108 ]
adcx rdi, r10
adc r12, 0x0
imul r14, [ rsi + 0x8 ], 0x2
mov rcx, rdi
shrd rcx, r12, 56
bzhi r8, rdi, rdx
adox rbx, [ rsp + 0x120 ]
adox r11, [ rsp + 0x118 ]
xor r10, r10
adox rbx, rcx
adox r11, r10
mov r15, rbx
shrd r15, r11, 56
add r15, [ rsp + 0x100 ]
mov rbp, r15
shr rbp, 56
test al, al
adox r9, [ rsp + 0xb8 ]
mov rdi, [ rsp + 0xb0 ]
adox rdi, r10
bzhi r12, r9, rdx
shrd r9, rdi, 56
lea r12, [ r12 + rbp ]
lea r13, [ r13 + rbp ]
mov rcx, [ rsp + 0xc8 ]
mov r11, rcx
test al, al
adox r11, [ rsp + 0xf0 ]
mov rbp, [ rsp + 0xc0 ]
adox rbp, [ rsp + 0xe8 ]
mov rdx, [ rsi + 0x0 ]
mulx rdi, rcx, r14
adcx r11, rcx
adcx rdi, rbp
test al, al
adox r11, r9
adox rdi, r10
mov rdx, r11
shrd rdx, rdi, 56
mov r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r9, rdx
mov rdx, r9
xor rcx, rcx
adox rdx, [ rsp + 0x90 ]
adox rbp, [ rsp + 0x88 ]
mov r10, 0xffffffffffffff 
and r11, r10
xchg rdx, rax
mulx r9, rdi, [ rsi + 0x0 ]
adox rax, rdi
adox r9, rbp
adcx rax, r14
adc r9, 0x0
mov rdx, rax
and rdx, r10
shrd rax, r9, 56
add rax, [ rsp + 0xf8 ]
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x10 ], rdx
mov rbp, rax
and rbp, r10
shr rax, 56
lea rax, [ rax + r13 ]
mov r13, r12
shr r13, 56
mov rdi, rax
and rdi, r10
shr rax, 56
lea rax, [ rax + r8 ]
lea r13, [ r13 + r11 ]
mov [ r14 + 0x8 ], r13
and r15, r10
and rbx, r10
mov [ r14 + 0x28 ], rax
mov [ r14 + 0x30 ], rbx
and r12, r10
mov [ r14 + 0x0 ], r12
mov [ r14 + 0x18 ], rbp
mov [ r14 + 0x38 ], r15
mov [ r14 + 0x20 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 424
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.0934
; seed 3648802751540077 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 2736217 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=113, initial num_batches=31): 105053 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.038393519227458935
; number reverted permutation / tried permutation: 73204 / 95010 =77.049%
; number reverted decision / tried decision: 67333 / 94989 =70.885%
; validated in 1.455s
