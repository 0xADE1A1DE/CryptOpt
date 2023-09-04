SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 432
mov rax, [ rsi + 0x30 ]
mov r10, rax
shl r10, 0x1
mov rdx, [ rsi + 0x28 ]
mulx r11, rax, rdx
imul rdx, [ rsi + 0x38 ], 0x2
mov rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
mov rdx, rcx
mov [ rsp - 0x70 ], r12
mulx r12, rcx, [ rsi + 0x30 ]
xchg rdx, r10
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x28 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], rdi
mov rdi, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x40 ], r15
mov [ rsp - 0x38 ], r12
mulx r12, r15, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], r12
mov [ rsp - 0x28 ], r15
mulx r15, r12, rdi
mov rdx, r10
mov [ rsp - 0x20 ], r15
mulx r15, r10, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r12
mov [ rsp - 0x10 ], r15
mulx r15, r12, [ rsi + 0x0 ]
xchg rdx, rdi
mov [ rsp - 0x8 ], r15
mov [ rsp + 0x0 ], r12
mulx r12, r15, [ rsi + 0x20 ]
mov [ rsp + 0x8 ], r10
mov r10, [ rsi + 0x10 ]
mov [ rsp + 0x10 ], rcx
mov rcx, r10
shl rcx, 0x1
xchg rdx, rcx
mov [ rsp + 0x18 ], r9
mulx r9, r10, [ rsi + 0x8 ]
mov [ rsp + 0x20 ], r8
mov [ rsp + 0x28 ], r12
mulx r12, r8, [ rsi + 0x0 ]
mov rdx, rdi
mov [ rsp + 0x30 ], r12
mulx r12, rdi, [ rsi + 0x28 ]
test al, al
adox r13, rbx
adox rbp, r14
mulx r14, rbx, [ rsi + 0x10 ]
mov [ rsp + 0x38 ], r8
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x40 ], r14
mov [ rsp + 0x48 ], rbx
mulx rbx, r14, rcx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x50 ], rbx
mulx rbx, rcx, rdx
mov rdx, rcx
adcx rdx, rax
mov [ rsp + 0x58 ], r14
mov r14, r11
adcx r14, rbx
mov [ rsp + 0x60 ], r12
mov r12, r13
test al, al
adox r12, r10
adox r9, rbp
adcx rdx, r15
adcx r14, [ rsp + 0x28 ]
mov r10, rcx
mov [ rsp + 0x68 ], rdi
xor rdi, rdi
adox r10, rcx
adox rbx, rbx
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x70 ], r9
mulx r9, rdi, r8
adcx r10, rax
adcx r11, rbx
mov rdx, [ rsi + 0x18 ]
mulx r8, rax, rdx
mov rdx, [ rsi + 0x28 ]
lea rbx, [rdx + rdx]
test al, al
adox r10, r15
adox r11, [ rsp + 0x28 ]
imul rdx, [ rsi + 0x20 ], 0x2
xor r15, r15
adox r10, rdi
mov [ rsp + 0x78 ], r12
mov r12, r9
adox r12, r11
adcx rcx, rdi
adcx r9, r14
mulx rdi, r14, [ rsi + 0x8 ]
xor r11, r11
adox r10, rax
adox r8, r12
mulx rax, r15, [ rsi + 0x18 ]
mov r12, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x80 ], r9
mulx r9, r11, rbx
adcx r13, r15
adcx rax, rbp
mov rdx, rbx
mulx rbp, rbx, [ rsi + 0x8 ]
mov r15, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x88 ], rcx
mov [ rsp + 0x90 ], rdi
mulx rdi, rcx, rdx
mov rdx, r15
mov [ rsp + 0x98 ], r14
mulx r14, r15, [ rsi + 0x0 ]
mov [ rsp + 0xa0 ], r14
imul r14, [ rsi + 0x18 ], 0x2
mov [ rsp + 0xa8 ], r15
xor r15, r15
adox r13, r11
adox r9, rax
adcx r13, [ rsp + 0x20 ]
adcx r9, [ rsp + 0x18 ]
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r15, rax, r14
mov rdx, rax
add rdx, [ rsp + 0x78 ]
adcx r15, [ rsp + 0x70 ]
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb0 ], rbp
mov [ rsp + 0xb8 ], rbx
mulx rbx, rbp, r14
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xc0 ], r8
mov [ rsp + 0xc8 ], r10
mulx r10, r8, rdx
mov rdx, rcx
mov [ rsp + 0xd0 ], rbx
xor rbx, rbx
adox rdx, [ rsp + 0x68 ]
mov [ rsp + 0xd8 ], rbp
mov rbp, rdi
adox rbp, [ rsp + 0x60 ]
mov [ rsp + 0xe0 ], r9
mov r9, rdx
adcx r9, rcx
adcx rdi, rbp
mov rcx, rax
shrd rcx, r15, 56
add rdx, r8
mov r15, r10
adcx r15, rbp
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xe8 ], rcx
mulx rcx, rbx, r11
xor rdx, rdx
adox rbp, rbx
mov [ rsp + 0xf0 ], r13
mov r13, rcx
adox r13, r15
adcx r9, [ rsp + 0x68 ]
adcx rdi, [ rsp + 0x60 ]
xor r15, r15
adox r9, r8
adox r10, rdi
adcx r9, rbx
adcx rcx, r10
add r9, [ rsp + 0x58 ]
adcx rcx, [ rsp + 0x50 ]
mov rdx, [ rsp + 0x10 ]
mov r8, rdx
test al, al
adox r8, rdx
mov rbx, [ rsp - 0x38 ]
mov rdi, rbx
adox rdi, rbx
adcx r9, [ rsp - 0x28 ]
adcx rcx, [ rsp - 0x30 ]
test al, al
adox rbp, [ rsp + 0x58 ]
adox r13, [ rsp + 0x50 ]
adcx rbp, [ rsp + 0x8 ]
adcx r13, [ rsp - 0x10 ]
xchg rdx, r14
mulx r15, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xf8 ], rdi
mov [ rsp + 0x100 ], r8
mulx r8, rdi, rdx
xor rdx, rdx
adox rbp, rdi
adox r8, r13
adcx r9, [ rsp + 0x8 ]
adcx rcx, [ rsp - 0x10 ]
add r9, r10
adcx r15, rcx
mov rdx, r12
mulx r13, r12, [ rsi + 0x0 ]
mov r10, [ rsp + 0xf0 ]
test al, al
adox r10, [ rsp + 0x0 ]
mov rdi, [ rsp + 0xe0 ]
adox rdi, [ rsp - 0x8 ]
adcx r9, r12
adcx r13, r15
xor rcx, rcx
adox r9, [ rsp + 0xe8 ]
adox r13, rcx
mov r15, r10
shrd r15, rdi, 56
mov r12, r15
xor rdi, rdi
adox r12, r9
adox r13, rdi
mov rcx, [ rsi + 0x8 ]
lea r9, [rcx + rcx]
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x108 ], r9
mulx r9, rdi, r11
adcx r15, rbp
adc r8, 0x0
xor rdx, rdx
adox r14, rdi
mov r11, r9
adox r11, rbx
adcx r14, [ rsp - 0x40 ]
adcx r11, [ rsp - 0x48 ]
mov rbx, r15
shrd rbx, r8, 56
add r14, [ rsp + 0x48 ]
adcx r11, [ rsp + 0x40 ]
mov rbp, rdi
add rbp, [ rsp + 0x100 ]
adcx r9, [ rsp + 0xf8 ]
mov rdx, [ rsi + 0x8 ]
mulx r8, rdi, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x110 ], r8
mov [ rsp + 0x118 ], rdi
mulx rdi, r8, rcx
mov rdx, 0x38 
bzhi rcx, r12, rdx
mov rdx, [ rsp + 0x108 ]
mov [ rsp + 0x120 ], rcx
mov [ rsp + 0x128 ], rbx
mulx rbx, rcx, [ rsi + 0x0 ]
adox rbp, [ rsp - 0x40 ]
adox r9, [ rsp - 0x48 ]
xor rdx, rdx
adox r14, rcx
adox rbx, r11
adcx rbp, [ rsp + 0x48 ]
adcx r9, [ rsp + 0x40 ]
test al, al
adox rbp, [ rsp + 0xd8 ]
adox r9, [ rsp + 0xd0 ]
mov r11, r8
adcx r11, [ rsp + 0xc8 ]
adcx rdi, [ rsp + 0xc0 ]
test al, al
adox r11, [ rsp + 0xb8 ]
adox rdi, [ rsp + 0xb0 ]
adcx r14, [ rsp + 0x128 ]
adc rbx, 0x0
shrd r12, r13, 56
add rbp, [ rsp + 0x98 ]
adcx r9, [ rsp + 0x90 ]
add rbp, [ rsp + 0xa8 ]
adcx r9, [ rsp + 0xa0 ]
mov r13, [ rsp + 0x88 ]
test al, al
adox r13, [ rsp + 0x118 ]
mov r8, [ rsp + 0x80 ]
adox r8, [ rsp + 0x110 ]
adcx r13, [ rsp + 0x38 ]
adcx r8, [ rsp + 0x30 ]
test al, al
adox rbp, r12
adox r9, rdx
mov rcx, rbp
shrd rcx, r9, 56
mov r12, r14
shrd r12, rbx, 56
mov rbx, 0xffffffffffffff 
and rax, rbx
adox r13, r12
adox r8, rdx
mov r9, r13
shrd r9, r8, 56
and r13, rbx
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x10 ], r13
lea r9, [ r9 + rax ]
mov rax, r9
and rax, rbx
shr r9, 56
and rbp, rbx
and r10, rbx
adox r11, [ rsp - 0x18 ]
adox rdi, [ rsp - 0x20 ]
adcx r11, rcx
adc rdi, 0x0
mov [ r12 + 0x18 ], rax
mov rcx, r11
shrd rcx, rdi, 56
lea rcx, [ rcx + r10 ]
mov r8, rcx
shr r8, 56
and rcx, rbx
mov [ r12 + 0x38 ], rcx
and r15, rbx
lea r15, [ r15 + r8 ]
mov r13, r15
and r13, rbx
mov [ r12 + 0x0 ], r13
add r8, [ rsp + 0x120 ]
shr r15, 56
lea r9, [ r9 + r8 ]
mov rax, r9
and rax, rbx
shr r9, 56
lea r9, [ r9 + rbp ]
and r11, rbx
mov [ r12 + 0x20 ], rax
mov [ r12 + 0x30 ], r11
and r14, rbx
lea r15, [ r15 + r14 ]
mov [ r12 + 0x28 ], r9
mov [ r12 + 0x8 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 432
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.0449
; seed 2108865680954060 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3218161 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=97, initial num_batches=31): 102644 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03189523457651746
; number reverted permutation / tried permutation: 73618 / 94716 =77.725%
; number reverted decision / tried decision: 65755 / 95283 =69.010%
; validated in 1.44s
