SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 192
mov rax, 0x1 
shlx r10, [ rsi + 0x28 ], rax
imul r11, [ rsi + 0x8 ], 0x2
mov rdx, 0x2 
shlx rcx, [ rsi + 0x38 ], rdx
imul r8, [ rsi + 0x28 ], 0x4
mov rdx, [ rsi + 0x10 ]
mulx rax, r9, rdx
mov rdx, 0x1 
mov [ rsp - 0x80 ], rbx
shlx rbx, [ rsi + 0x38 ], rdx
mov [ rsp - 0x78 ], rbp
shlx rbp, [ rsi + 0x30 ], rdx
mov rdx, rbx
mov [ rsp - 0x70 ], r12
mulx r12, rbx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
imul r13, [ rsi + 0x30 ], 0x4
xchg rdx, r13
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r12
mulx r12, rdi, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], rbx
mov rbx, [ rsi + 0x40 ]
mov [ rsp - 0x38 ], rax
lea rax, [ 4 * rbx]
mov rbx, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x30 ], r9
mov [ rsp - 0x28 ], rbp
mulx rbp, r9, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], r15
mov [ rsp - 0x18 ], r14
mulx r14, r15, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x10 ], r14
mov [ rsp - 0x8 ], r15
mulx r15, r14, rdx
xor rdx, rdx
adox r9, rdi
adox r12, rbp
mov rdx, [ rsi + 0x18 ]
mulx rbp, rdi, rcx
adcx r9, rdi
adcx rbp, r12
mov rdx, r13
mulx r12, r13, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x0 ], r15
mulx r15, rdi, rax
test al, al
adox r9, rdi
adox r15, rbp
mov rdx, [ rsi + 0x30 ]
mulx rdi, rbp, rax
adcx r13, rbp
adcx rdi, r12
mov rdx, [ rsi + 0x0 ]
mulx rbp, r12, r11
add r9, r12
adcx rbp, r15
mov rdx, r8
mulx r11, r8, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mulx r12, r15, rdx
xor rdx, rdx
adox r8, [ rsp - 0x18 ]
adox r11, [ rsp - 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x8 ], r14
mov [ rsp + 0x10 ], rdi
mulx rdi, r14, rcx
adcx r8, r14
adcx rdi, r11
mov rdx, [ rsi + 0x8 ]
mulx r14, r11, rax
test al, al
adox r8, r11
adox r14, rdi
mov rdx, rbx
mulx rdi, rbx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x18 ], r13
mulx r13, r11, rcx
adcx r8, r15
adcx r12, r14
mov rdx, r8
shrd rdx, r12, 58
shr r12, 58
xor r15, r15
adox r9, rdx
adox r12, rbp
adcx rbx, r11
adcx r13, rdi
imul rbp, [ rsi + 0x10 ], 0x2
mov rdx, rcx
mulx r14, rcx, [ rsi + 0x28 ]
mov rdi, 0x3ffffffffffffff 
and r8, rdi
mov r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx rdi, r15, rax
adox rbx, r15
adox rdi, r13
mov rdx, [ rsi + 0x8 ]
mulx r15, r13, rdx
adcx rbx, r13
adcx r15, rdi
mov rdx, [ rsi + 0x0 ]
mulx r13, rdi, rbp
mov rdx, 0x3a 
mov [ rsp + 0x20 ], r8
bzhi r8, r9, rdx
adox rbx, rdi
adox r13, r15
shrd r9, r12, 58
shr r12, 58
mov rdx, [ rsi + 0x30 ]
mulx rdi, r15, [ rsp - 0x28 ]
add rbx, r9
adcx r12, r13
mov rdx, r11
mulx r13, r11, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x28 ], r8
mulx r8, r9, rax
add r11, r9
adcx r8, r13
imul rdx, [ rsi + 0x18 ], 0x2
mulx r9, r13, [ rsi + 0x10 ]
add r15, rcx
adcx r14, rdi
xchg rdx, rax
mulx rdi, rcx, [ rsi + 0x20 ]
mov [ rsp + 0x30 ], r9
xor r9, r9
adox r15, rcx
adox rdi, r14
mov r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, rcx, rbp
adcx r15, rcx
adcx r9, rdi
mov rdx, rax
mulx rbp, rax, [ rsi + 0x0 ]
mulx rcx, rdi, [ rsi + 0x8 ]
test al, al
adox r15, rax
adox rbp, r9
adcx r11, [ rsp - 0x30 ]
adcx r8, [ rsp - 0x38 ]
mov rdx, 0x3ffffffffffffff 
mov r9, rbx
and r9, rdx
adox r11, rdi
adox rcx, r8
shrd rbx, r12, 58
shr r12, 58
add r15, rbx
adcx r12, rbp
mov rax, [ rsi + 0x20 ]
lea rdi, [rax + rax]
mov rax, r15
shrd rax, r12, 58
shr r12, 58
and r15, rdx
mov rdx, rdi
mulx rbp, rdi, [ rsi + 0x0 ]
mov r8, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x38 ], r9
mulx r9, rbx, r10
adox r11, rdi
adox rbp, rcx
adcx r11, rax
adcx r12, rbp
mov rdx, [ rsi + 0x38 ]
mulx rax, rcx, r14
mov rdx, 0x3a 
bzhi r14, r11, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbp, rdi, rdx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], r15
adox rcx, rdi
adox rbp, rax
mov r15, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, rax, r8
mov [ r15 + 0x20 ], r14
xor rdx, rdx
adox rcx, rax
adox rdi, rbp
adcx rcx, rbx
adcx r9, rdi
mov rdx, [ rsi + 0x0 ]
mulx r14, rbx, [ rsp - 0x28 ]
mov rdx, r8
mulx rbp, r8, [ rsi + 0x8 ]
xchg rdx, r10
mulx rdi, rax, [ rsi + 0x18 ]
add rcx, rbx
adcx r14, r9
mov r9, r13
add r9, [ rsp + 0x18 ]
mov rbx, [ rsp + 0x10 ]
adcx rbx, [ rsp + 0x30 ]
mov r13, rax
xor r15, r15
adox r13, [ rsp + 0x8 ]
adox rdi, [ rsp + 0x0 ]
adcx r9, r8
adcx rbp, rbx
mulx rax, r8, [ rsi + 0x0 ]
mulx r15, rbx, [ rsi + 0x10 ]
shrd r11, r12, 58
shr r12, 58
test al, al
adox r9, r8
adox rax, rbp
adcx r9, r11
adcx r12, rax
imul rdx, [ rsi + 0x40 ], 0x2
mulx r8, rbp, [ rsi + 0x40 ]
mov r11, r9
shrd r11, r12, 58
shr r12, 58
test al, al
adox rcx, r11
adox r12, r14
xchg rdx, r10
mulx rax, r14, [ rsi + 0x18 ]
adcx rbp, r14
adcx rax, r8
mov rdx, [ rsp - 0x28 ]
mulx r11, r8, [ rsi + 0x10 ]
add rbp, rbx
adcx r15, rax
mulx r14, rbx, [ rsi + 0x8 ]
add rbp, rbx
adcx r14, r15
add r13, r8
adcx r11, rdi
mov rdx, rcx
shrd rdx, r12, 58
shr r12, 58
add rbp, [ rsp - 0x8 ]
adcx r14, [ rsp - 0x10 ]
xor rdi, rdi
adox rbp, rdx
adox r12, r14
mov rax, 0x3a 
bzhi r8, rbp, rax
mov rdx, [ rsi + 0x0 ]
mulx rbx, r15, r10
shrd rbp, r12, 58
shr r12, 58
test al, al
adox r13, [ rsp - 0x40 ]
adox r11, [ rsp - 0x48 ]
adcx r13, r15
adcx rbx, r11
add r13, rbp
adcx r12, rbx
mov rdx, r13
shrd rdx, r12, 57
shr r12, 57
mov r10, 0x1ffffffffffffff 
and r13, r10
adox rdx, [ rsp + 0x20 ]
adox r12, rdi
mov r14, rdx
shrd r14, r12, 58
add r14, [ rsp + 0x28 ]
bzhi r15, r9, rax
bzhi r9, rdx, rax
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x0 ], r9
mov r11, r14
shr r11, 58
add r11, [ rsp + 0x38 ]
mov [ rbp + 0x28 ], r15
bzhi rbx, rcx, rax
mov [ rbp + 0x40 ], r13
bzhi rcx, r14, rax
mov [ rbp + 0x10 ], r11
mov [ rbp + 0x38 ], r8
mov [ rbp + 0x30 ], rbx
mov [ rbp + 0x8 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 192
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.5398
; seed 3403629907996334 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3258009 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=52, initial num_batches=31): 119140 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03656834588240855
; number reverted permutation / tried permutation: 74715 / 95207 =78.476%
; number reverted decision / tried decision: 68073 / 94792 =71.813%
; validated in 2.472s
