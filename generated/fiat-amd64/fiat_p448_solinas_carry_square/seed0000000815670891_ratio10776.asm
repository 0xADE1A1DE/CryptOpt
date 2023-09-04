SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 328
mov rax, [ rsi + 0x10 ]
mov r10, rax
shl r10, 0x1
mov rdx, [ rsi + 0x30 ]
mulx r11, rax, rdx
mov rdx, [ rsi + 0x38 ]
lea rcx, [rdx + rdx]
mov rdx, [ rsi + 0x28 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rcx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x70 ], r12
lea r12, [rdx + rdx]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
mov rdx, r12
mov [ rsp - 0x58 ], r15
mulx r15, r12, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov rdi, rax
add rdi, rbx
mov [ rsp - 0x48 ], r15
mov r15, rbp
adcx r15, r11
mov [ rsp - 0x40 ], r12
mov r12, rdi
add r12, rax
adcx r11, r15
mov rax, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r10
lea r10, [rax + rax]
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r9
mov [ rsp - 0x28 ], r8
mulx r8, r9, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], r8
mov [ rsp - 0x18 ], r9
mulx r9, r8, r10
mov rdx, [ rsi + 0x28 ]
lea r10, [rdx + rdx]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], r9
mov [ rsp - 0x8 ], r8
mulx r8, r9, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x0 ], r8
mov [ rsp + 0x8 ], r9
mulx r9, r8, rax
mov rdx, r10
mov [ rsp + 0x10 ], r9
mulx r9, r10, [ rsi + 0x18 ]
add r12, rbx
adcx rbp, r11
mulx r11, rbx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], r8
xor r8, r8
adox r12, r13
mov [ rsp + 0x20 ], r11
mov r11, r14
adox r11, rbp
adcx r12, r10
mov rbp, r9
adcx rbp, r11
test al, al
adox rdi, r13
adox r14, r15
adcx rdi, r10
adcx r9, r14
mov r13, rdx
mov rdx, [ rsi + 0x38 ]
mulx r10, r15, rdx
mov rdx, r15
xor r11, r11
adox rdx, r15
mov r8, r10
adox r8, r10
mov r14, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x28 ], rbx
mulx rbx, r11, rax
adcx r15, [ rsp - 0x28 ]
adcx r10, [ rsp - 0x30 ]
test al, al
adox r15, r11
mov rdx, rbx
adox rdx, r10
adcx r14, [ rsp - 0x28 ]
adcx r8, [ rsp - 0x30 ]
add r14, r11
adcx rbx, r8
xor r11, r11
adox r15, [ rsp - 0x18 ]
adox rdx, [ rsp - 0x20 ]
mov r10, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r8, rdx
adcx r15, r8
adcx r11, r10
mov rdx, rax
mulx r10, rax, [ rsi + 0x10 ]
test al, al
adox r12, rax
mov r8, r10
adox r8, rbp
adcx rdi, rax
adcx r10, r9
mulx r9, rbp, [ rsi + 0x28 ]
xchg rdx, rcx
mov [ rsp + 0x30 ], r11
mulx r11, rax, [ rsi + 0x20 ]
add r14, [ rsp - 0x18 ]
adcx rbx, [ rsp - 0x20 ]
mov [ rsp + 0x38 ], rbx
mov rbx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x40 ], r14
mov [ rsp + 0x48 ], r15
mulx r15, r14, [ rsp - 0x38 ]
test al, al
adox rdi, [ rsp + 0x8 ]
adox r10, [ rsp + 0x0 ]
adcx rbp, rax
adcx r11, r9
imul rdx, [ rsi + 0x20 ], 0x2
imul r9, [ rsi + 0x18 ], 0x2
mov rax, rbp
test al, al
adox rax, r14
adox r15, r11
mov r14, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x50 ], r10
mov [ rsp + 0x58 ], rdi
mulx rdi, r10, r9
adcx rax, r10
adcx rdi, r15
mov rdx, 0xffffffffffffff 
mov r15, rax
and r15, rdx
shrd rax, rdi, 56
mov rdx, [ rsi + 0x18 ]
mulx rdi, r10, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], r15
mov [ rsp + 0x68 ], rax
mulx rax, r15, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x70 ], r8
mov [ rsp + 0x78 ], r12
mulx r12, r8, r13
xor rdx, rdx
adox rbp, r10
adox rdi, r11
mov r11, r15
adcx r11, [ rsp + 0x78 ]
adcx rax, [ rsp + 0x70 ]
xor r10, r10
adox rbp, r8
adox r12, rdi
mov rdx, rcx
mulx r15, rcx, [ rsi + 0x8 ]
adcx r11, [ rsp + 0x8 ]
adcx rax, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mulx rdi, r8, r9
test al, al
adox r11, r8
adox rdi, rax
mov rdx, rbx
mulx rax, rbx, [ rsi + 0x30 ]
mov r8, rbx
adcx r8, rbx
mov [ rsp + 0x80 ], rdi
mov rdi, rax
adcx rdi, rax
mov [ rsp + 0x88 ], r11
xor r11, r11
adox r8, [ rsp + 0x28 ]
adox rdi, [ rsp + 0x20 ]
adcx rbp, rcx
adcx r15, r12
mulx r12, r10, [ rsi + 0x0 ]
add rbp, r10
adcx r12, r15
mulx r15, rcx, [ rsi + 0x10 ]
add r8, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
xor rdx, rdx
adox rbx, [ rsp + 0x28 ]
adox rax, [ rsp + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mulx r10, r11, r14
adcx rbx, [ rsp - 0x40 ]
adcx rax, [ rsp - 0x48 ]
mov rdx, r11
test al, al
adox rdx, [ rsp + 0x88 ]
adox r10, [ rsp + 0x80 ]
adcx rbx, rcx
mov r11, r15
adcx r11, rax
add r8, rcx
adcx r15, rdi
mov rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx rax, rdi, rdx
mov rdx, rdi
add rdx, [ rsp + 0x58 ]
adcx rax, [ rsp + 0x50 ]
mov rdi, 0x38 
mov [ rsp + 0x90 ], r15
bzhi r15, rbp, rdi
shrd rbp, r12, 56
xor r12, r12
adox rcx, [ rsp + 0x68 ]
adox r10, r12
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x98 ], r15
mulx r15, rdi, [ rsp - 0x38 ]
mov rdx, rbp
adcx rdx, r12
adc rax, 0x0
xor r12, r12
adox rbp, rcx
adox r10, r12
mov rcx, rdx
shrd rcx, rax, 56
xor rax, rax
adox rbx, [ rsp - 0x8 ]
adox r11, [ rsp - 0x10 ]
adcx rbx, rcx
adc r11, 0x0
mov r12, rdi
add r12, [ rsp + 0x48 ]
adcx r15, [ rsp + 0x30 ]
mov rdi, rbx
shrd rdi, r11, 56
xchg rdx, r13
mulx r11, rcx, [ rsi + 0x8 ]
mov [ rsp + 0xa0 ], r11
xor r11, r11
adox r12, rdi
adox r15, r11
mov rax, r12
shrd rax, r15, 56
add rax, [ rsp + 0x60 ]
mov rdi, 0xffffffffffffff 
mov r15, rax
and r15, rdi
mulx rdi, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xa8 ], r15
mov [ rsp + 0xb0 ], rcx
mulx rcx, r15, r14
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb8 ], rdi
mov [ rsp + 0xc0 ], r11
mulx r11, rdi, r9
adox r8, rdi
adox r11, [ rsp + 0x90 ]
adcx r8, r15
adcx rcx, r11
mov rdx, rbp
shrd rdx, r10, 56
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r15, r10, rdx
mov rdx, r14
mulx rdi, r14, [ rsi + 0x10 ]
mov rdx, r10
add rdx, [ rsp + 0x40 ]
adcx r15, [ rsp + 0x38 ]
add rdx, r14
adcx rdi, r15
add r8, [ rsp + 0xc0 ]
adcx rcx, [ rsp + 0xb8 ]
xor r11, r11
adox rdx, [ rsp + 0xb0 ]
adox rdi, [ rsp + 0xa0 ]
adcx r8, r9
adc rcx, 0x0
mov r9, 0x38 
bzhi r10, r8, r9
adox rdx, [ rsp + 0x18 ]
adox rdi, [ rsp + 0x10 ]
shrd r8, rcx, 56
add rdx, r8
adc rdi, 0x0
mov r14, rdx
shrd r14, rdi, 56
bzhi r15, rdx, r9
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x30 ], r15
bzhi r8, rbp, r9
bzhi rbp, r13, r9
add r14, [ rsp + 0x98 ]
bzhi r13, r14, r9
shr r14, 56
lea r8, [ r8 + r14 ]
lea rbp, [ rbp + r14 ]
mov [ rcx + 0x38 ], r13
bzhi rdx, rbp, r9
shr rax, 56
lea rax, [ rax + r8 ]
bzhi rdi, rax, r9
shr rax, 56
lea rax, [ rax + r10 ]
bzhi r10, rbx, r9
mov [ rcx + 0x28 ], rax
bzhi rbx, r12, r9
shr rbp, 56
mov [ rcx + 0x0 ], rdx
mov r12, [ rsp + 0xa8 ]
mov [ rcx + 0x18 ], r12
lea rbp, [ rbp + r10 ]
mov [ rcx + 0x8 ], rbp
mov [ rcx + 0x10 ], rbx
mov [ rcx + 0x20 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 328
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.0776
; seed 0651294532684992 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3894672 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=75, initial num_batches=31): 129245 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03318507951375623
; number reverted permutation / tried permutation: 75631 / 95281 =79.377%
; number reverted decision / tried decision: 71747 / 94718 =75.748%
; validated in 2.288s
