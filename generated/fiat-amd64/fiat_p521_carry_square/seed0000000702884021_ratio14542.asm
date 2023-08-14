SECTION .text
	GLOBAL fiat_p521_carry_square
fiat_p521_carry_square:
sub rsp, 320
mov rax, 0x2 
shlx r10, [ rsi + 0x40 ], rax
mov r11, [ rsi + 0x38 ]
lea rdx, [ 4 * r11]
imul r11, [ rsi + 0x40 ], 0x2
mulx r8, rcx, [ rsi + 0x18 ]
mov r9, [ rsi + 0x30 ]
mov [ rsp - 0x80 ], rbx
lea rbx, [r9 + r9]
shlx r9, [ rsi + 0x28 ], rax
mov [ rsp - 0x78 ], rbp
shlx rbp, [ rsi + 0x30 ], rax
mov [ rsp - 0x70 ], r12
mov r12, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, rbx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x58 ], r15
mulx rax, r15, rbp
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r14
mulx r14, rdi, r10
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x40 ], r13
mov [ rsp - 0x38 ], r11
mulx r11, r13, r10
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x30 ], r14
lea r14, [rdx + rdx]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], rdi
lea rdi, [rdx + rdx]
mov rdx, rdi
mov [ rsp - 0x20 ], r14
mulx r14, rdi, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], r11
mov r11, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x10 ], r13
mov [ rsp - 0x8 ], rax
mulx rax, r13, r10
mov rdx, 0x1 
mov [ rsp + 0x0 ], r15
shlx r15, [ rsi + 0x28 ], rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x8 ], r14
mov [ rsp + 0x10 ], rdi
mulx rdi, r14, r15
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], r8
mov [ rsp + 0x20 ], rcx
mulx rcx, r8, rbx
mov rdx, r12
mov [ rsp + 0x28 ], rcx
mulx rcx, r12, [ rsi + 0x28 ]
mov [ rsp + 0x30 ], r8
mov [ rsp + 0x38 ], rax
mulx rax, r8, [ rsi + 0x30 ]
mov [ rsp + 0x40 ], rax
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x48 ], r8
mov [ rsp + 0x50 ], r13
mulx r13, r8, rbp
add r14, r8
adcx r13, rdi
mov rdx, rbx
mulx rdi, rbx, [ rsi + 0x30 ]
add rbx, r12
adcx rcx, rdi
mulx r8, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x58 ], r8
mulx r8, rdi, rbp
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x60 ], r12
mulx r12, rbp, r9
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x68 ], rcx
mulx rcx, r9, rax
add rbp, rdi
adcx r8, r12
xor rdx, rdx
adox rbp, r9
adox rcx, r8
mov rdx, [ rsi + 0x8 ]
mulx r12, rdi, r10
adcx rbp, rdi
adcx r12, rcx
mov rdx, [ rsi + 0x8 ]
lea r9, [rdx + rdx]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], rbx
mulx rbx, rdi, rdx
test al, al
adox rbp, rdi
adox rbx, r12
mov rdx, r8
adcx rdx, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x38 ]
test al, al
adox r14, [ rsp + 0x20 ]
adox r13, [ rsp + 0x18 ]
mov r12, rdx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r8, r10
adcx r14, r8
adcx rdi, r13
mov rdx, 0x3ffffffffffffff 
mov r13, rbp
and r13, rdx
adox r12, [ rsp + 0x10 ]
adox rcx, [ rsp + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x78 ], r13
mulx r13, r8, r9
mov rdx, r10
mulx r9, r10, [ rsi + 0x20 ]
shrd rbp, rbx, 58
shr rbx, 58
mov [ rsp + 0x80 ], rcx
mov rcx, r10
add rcx, [ rsp + 0x70 ]
adcx r9, [ rsp + 0x68 ]
add r14, r8
adcx r13, rdi
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mulx r10, r8, rax
xor rdx, rdx
adox r14, rbp
adox rbx, r13
mov rax, [ rsi + 0x10 ]
lea rbp, [rax + rax]
mov rax, r8
adcx rax, [ rsp + 0x0 ]
adcx r10, [ rsp - 0x8 ]
test al, al
adox rax, [ rsp - 0x10 ]
adox r10, [ rsp - 0x18 ]
mov rdx, rbp
mulx r13, rbp, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], r12
mulx r12, r8, [ rsi + 0x8 ]
adcx rcx, r8
adcx r12, r9
mov rdx, [ rsi + 0x8 ]
mulx r8, r9, rdx
xor rdx, rdx
adox rax, r9
adox r8, r10
mov r10, r14
shrd r10, rbx, 58
shr rbx, 58
mov r9, 0x3ffffffffffffff 
and r14, r9
imul rdx, [ rsi + 0x18 ], 0x2
add rax, rbp
adcx r13, r8
mulx r8, rbp, [ rsi + 0x10 ]
mov [ rsp + 0x90 ], r14
mulx r14, r9, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], r8
mov [ rsp + 0xa0 ], rbp
mulx rbp, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xa8 ], r14
mov [ rsp + 0xb0 ], r9
mulx r9, r14, rdx
xor rdx, rdx
adox rax, r10
adox rbx, r13
adcx rcx, r8
adcx rbp, r12
mov r12, rax
shrd r12, rbx, 58
shr rbx, 58
mov rdx, rdi
mulx r10, rdi, [ rsi + 0x28 ]
mov rdx, rdi
add rdx, [ rsp + 0x48 ]
adcx r10, [ rsp + 0x40 ]
mov r13, 0x3a 
bzhi r8, rax, r13
adox rdx, r14
adox r9, r10
add rcx, r12
adcx rbx, rbp
xor r14, r14
adox rdx, [ rsp + 0xb0 ]
adox r9, [ rsp + 0xa8 ]
mov rax, rdx
mov rdx, [ rsi + 0x38 ]
mulx r12, rbp, [ rsp - 0x20 ]
bzhi rdx, rcx, r13
adox rbp, [ rsp - 0x28 ]
adox r12, [ rsp - 0x30 ]
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x18 ], rdx
mov rdx, [ rsi + 0x0 ]
mulx r14, r10, r15
mov rdx, r11
mulx r13, r11, [ rsi + 0x0 ]
xor rdi, rdi
adox rax, r11
adox r13, r9
mulx r11, r9, [ rsi + 0x8 ]
shrd rcx, rbx, 58
shr rbx, 58
mov [ rsp + 0xb8 ], r8
xor r8, r8
adox rax, rcx
adox rbx, r13
adcx rbp, [ rsp + 0xa0 ]
adcx r12, [ rsp + 0x98 ]
mov rdi, rax
shrd rdi, rbx, 58
shr rbx, 58
xor r13, r13
adox rbp, r9
adox r11, r12
adcx rbp, r10
adcx r14, r11
mulx r10, r8, [ rsi + 0x18 ]
mov rdx, r15
mulx r9, r15, [ rsi + 0x18 ]
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, r12, rdx
xor rdx, rdx
adox r12, r15
adox r9, r11
mov rdx, [ rsi + 0x40 ]
mulx r15, r13, [ rsp - 0x38 ]
adcx rbp, rdi
adcx rbx, r14
test al, al
adox r13, r8
adox r10, r15
mov rdx, rcx
mulx rdi, rcx, [ rsi + 0x8 ]
mov r14, rcx
adcx r14, [ rsp + 0x88 ]
adcx rdi, [ rsp + 0x80 ]
test al, al
adox r14, [ rsp + 0x60 ]
adox rdi, [ rsp + 0x58 ]
mov r8, 0x3a 
bzhi r11, rbp, r8
shrd rbp, rbx, 58
shr rbx, 58
xor r15, r15
adox r14, rbp
adox rbx, rdi
mulx rdi, rcx, [ rsi + 0x10 ]
adcx r13, rcx
adcx rdi, r10
xor rdx, rdx
adox r13, [ rsp + 0x30 ]
adox rdi, [ rsp + 0x28 ]
bzhi r15, r14, r8
mov rdx, [ rsp - 0x20 ]
mulx rbp, r10, [ rsi + 0x0 ]
shrd r14, rbx, 58
shr rbx, 58
test al, al
adox r13, r10
adox rbp, rdi
adcx r13, r14
adcx rbx, rbp
mulx rdi, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r14, r10, [ rsp - 0x38 ]
add r12, [ rsp - 0x40 ]
adcx r9, [ rsp - 0x48 ]
add r12, rcx
adcx rdi, r9
add r12, r10
adcx r14, rdi
mov rdx, r13
shrd rdx, rbx, 58
shr rbx, 58
xor rbp, rbp
adox r12, rdx
adox rbx, r14
mov rcx, r12
shrd rcx, rbx, 57
shr rbx, 57
test al, al
adox rcx, [ rsp + 0x78 ]
adox rbx, rbp
bzhi r10, rcx, r8
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x30 ], r15
mov [ r9 + 0x0 ], r10
shrd rcx, rbx, 58
mov r15, 0x39 
bzhi rdi, r12, r15
add rcx, [ rsp + 0x90 ]
mov [ r9 + 0x40 ], rdi
bzhi r14, rcx, r8
mov [ r9 + 0x8 ], r14
shr rcx, 58
add rcx, [ rsp + 0xb8 ]
bzhi rdx, rax, r8
mov [ r9 + 0x10 ], rcx
mov [ r9 + 0x20 ], rdx
bzhi rax, r13, r8
mov [ r9 + 0x28 ], r11
mov [ r9 + 0x38 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 320
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.4542
; seed 1738842627537279 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4887600 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=53, initial num_batches=31): 164779 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03371368360749652
; number reverted permutation / tried permutation: 69975 / 94923 =73.718%
; number reverted decision / tried decision: 64905 / 95076 =68.266%
; validated in 3.902s
