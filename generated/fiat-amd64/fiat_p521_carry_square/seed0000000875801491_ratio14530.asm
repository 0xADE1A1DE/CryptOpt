SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 264
mov rax, 0x1 
shlx r10, [ rsi + 0x10 ], rax
mov r11, [ rsi + 0x28 ]
lea rdx, [ 4 * r11]
mov r11, [ rsi + 0x18 ]
lea rcx, [r11 + r11]
mov r11, [ rsi + 0x28 ]
lea r8, [r11 + r11]
mov r11, [ rsi + 0x20 ]
mov r9, r11
shl r9, 0x1
imul r11, [ rsi + 0x38 ], 0x4
imul rax, [ rsi + 0x30 ], 0x4
xchg rdx, rax
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov r12, [ rsi + 0x30 ]
mov [ rsp - 0x68 ], r13
lea r13, [r12 + r12]
xchg rdx, r10
mov [ rsp - 0x60 ], r14
mulx r14, r12, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x48 ], r9
mov r9, rdx
shl r9, 0x1
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], r14
mov [ rsp - 0x38 ], r12
mulx r12, r14, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x30 ], r12
mov [ rsp - 0x28 ], r14
mulx r14, r12, r9
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], r14
mov [ rsp - 0x18 ], r12
mulx r12, r14, r10
mov rdx, r10
mov [ rsp - 0x10 ], rcx
mulx rcx, r10, [ rsi + 0x28 ]
mov rdx, rax
mov [ rsp - 0x8 ], rdi
mulx rdi, rax, [ rsi + 0x20 ]
mov rdx, 0x2 
mov [ rsp + 0x0 ], r15
shlx r15, [ rsi + 0x40 ], rdx
mov rdx, r11
mov [ rsp + 0x8 ], rcx
mulx rcx, r11, [ rsi + 0x18 ]
mov [ rsp + 0x10 ], r10
mov [ rsp + 0x18 ], r13
mulx r13, r10, [ rsi + 0x10 ]
test al, al
adox rax, rbx
adox rbp, rdi
mov rbx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x20 ], rbp
mulx rbp, rdi, r8
adcx rdi, r14
adcx r12, rbp
xor rdx, rdx
adox rdi, r11
adox rcx, r12
mov r14, [ rsi + 0x40 ]
lea r11, [r14 + r14]
mov rdx, [ rsi + 0x8 ]
mulx rbp, r14, r15
adcx rax, r10
adcx r13, [ rsp + 0x20 ]
xor rdx, rdx
adox rax, r14
adox rbp, r13
mov rdx, [ rsi + 0x40 ]
mulx r12, r10, r11
mov rdx, [ rsi + 0x0 ]
mulx r13, r14, r11
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x28 ], r13
mulx r13, r11, rdx
adcx rax, r11
adcx r13, rbp
mov rdx, rbx
mulx rbp, rbx, [ rsi + 0x20 ]
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], r14
mov [ rsp + 0x38 ], r12
mulx r12, r14, [ rsp + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x40 ], r12
mov [ rsp + 0x48 ], r14
mulx r14, r12, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x50 ], r10
mov [ rsp + 0x58 ], rcx
mulx rcx, r10, r15
mov rdx, rbx
add rdx, [ rsp + 0x10 ]
adcx rbp, [ rsp + 0x8 ]
test al, al
adox rdx, r10
adox rcx, rbp
mov rbx, 0x3a 
bzhi r10, rax, rbx
adox rdx, r12
adox r14, rcx
imul r12, [ rsi + 0x8 ], 0x2
xor rbp, rbp
adox rdx, [ rsp + 0x0 ]
adox r14, [ rsp - 0x8 ]
mov rcx, rdx
mov rdx, [ rsi + 0x10 ]
mulx rbx, rbp, r15
adcx rdi, rbp
adcx rbx, [ rsp + 0x58 ]
mov rdx, r12
mulx rbp, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x60 ], r10
mov [ rsp + 0x68 ], r14
mulx r14, r10, r11
test al, al
adox rdi, r12
adox rbp, rbx
shrd rax, r13, 58
shr r13, 58
test al, al
adox rdi, rax
adox r13, rbp
mov rdx, r11
mulx rbx, r11, [ rsi + 0x30 ]
mov rdx, 0x3a 
bzhi r12, rdi, rdx
mov rdx, [ rsi + 0x30 ]
mulx rax, rbp, [ rsp + 0x18 ]
adox rbp, r10
adox r14, rax
mov rdx, r15
mulx r10, r15, [ rsi + 0x28 ]
shrd rdi, r13, 58
shr r13, 58
add rcx, rdi
adcx r13, [ rsp + 0x68 ]
mulx rdi, rax, [ rsi + 0x20 ]
add r11, r15
adcx r10, rbx
add rbp, rax
adcx rdi, r14
mov rbx, rcx
shrd rbx, r13, 58
shr r13, 58
mov r14, rdx
mov rdx, [ rsi + 0x10 ]
mulx rax, r15, rdx
add r11, r15
adcx rax, r10
mov rdx, 0x3a 
bzhi r10, rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r15, rcx, [ rsp - 0x10 ]
adox r11, rcx
adox r15, rax
add rbp, [ rsp - 0x38 ]
adcx rdi, [ rsp - 0x40 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, rax, [ rsp - 0x48 ]
mov rdx, [ rsp - 0x10 ]
mov [ rsp + 0x70 ], r10
mov [ rsp + 0x78 ], r12
mulx r12, r10, [ rsi + 0x0 ]
test al, al
adox rbp, r10
adox r12, rdi
adcx rbp, rbx
adcx r13, r12
mov rbx, rbp
shrd rbx, r13, 58
shr r13, 58
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx r12, r10, [ rsp - 0x48 ]
xor rdx, rdx
adox r11, r10
adox r12, r15
adcx r11, rbx
adcx r13, r12
mov rdx, r14
mulx r15, r14, [ rsi + 0x30 ]
mov rbx, r14
test al, al
adox rbx, [ rsp - 0x18 ]
adox r15, [ rsp - 0x20 ]
mov r10, rdx
mov rdx, [ rsi + 0x10 ]
mulx r14, r12, rdi
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x80 ], r9
mulx r9, rdi, [ rsp - 0x48 ]
mov rdx, 0x3ffffffffffffff 
and rbp, rdx
adox rbx, r12
adox r14, r15
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x18 ], rbp
mov rdx, r10
mulx r12, r10, [ rsi + 0x38 ]
adcx r10, [ rsp - 0x28 ]
adcx r12, [ rsp - 0x30 ]
test al, al
adox r10, rax
adox rcx, r12
mov rdx, r8
mulx rax, r8, [ rsi + 0x8 ]
adcx rbx, rdi
adcx r9, r14
add r10, r8
adcx rax, rcx
mulx rbp, rdi, [ rsi + 0x0 ]
mov r14, rdx
mov rdx, [ rsi + 0x0 ]
mulx rcx, r12, [ rsp + 0x18 ]
xor rdx, rdx
adox r10, r12
adox rcx, rax
adcx rbx, rdi
adcx rbp, r9
mov r8, r11
shrd r8, r13, 58
shr r13, 58
add rbx, r8
adcx r13, rbp
mov r9, rbx
shrd r9, r13, 58
shr r13, 58
mov rax, 0x3a 
bzhi rdi, rbx, rax
adox r10, r9
adox r13, rcx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r12, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rbp, [ rsp - 0x48 ]
mov rdx, r14
mulx rbx, r14, [ rsi + 0x18 ]
test al, al
adox r12, r14
adox rbx, rcx
bzhi r9, r10, rax
mov [ r15 + 0x30 ], r9
shrd r10, r13, 58
shr r13, 58
mulx r14, rcx, [ rsi + 0x10 ]
mov rdx, rbp
test al, al
adox rdx, [ rsp + 0x50 ]
adox r8, [ rsp + 0x38 ]
adcx rdx, rcx
adcx r14, r8
test al, al
adox r12, [ rsp + 0x48 ]
adox rbx, [ rsp + 0x40 ]
mov rbp, rdx
mov rdx, [ rsp + 0x18 ]
mulx rcx, r9, [ rsi + 0x8 ]
adcx rbp, r9
adcx rcx, r14
mov rdx, [ rsp + 0x80 ]
mulx r14, r8, [ rsi + 0x8 ]
mulx rax, r9, [ rsi + 0x0 ]
add rbp, r9
adcx rax, rcx
xor rdx, rdx
adox rbp, r10
adox r13, rax
mov r10, rbp
shrd r10, r13, 58
shr r13, 58
xor rcx, rcx
adox r12, r8
adox r14, rbx
adcx r12, [ rsp + 0x30 ]
adcx r14, [ rsp + 0x28 ]
xor rdx, rdx
adox r12, r10
adox r13, r14
mov rcx, r12
shrd rcx, r13, 57
shr r13, 57
add rcx, [ rsp + 0x60 ]
adc r13, 0x0
mov rbx, 0x3ffffffffffffff 
and rbp, rbx
mov r8, rcx
shrd r8, r13, 58
mov [ r15 + 0x38 ], rbp
add r8, [ rsp + 0x78 ]
mov r9, 0x1ffffffffffffff 
and r12, r9
mov rax, r8
shr rax, 58
add rax, [ rsp + 0x70 ]
mov [ r15 + 0x40 ], r12
and rcx, rbx
mov [ r15 + 0x28 ], rdi
and r11, rbx
and r8, rbx
mov [ r15 + 0x20 ], r11
mov [ r15 + 0x8 ], r8
mov [ r15 + 0x10 ], rax
mov [ r15 + 0x0 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 264
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.4530
; seed 2337807582750682 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3372098 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=52, initial num_batches=31): 119313 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.035382423642492
; number reverted permutation / tried permutation: 72689 / 95171 =76.377%
; number reverted decision / tried decision: 66560 / 94828 =70.190%
; validated in 2.595s
