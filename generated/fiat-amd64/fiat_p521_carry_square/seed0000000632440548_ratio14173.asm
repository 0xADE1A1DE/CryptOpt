SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 312
mov rax, 0x1 
shlx r10, [ rsi + 0x10 ], rax
imul r11, [ rsi + 0x8 ], 0x2
mov rdx, [ rsi + 0x38 ]
lea rcx, [ 4 * rdx]
mov rdx, [ rsi + 0x40 ]
lea r8, [ 4 * rdx]
mov rdx, [ rsi + 0x28 ]
lea r9, [ 4 * rdx]
mov rdx, [ rsi + 0x28 ]
lea rax, [rdx + rdx]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rcx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, rcx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], rbx
lea rbx, [rdx + rdx]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x38 ], r10
lea r10, [rdx + rdx]
mov rdx, 0x1 
mov [ rsp - 0x30 ], r10
shlx r10, [ rsi + 0x40 ], rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], r11
mulx r11, r10, rcx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x18 ], r11
mov [ rsp - 0x10 ], r10
mulx r10, r11, r8
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x8 ], r10
lea r10, [rdx + rdx]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x0 ], r11
mov [ rsp + 0x8 ], rbp
mulx rbp, r11, rbx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x10 ], rbp
mov [ rsp + 0x18 ], r11
mulx r11, rbp, rbx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x20 ], r11
lea r11, [ 4 * rdx]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x28 ], rbp
mov [ rsp + 0x30 ], rdi
mulx rdi, rbp, r10
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], rdi
mov [ rsp + 0x40 ], rbp
mulx rbp, rdi, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x48 ], rax
mov [ rsp + 0x50 ], r15
mulx r15, rax, r9
mov rdx, rbx
mulx r9, rbx, [ rsi + 0x0 ]
mov [ rsp + 0x58 ], r9
mov [ rsp + 0x60 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
test al, al
adox rax, rdi
adox rbp, r15
adcx rax, r12
adcx r13, rbp
mov rdx, [ rsi + 0x0 ]
mulx rdi, r12, rdx
add rax, r14
adcx r13, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x20 ]
mulx r15, r14, r11
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x68 ], rbx
mulx rbx, rbp, [ rsp + 0x48 ]
add rbp, r14
adcx r15, rbx
xor rdx, rdx
adox rbp, [ rsp + 0x30 ]
adox r15, [ rsp + 0x8 ]
mov rdx, r8
mulx r14, r8, [ rsi + 0x10 ]
adcx rbp, r8
adcx r14, r15
add rax, r12
adcx rdi, r13
mov r12, 0x3a 
bzhi r13, rax, r12
mov rbx, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, r15, rcx
mov rdx, r11
mulx r12, r11, [ rsi + 0x28 ]
mov rdx, [ rsp - 0x20 ]
mov [ rsp + 0x70 ], r13
mov [ rsp + 0x78 ], r9
mulx r9, r13, [ rsi + 0x0 ]
adox r11, r15
adox r8, r12
shrd rax, rdi, 58
shr rdi, 58
xor rdx, rdx
adox rbp, r13
adox r9, r14
adcx rbp, rax
adcx rdi, r9
mov rdx, rbx
mulx r14, rbx, [ rsi + 0x18 ]
mov r15, rdx
mov rdx, [ rsi + 0x30 ]
mulx r13, r12, [ rsp - 0x30 ]
test al, al
adox r11, rbx
adox r14, r8
mov rdx, [ rsi + 0x8 ]
mulx rax, r8, rdx
adcx r11, r8
adcx rax, r14
mov rdx, [ rsi + 0x8 ]
mulx rbx, r9, [ rsp - 0x30 ]
mov rdx, rcx
mulx r14, rcx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x80 ], rbx
mulx rbx, r8, [ rsp - 0x38 ]
mov rdx, 0x3a 
mov [ rsp + 0x88 ], r9
bzhi r9, rbp, rdx
adox r12, rcx
adox r14, r13
mov rdx, [ rsi + 0x0 ]
mulx rcx, r13, r10
xor rdx, rdx
adox r12, [ rsp + 0x0 ]
adox r14, [ rsp - 0x8 ]
adcx r11, r8
adcx rbx, rax
shrd rbp, rdi, 58
shr rdi, 58
add r11, rbp
adcx rdi, rbx
mov rax, r11
shrd rax, rdi, 58
shr rdi, 58
mov rdx, [ rsp - 0x38 ]
mulx rbx, r8, [ rsi + 0x8 ]
xor rdx, rdx
adox r12, r8
adox rbx, r14
mov rdx, [ rsi + 0x38 ]
mulx rbp, r14, r15
adcx r14, [ rsp - 0x40 ]
adcx rbp, [ rsp - 0x48 ]
mov rdx, 0x3ffffffffffffff 
and r11, rdx
adox r12, r13
adox rcx, rbx
mov rdx, [ rsi + 0x10 ]
mulx r8, r13, rdx
adcx r12, rax
adcx rdi, rcx
mov rdx, r10
mulx rax, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mulx rcx, rbx, r15
mov rdx, rbx
add rdx, [ rsp - 0x10 ]
adcx rcx, [ rsp - 0x18 ]
xor rbx, rbx
adox r14, [ rsp + 0x78 ]
adox rbp, [ rsp + 0x68 ]
adcx rdx, r13
adcx r8, rcx
imul r13, [ rsi + 0x38 ], 0x2
mov rcx, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x90 ], r11
mulx r11, rbx, r15
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x98 ], r9
mulx r9, r15, r13
xor rdx, rdx
adox r15, rbx
adox r11, r9
adcx r15, r10
adcx rax, r11
mov rdx, [ rsi + 0x0 ]
mulx rbx, r10, [ rsp - 0x30 ]
test al, al
adox r15, [ rsp + 0x28 ]
adox rax, [ rsp + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mulx r11, r9, r13
mov rdx, [ rsp + 0x48 ]
mov [ rsp + 0xa0 ], r11
mov [ rsp + 0xa8 ], r9
mulx r9, r11, [ rsi + 0x8 ]
adcx r14, r11
adcx r9, rbp
add rcx, [ rsp + 0x40 ]
adcx r8, [ rsp + 0x38 ]
xor rbp, rbp
adox r14, r10
adox rbx, r9
mulx r11, r10, [ rsi + 0x0 ]
adcx r15, r10
adcx r11, rax
mov rax, r12
shrd rax, rdi, 58
shr rdi, 58
add rcx, [ rsp + 0x60 ]
adcx r8, [ rsp + 0x58 ]
mulx r10, r9, [ rsi + 0x18 ]
add rcx, rax
adcx rdi, r8
mov rax, 0x3ffffffffffffff 
mov r8, rcx
and r8, rax
shrd rcx, rdi, 58
shr rdi, 58
test al, al
adox r15, rcx
adox rdi, r11
mov r11, r15
shrd r11, rdi, 58
shr rdi, 58
and r15, rax
xchg rdx, r13
mulx rbp, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb0 ], rbp
mulx rbp, rax, [ rsp - 0x30 ]
adox r14, r11
adox rdi, rbx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x20 ], r8
mov rbx, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, r8, rdx
adcx r8, r9
adcx r10, r11
add r8, rax
adcx rbp, r10
mov [ rbx + 0x28 ], r15
test al, al
adox r8, rcx
adox rbp, [ rsp + 0xb0 ]
mov rdx, [ rsi + 0x10 ]
mulx r15, r9, r13
mov rdx, [ rsp - 0x28 ]
mulx rcx, r13, [ rsi + 0x40 ]
adcx r13, [ rsp + 0x18 ]
adcx rcx, [ rsp + 0x10 ]
add r13, r9
adcx r15, rcx
add r13, [ rsp + 0x88 ]
adcx r15, [ rsp + 0x80 ]
add r13, [ rsp + 0xa8 ]
adcx r15, [ rsp + 0xa0 ]
mov rax, r14
shrd rax, rdi, 58
shr rdi, 58
mulx r10, r11, [ rsi + 0x0 ]
add r13, rax
adcx rdi, r15
mov rdx, r13
shrd rdx, rdi, 58
shr rdi, 58
add r8, r11
adcx r10, rbp
add r8, rdx
adcx rdi, r10
mov rbp, 0x39 
bzhi r9, r8, rbp
shrd r8, rdi, 57
shr rdi, 57
mov rcx, 0x3a 
bzhi r15, r12, rcx
mov [ rbx + 0x18 ], r15
adox r8, [ rsp + 0x70 ]
mov r12, 0x0 
adox rdi, r12
bzhi rax, r8, rcx
shrd r8, rdi, 58
add r8, [ rsp + 0x98 ]
mov r11, r8
shr r11, 58
add r11, [ rsp + 0x90 ]
bzhi rdx, r8, rcx
mov [ rbx + 0x10 ], r11
mov [ rbx + 0x8 ], rdx
bzhi r10, r14, rcx
bzhi r14, r13, rcx
mov [ rbx + 0x40 ], r9
mov [ rbx + 0x30 ], r10
mov [ rbx + 0x38 ], r14
mov [ rbx + 0x0 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 312
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4173
; seed 2916030292866127 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 5050692 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=50, initial num_batches=31): 163554 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03238249332962691
; number reverted permutation / tried permutation: 69784 / 95054 =73.415%
; number reverted decision / tried decision: 64221 / 94945 =67.640%
; validated in 3.253s
