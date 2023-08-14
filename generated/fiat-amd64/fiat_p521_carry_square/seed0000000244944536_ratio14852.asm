SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 264
mov rax, [ rsi + 0x28 ]
lea r10, [rax + rax]
mov rax, [ rsi + 0x38 ]
mov r11, rax
shl r11, 0x1
mov rdx, [ rsi + 0x10 ]
mulx rcx, rax, r10
mov rdx, [ rsi + 0x28 ]
mulx r9, r8, r10
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, 0x2 
mov [ rsp - 0x60 ], r14
shlx r14, [ rsi + 0x40 ], rdx
mov [ rsp - 0x58 ], r15
mov r15, [ rsi + 0x38 ]
lea rdx, [ 4 * r15]
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, r14
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x40 ], rbx
mov [ rsp - 0x38 ], rcx
mulx rcx, rbx, r14
mov rdx, r15
mov [ rsp - 0x30 ], rax
mulx rax, r15, [ rsi + 0x30 ]
mov [ rsp - 0x28 ], r13
mov [ rsp - 0x20 ], r12
mulx r12, r13, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], rcx
imul rcx, [ rsi + 0x40 ], 0x2
mov [ rsp - 0x10 ], rcx
mov rcx, [ rsi + 0x30 ]
mov [ rsp - 0x8 ], rbx
lea rbx, [rcx + rcx]
mov rcx, [ rsi + 0x10 ]
mov [ rsp + 0x0 ], r11
lea r11, [rcx + rcx]
imul rcx, [ rsi + 0x30 ], 0x4
xchg rdx, rcx
mov [ rsp + 0x8 ], rbx
mov [ rsp + 0x10 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
add r8, rbx
adcx rbp, r9
mulx rbx, r9, [ rsi + 0x28 ]
add r8, r13
adcx r12, rbp
mulx rbp, r13, [ rsi + 0x18 ]
mov rdx, r11
mov [ rsp + 0x18 ], r10
mulx r10, r11, [ rsi + 0x0 ]
mov [ rsp + 0x20 ], r10
imul r10, [ rsi + 0x28 ], 0x4
mov [ rsp + 0x28 ], r11
mov r11, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], rbx
mov [ rsp + 0x38 ], r9
mulx r9, rbx, r10
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x40 ], r12
mulx r12, r10, r11
add rbx, r13
adcx rbp, r9
mov rdx, [ rsi + 0x10 ]
mulx r13, r11, rcx
xor rdx, rdx
adox rbx, r11
adox r13, rbp
mov rdx, [ rsi + 0x28 ]
mulx rbp, r9, r14
adcx r15, r9
adcx rbp, rax
mov rdx, r14
mulx rax, r14, [ rsi + 0x10 ]
test al, al
adox rbx, rdi
adox r13, [ rsp + 0x10 ]
adcx r8, r14
adcx rax, [ rsp + 0x40 ]
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r11, rdx
xor rdx, rdx
adox rbx, r11
adox r9, r13
mov r14, rbx
shrd r14, r9, 58
shr r9, 58
mov r13, 0x3ffffffffffffff 
and rbx, r13
imul r11, [ rsi + 0x8 ], 0x2
mov rdx, r11
mulx r13, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x48 ], rbx
mov [ rsp + 0x50 ], rbp
mulx rbp, rbx, rcx
xor rdx, rdx
adox r8, r11
adox r13, rax
mov rdx, [ rsi + 0x18 ]
mulx r11, rax, rdi
mov rdx, rbx
adcx rdx, [ rsp + 0x38 ]
adcx rbp, [ rsp + 0x30 ]
mov rbx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x58 ], r15
mov [ rsp + 0x60 ], r12
mulx r12, r15, rcx
xor rdx, rdx
adox rbx, rax
adox r11, rbp
adcx r8, r14
adcx r9, r13
mov rdx, [ rsi + 0x30 ]
mulx r14, rcx, [ rsp + 0x8 ]
xor rdx, rdx
adox rcx, r15
adox r12, r14
mov rdx, rdi
mulx r13, rdi, [ rsi + 0x20 ]
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r15, rbp, rdx
adcx rbx, rbp
adcx r15, r11
add rcx, rdi
adcx r13, r12
add rbx, [ rsp + 0x28 ]
adcx r15, [ rsp + 0x20 ]
xor rdx, rdx
adox rcx, r10
adox r13, [ rsp + 0x60 ]
mov rdx, [ rsi + 0x38 ]
mulx r11, r10, [ rsp + 0x0 ]
adcx r10, [ rsp - 0x8 ]
adcx r11, [ rsp - 0x18 ]
imul rdx, [ rsi + 0x18 ], 0x2
mulx r12, r14, [ rsi + 0x10 ]
mov rdi, 0x3a 
bzhi rbp, r8, rdi
mov [ rsp + 0x68 ], rbp
mulx rbp, rdi, [ rsi + 0x8 ]
adox r10, r14
adox r12, r11
shrd r8, r9, 58
shr r9, 58
test al, al
adox rbx, r8
adox r9, r15
mulx r11, r15, [ rsi + 0x0 ]
mov rdx, rbx
shrd rdx, r9, 58
shr r9, 58
test al, al
adox rcx, r15
adox r11, r13
adcx rcx, rdx
adcx r9, r11
mov rdx, [ rsi + 0x38 ]
mulx r14, r13, rax
add r13, [ rsp - 0x20 ]
adcx r14, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x10 ]
mulx r8, rax, rdx
mov rdx, 0x3ffffffffffffff 
and rbx, rdx
imul r15, [ rsi + 0x20 ], 0x2
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x70 ], rbx
mulx rbx, r11, r15
mov rdx, 0x3a 
mov [ rsp + 0x78 ], r14
bzhi r14, rcx, rdx
adox r10, r11
adox rbx, r12
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x18 ], r14
mov r11, rax
xor r14, r14
adox r11, [ rsp + 0x58 ]
adox r8, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x8 ]
mulx r14, rax, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x80 ], r14
mulx r14, r12, r15
adcx r11, rdi
adcx rbp, r8
test al, al
adox r11, r12
adox r14, rbp
shrd rcx, r9, 58
shr r9, 58
xor rdx, rdx
adox r11, rcx
adox r9, r14
mov rdi, r11
shrd rdi, r9, 58
shr r9, 58
mov rdx, r15
mulx r8, r15, [ rsi + 0x10 ]
mov r12, 0x3a 
bzhi rbp, r11, r12
adox r13, r15
adox r8, [ rsp + 0x78 ]
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x20 ], rbp
mov rcx, rdx
mov rdx, [ rsi + 0x40 ]
mulx r15, r11, [ rsp - 0x10 ]
mov rdx, [ rsp + 0x18 ]
mulx r12, rbp, [ rsi + 0x0 ]
add r10, rbp
adcx r12, rbx
test al, al
adox r10, rdi
adox r9, r12
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbp, rdi, rcx
mov rdx, r10
shrd rdx, r9, 58
shr r9, 58
xor rcx, rcx
adox r11, rdi
adox rbp, r15
adcx r13, rax
adcx r8, [ rsp + 0x80 ]
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r12, r15, rbx
mov rdx, [ rsp + 0x8 ]
mulx rdi, rbx, [ rsi + 0x0 ]
add r11, [ rsp - 0x30 ]
adcx rbp, [ rsp - 0x38 ]
mulx r14, rcx, [ rsi + 0x8 ]
add r11, rcx
adcx r14, rbp
xor rbp, rbp
adox r13, rbx
adox rdi, r8
mulx rbx, r8, [ rsi + 0x10 ]
adcx r13, rax
adcx r9, rdi
mov rdx, 0x3a 
bzhi rax, r13, rdx
shrd r13, r9, 58
shr r9, 58
mov rdx, [ rsi + 0x0 ]
mulx rdi, rcx, [ rsp + 0x0 ]
xor rdx, rdx
adox r11, rcx
adox rdi, r14
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x30 ], rax
adcx r11, r13
adcx r9, rdi
mov rdx, [ rsi + 0x8 ]
mulx rax, r14, [ rsp + 0x0 ]
mov rdx, 0x3ffffffffffffff 
mov r13, r11
and r13, rdx
mov rcx, r15
adox rcx, [ rsp - 0x40 ]
adox r12, [ rsp - 0x48 ]
mov [ rbp + 0x38 ], r13
shrd r11, r9, 58
shr r9, 58
mov rdx, [ rsi + 0x0 ]
mulx rdi, r15, [ rsp - 0x10 ]
xor rdx, rdx
adox rcx, r8
adox rbx, r12
adcx rcx, r14
adcx rax, rbx
add rcx, r15
adcx rdi, rax
add rcx, r11
adcx r9, rdi
mov r8, rcx
shrd r8, r9, 57
shr r9, 57
add r8, [ rsp + 0x48 ]
adc r9, 0x0
mov r14, 0x39 
bzhi r13, rcx, r14
mov r12, 0x3a 
bzhi r11, r8, r12
mov [ rbp + 0x40 ], r13
shrd r8, r9, 58
mov [ rbp + 0x0 ], r11
add r8, [ rsp + 0x68 ]
bzhi r15, r8, r12
shr r8, 58
add r8, [ rsp + 0x70 ]
mov [ rbp + 0x10 ], r8
bzhi rbx, r10, r12
mov [ rbp + 0x28 ], rbx
mov [ rbp + 0x8 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 264
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.4852
; seed 3209338056894915 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4694312 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=54, initial num_batches=31): 171977 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.036635187435347286
; number reverted permutation / tried permutation: 71503 / 95111 =75.178%
; number reverted decision / tried decision: 65808 / 94888 =69.353%
; validated in 2.747s
