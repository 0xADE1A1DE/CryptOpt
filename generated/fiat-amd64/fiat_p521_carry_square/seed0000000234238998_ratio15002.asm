SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 264
imul rax, [ rsi + 0x28 ], 0x4
mov r10, 0x1 
shlx r11, [ rsi + 0x18 ], r10
mov rdx, [ rsi + 0x10 ]
mulx r8, rcx, rdx
mov rdx, [ rsi + 0x38 ]
mov r9, rdx
shl r9, 0x1
mov rdx, [ rsi + 0x20 ]
mov r10, rdx
shl r10, 0x1
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x80 ], rbx
lea rbx, [rdx + rdx]
mov rdx, r9
mov [ rsp - 0x78 ], rbp
mulx rbp, r9, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov r12, 0x1 
mov [ rsp - 0x68 ], r13
shlx r13, [ rsi + 0x8 ], r12
mov r12, [ rsi + 0x28 ]
mov [ rsp - 0x60 ], r14
mov r14, r12
shl r14, 0x1
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r13
mov rdx, [ rsi + 0x30 ]
lea r13, [ 4 * rdx]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], r9
mulx r9, rbp, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x38 ], rbx
mov [ rsp - 0x30 ], r10
mulx r10, rbx, r13
mov rdx, rax
mov [ rsp - 0x28 ], r11
mulx r11, rax, [ rsi + 0x20 ]
xor rdx, rdx
adox rax, rbp
adox r9, r11
mov rbp, [ rsi + 0x38 ]
lea r11, [ 4 * rbp]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x20 ], r8
mulx r8, rbp, r11
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x18 ], rcx
lea rcx, [rdx + rdx]
mov rdx, [ rsi + 0x40 ]
mov [ rsp - 0x10 ], rdi
lea rdi, [ 4 * rdx]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], r15
mov [ rsp + 0x0 ], r14
mulx r14, r15, rdi
mov rdx, rcx
mov [ rsp + 0x8 ], r14
mulx r14, rcx, [ rsi + 0x0 ]
mov [ rsp + 0x10 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], rcx
mov [ rsp + 0x20 ], r15
mulx r15, rcx, rdi
adcx rax, rbp
adcx r8, r9
mov rdx, [ rsi + 0x0 ]
mulx rbp, r9, rdx
add rax, rcx
adcx r15, r8
test al, al
adox rax, r9
adox rbp, r15
mov rdx, r14
mulx rcx, r14, [ rsi + 0x10 ]
mov r8, rdx
mov rdx, [ rsi + 0x20 ]
mulx r15, r9, r11
adcx rbx, r9
adcx r15, r10
mov rdx, r8
mulx r10, r8, [ rsi + 0x8 ]
mov r9, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x28 ], r10
mov [ rsp + 0x30 ], r8
mulx r8, r10, [ rsp + 0x0 ]
mov rdx, r13
mov [ rsp + 0x38 ], rcx
mulx rcx, r13, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x40 ], r14
mov [ rsp + 0x48 ], r15
mulx r15, r14, r11
test al, al
adox r10, r13
adox rcx, r8
adcx r10, r14
adcx r15, rcx
mov rdx, 0x3ffffffffffffff 
mov r8, rax
and r8, rdx
adox r10, [ rsp + 0x20 ]
adox r15, [ rsp + 0x8 ]
adcx r10, [ rsp - 0x8 ]
adcx r15, [ rsp - 0x10 ]
mov r13, [ rsi + 0x10 ]
lea r14, [r13 + r13]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r13, rdi
mov rdx, r14
mov [ rsp + 0x50 ], r8
mulx r8, r14, [ rsi + 0x0 ]
mov [ rsp + 0x58 ], r12
mov [ rsp + 0x60 ], r8
mulx r8, r12, [ rsi + 0x8 ]
test al, al
adox rbx, r13
adox rcx, [ rsp + 0x48 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x68 ], r8
mulx r8, r13, rdi
mov rdx, r11
mov [ rsp + 0x70 ], r12
mulx r12, r11, [ rsi + 0x30 ]
shrd rax, rbp, 58
shr rbp, 58
add r10, rax
adcx rbp, r15
xor r15, r15
adox r11, r13
adox r8, r12
mov r13, rdx
mov rdx, [ rsi + 0x8 ]
mulx rax, r12, rdx
adcx rbx, r12
adcx rax, rcx
mov rdx, [ rsi + 0x28 ]
mulx r12, rcx, r13
add rbx, r14
adcx rax, [ rsp + 0x60 ]
mov rdx, r10
shrd rdx, rbp, 58
shr rbp, 58
mov r13, 0x3ffffffffffffff 
and r10, r13
adox r11, [ rsp - 0x18 ]
adox r8, [ rsp - 0x20 ]
adcx rbx, rdx
adcx rbp, rax
mov rdx, r9
mulx r14, r9, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x18 ]
mulx r15, rax, rdx
add r9, rcx
adcx r12, r14
mov rdx, rdi
mulx rcx, rdi, [ rsi + 0x38 ]
xor r14, r14
adox rdi, rax
adox r15, rcx
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r14, rcx, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x78 ], r10
mulx r10, r13, [ rsp - 0x30 ]
adcx rdi, r13
adcx r10, r15
mov rdx, [ rsi + 0x20 ]
mulx r13, r15, rax
test al, al
adox r11, rcx
adox r14, r8
mov rdx, 0x3a 
bzhi r8, rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x80 ], r8
mulx r8, rcx, [ rsp - 0x30 ]
adox r9, r15
adox r13, r12
test al, al
adox r9, [ rsp + 0x70 ]
adox r13, [ rsp + 0x68 ]
adcx r11, rcx
adcx r8, r14
shrd rbx, rbp, 58
shr rbp, 58
mov rdx, [ rsp - 0x28 ]
mulx r15, r12, [ rsi + 0x0 ]
xor r14, r14
adox r9, r12
adox r15, r13
adcx r9, rbx
adcx rbp, r15
mov rcx, r9
shrd rcx, rbp, 58
shr rbp, 58
mulx rbx, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x38 ]
mulx r15, r12, [ rsp + 0x58 ]
mov rdx, 0x3ffffffffffffff 
and r9, rdx
mov rdx, rax
mulx r14, rax, [ rsi + 0x30 ]
adox r12, rax
adox r14, r15
adcx r11, rcx
adcx rbp, r8
mov rdx, [ rsi + 0x40 ]
mulx rcx, r8, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x0 ]
mulx rax, r15, [ rsp + 0x0 ]
test al, al
adox r12, r13
adox rbx, r14
mov rdx, [ rsp - 0x30 ]
mulx r14, r13, [ rsi + 0x8 ]
adcx r12, r13
adcx r14, rbx
mov rbx, 0x3a 
bzhi r13, r11, rbx
adox r12, r15
adox rax, r14
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x18 ], r9
mulx r14, r9, [ rsi + 0x18 ]
xor rdx, rdx
adox r8, r9
adox r14, rcx
mov rdx, [ rsi + 0x8 ]
mulx r9, rcx, [ rsp + 0x0 ]
adcx rdi, rcx
adcx r9, r10
mov rdx, [ rsi + 0x20 ]
mulx rcx, r10, rdx
shrd r11, rbp, 58
shr rbp, 58
add rdi, [ rsp + 0x18 ]
adcx r9, [ rsp + 0x10 ]
mov [ r15 + 0x20 ], r13
add r12, r11
adcx rbp, rax
mov rdx, [ rsp + 0x0 ]
mulx rax, r13, [ rsi + 0x18 ]
bzhi r11, r12, rbx
shrd r12, rbp, 58
shr rbp, 58
mov [ r15 + 0x28 ], r11
add r10, r13
adcx rax, rcx
add r10, [ rsp + 0x40 ]
adcx rax, [ rsp + 0x38 ]
mulx r13, rcx, [ rsi + 0x10 ]
test al, al
adox r10, [ rsp - 0x40 ]
adox rax, [ rsp - 0x48 ]
adcx r8, rcx
adcx r13, r14
add rdi, r12
adcx rbp, r9
mov rdx, [ rsi + 0x0 ]
mulx r9, r14, [ rsp + 0x58 ]
bzhi rdx, rdi, rbx
adox r8, [ rsp + 0x30 ]
adox r13, [ rsp + 0x28 ]
mov r11, rdx
mov rdx, [ rsp - 0x38 ]
mulx rcx, r12, [ rsi + 0x0 ]
shrd rdi, rbp, 58
shr rbp, 58
add r8, r14
adcx r9, r13
add r8, rdi
adcx rbp, r9
mov rdx, r8
shrd rdx, rbp, 58
shr rbp, 58
bzhi r14, r8, rbx
mov [ r15 + 0x38 ], r14
adox r10, r12
adox rcx, rax
xor rax, rax
adox r10, rdx
adox rbp, rcx
mov r13, r10
shrd r13, rbp, 57
shr rbp, 57
mov r12, 0x1ffffffffffffff 
and r10, r12
adox r13, [ rsp + 0x50 ]
adox rbp, rax
mov [ r15 + 0x40 ], r10
bzhi rdi, r13, rbx
mov [ r15 + 0x0 ], rdi
shrd r13, rbp, 58
add r13, [ rsp + 0x78 ]
bzhi r9, r13, rbx
mov [ r15 + 0x8 ], r9
shr r13, 58
add r13, [ rsp + 0x80 ]
mov [ r15 + 0x30 ], r11
mov [ r15 + 0x10 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 264
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.5002
; seed 0351514452565367 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4902122 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=53, initial num_batches=31): 169712 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.034620109413841596
; number reverted permutation / tried permutation: 73258 / 95059 =77.066%
; number reverted decision / tried decision: 67462 / 94940 =71.058%
; validated in 2.303s
