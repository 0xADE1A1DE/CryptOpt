SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 256
mov rax, [ rsi + 0x20 ]
lea r10, [rax + rax]
mov rax, [ rsi + 0x28 ]
lea r11, [rax + rax]
mov rax, [ rsi + 0x30 ]
mov rdx, rax
shl rdx, 0x1
xchg rdx, r11
mulx rcx, rax, [ rsi + 0x0 ]
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x78 ], rbp
lea rbp, [ 4 * rdx]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r10
mov rdx, 0x2 
mov [ rsp - 0x60 ], r14
shlx r14, [ rsi + 0x40 ], rdx
mov [ rsp - 0x58 ], r15
mov r15, [ rsi + 0x38 ]
mov [ rsp - 0x50 ], rdi
lea rdi, [r15 + r15]
mov r15, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], rcx
lea rcx, [r15 + r15]
imul r15, [ rsi + 0x38 ], 0x4
mov [ rsp - 0x40 ], rax
shlx rax, [ rsi + 0x28 ], rdx
mov rdx, r15
mov [ rsp - 0x38 ], r13
mulx r13, r15, [ rsi + 0x28 ]
mov [ rsp - 0x30 ], r12
mov [ rsp - 0x28 ], rcx
mulx rcx, r12, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], r13
mov [ rsp - 0x18 ], r15
mulx r15, r13, [ rsi + 0x18 ]
xchg rdx, rax
mov [ rsp - 0x10 ], rdi
mov [ rsp - 0x8 ], r11
mulx r11, rdi, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x0 ], r15
mov [ rsp + 0x8 ], r13
mulx r13, r15, r14
xor rdx, rdx
adox r15, r9
adox rbx, r13
mov rdx, [ rsi + 0x30 ]
mulx r13, r9, rax
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x10 ], rbx
mov [ rsp + 0x18 ], r15
mulx r15, rbx, r14
mov rdx, rbp
mov [ rsp + 0x20 ], r8
mulx r8, rbp, [ rsi + 0x18 ]
adcx rdi, rbp
adcx r8, r11
add rdi, r12
adcx rcx, r8
add r9, rbx
adcx r15, r13
mulx r11, r12, [ rsi + 0x20 ]
mov r13, rdx
mov rdx, [ rsi + 0x28 ]
mulx rbp, rbx, [ rsp + 0x20 ]
add rbx, r12
adcx r11, rbp
mov rdx, [ rsi + 0x10 ]
mulx r12, r8, rdx
add r9, r8
adcx r12, r15
mov rdx, [ rsi + 0x8 ]
mulx rbp, r15, r14
xor rdx, rdx
adox rdi, r15
adox rbp, rcx
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, rdx
adcx rbx, [ rsp + 0x8 ]
adcx r11, [ rsp + 0x0 ]
add rdi, rcx
adcx r8, rbp
mov rdx, rdi
shrd rdx, r8, 58
shr r8, 58
imul r15, [ rsi + 0x8 ], 0x2
mov rbp, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x28 ], r10
mulx r10, rcx, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], r12
mulx r12, r15, r14
mov rdx, r14
mov [ rsp + 0x38 ], r9
mulx r9, r14, [ rsi + 0x18 ]
mov [ rsp + 0x40 ], r9
xor r9, r9
adox rbx, r15
adox r12, r11
adcx rbx, rcx
adcx r10, r12
xchg rdx, r13
mulx rcx, r11, [ rsi + 0x28 ]
mov rdx, rax
mulx r15, rax, [ rsi + 0x20 ]
mov rdx, 0x3a 
bzhi r12, rdi, rdx
mov rdx, [ rsi + 0x30 ]
mulx r9, rdi, [ rsp - 0x8 ]
adox r11, rax
adox r15, rcx
mov rdx, [ rsp - 0x10 ]
mulx rax, rcx, [ rsi + 0x0 ]
add rdi, [ rsp - 0x18 ]
adcx r9, [ rsp - 0x20 ]
mov [ rsp + 0x48 ], r12
xor r12, r12
adox rbx, rbp
adox r8, r10
adcx r11, r14
adcx r15, [ rsp + 0x40 ]
mov rbp, rdx
mov rdx, [ rsi + 0x8 ]
mulx r10, r14, rdx
xor rdx, rdx
adox r11, r14
adox r10, r15
mov rdx, [ rsp - 0x28 ]
mulx r15, r12, [ rsi + 0x8 ]
mov [ rsp + 0x50 ], rax
mulx rax, r14, [ rsi + 0x0 ]
adcx r11, r14
adcx rax, r10
mov rdx, rbx
shrd rdx, r8, 58
shr r8, 58
imul r10, [ rsi + 0x18 ], 0x2
mov r14, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x58 ], rcx
mov [ rsp + 0x60 ], r10
mulx r10, rcx, r13
test al, al
adox r11, r14
adox r8, rax
adcx rdi, rcx
adcx r10, r9
mov rdx, [ rsi + 0x38 ]
mulx rax, r9, rbp
xor rdx, rdx
adox rdi, r12
adox r15, r10
mov r12, 0x3ffffffffffffff 
and rbx, r12
mov rdx, [ rsi + 0x30 ]
mulx rcx, r14, r13
adox r9, r14
adox rcx, rax
mov rdx, [ rsi + 0x0 ]
mulx r10, r13, [ rsp + 0x60 ]
adcx rdi, r13
adcx r10, r15
mov rdx, [ rsp + 0x60 ]
mulx r15, rax, [ rsi + 0x8 ]
mov r14, r11
shrd r14, r8, 58
shr r8, 58
mov r13, rax
add r13, [ rsp + 0x38 ]
adcx r15, [ rsp + 0x30 ]
and r11, r12
adox rdi, r14
adox r8, r10
mulx rax, r10, [ rsi + 0x10 ]
adcx r9, r10
adcx rax, rcx
mov rdx, [ rsi + 0x8 ]
mulx r14, rcx, [ rsp + 0x28 ]
xor rdx, rdx
adox r9, rcx
adox r14, rax
adcx r13, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x38 ]
mov r10, rdi
shrd r10, r8, 58
shr r8, 58
add r13, r10
adcx r8, r15
and rdi, r12
mov rdx, [ rsp + 0x20 ]
mulx rcx, rax, [ rsi + 0x8 ]
mov r15, r13
shrd r15, r8, 58
shr r8, 58
imul r10, [ rsi + 0x40 ], 0x2
and r13, r12
mov r12, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x68 ], rdi
mov [ rsp + 0x70 ], r11
mulx r11, rdi, [ rsp + 0x28 ]
mov rdx, rdi
adox rdx, [ rsp + 0x18 ]
adox r11, [ rsp + 0x10 ]
adcx r9, [ rsp - 0x40 ]
adcx r14, [ rsp - 0x48 ]
xor rdi, rdi
adox r9, r15
adox r8, r14
mov r15, r9
shrd r15, r8, 58
shr r8, 58
xor r14, r14
adox rdx, rax
adox rcx, r11
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, rax, [ rsp - 0x8 ]
adcx rdi, rax
adcx r11, rcx
mov rdx, r10
mulx rcx, r10, [ rsi + 0x40 ]
add rdi, r15
adcx r8, r11
mov r15, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, rax, [ rsp + 0x28 ]
xor rdx, rdx
adox r10, rax
adox r11, rcx
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x20 ], r13
mov rdx, [ rsi + 0x20 ]
mulx rcx, r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx r14, rax, [ rsp - 0x8 ]
mov rdx, r12
mov [ rsp + 0x78 ], rbx
mulx rbx, r12, [ rsi + 0x18 ]
adcx r13, r12
adcx rbx, rcx
mulx r12, rcx, [ rsi + 0x10 ]
xor rdx, rdx
adox r10, rcx
adox r12, r11
adcx r10, rax
adcx r14, r12
add r10, [ rsp + 0x58 ]
adcx r14, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x8 ]
mulx rax, r11, rbp
mov rdx, rdi
shrd rdx, r8, 58
shr r8, 58
add r10, rdx
adcx r8, r14
mov rdx, [ rsp - 0x8 ]
mulx rcx, rbp, [ rsi + 0x10 ]
add r13, rbp
adcx rcx, rbx
add r13, r11
adcx rax, rcx
mov rdx, 0x3a 
bzhi rbx, r10, rdx
mov rdx, r15
mulx r12, r15, [ rsi + 0x0 ]
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x38 ], rbx
adox r13, r15
adox r12, rax
shrd r10, r8, 58
shr r8, 58
xor r14, r14
adox r13, r10
adox r8, r12
mov r11, r13
shrd r11, r8, 57
shr r8, 57
mov rbp, 0x1ffffffffffffff 
and r13, rbp
adox r11, [ rsp + 0x48 ]
adox r8, r14
mov rcx, r11
shrd rcx, r8, 58
add rcx, [ rsp + 0x78 ]
mov rax, rcx
shr rax, 58
add rax, [ rsp + 0x70 ]
mov rbx, [ rsp + 0x68 ]
mov [ rdx + 0x18 ], rbx
mov rbx, 0x3ffffffffffffff 
and rdi, rbx
mov [ rdx + 0x10 ], rax
and rcx, rbx
mov [ rdx + 0x8 ], rcx
mov [ rdx + 0x30 ], rdi
and r9, rbx
and r11, rbx
mov [ rdx + 0x28 ], r9
mov [ rdx + 0x0 ], r11
mov [ rdx + 0x40 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 256
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4634
; seed 4261563976337810 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4938388 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=53, initial num_batches=31): 161397 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03268212218238016
; number reverted permutation / tried permutation: 71136 / 94902 =74.957%
; number reverted decision / tried decision: 65962 / 95097 =69.363%
; validated in 3.518s
