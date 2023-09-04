SECTION .text
	GLOBAL fiat_p521_carry_mul
fiat_p521_carry_mul:
sub rsp, 416
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x38 ]
mov rdx, [ rax + 0x40 ]
lea rcx, [rdx + rdx]
mov rdx, [ rax + 0x8 ]
lea r8, [rdx + rdx]
mov rdx, 0x1 
shlx r9, [ rax + 0x18 ], rdx
mov [ rsp - 0x80 ], rbx
shlx rbx, [ rax + 0x28 ], rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, rcx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rsi + 0x10 ]
mov rdx, r9
mov [ rsp - 0x38 ], rbp
mulx rbp, r9, [ rsi + 0x38 ]
mov [ rsp - 0x30 ], r12
imul r12, [ rax + 0x30 ], 0x2
mov [ rsp - 0x28 ], r14
mov r14, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x20 ], r13
mov [ rsp - 0x18 ], rdi
mulx rdi, r13, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r15
mov [ rsp - 0x8 ], r12
mulx r12, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x0 ], r12
mov [ rsp + 0x8 ], r15
mulx r15, r12, r14
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x10 ], r15
mov [ rsp + 0x18 ], r12
mulx r12, r15, [ rsi + 0x8 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x20 ], r12
lea r12, [rdx + rdx]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x28 ], r15
mov r15, rdx
shl r15, 0x1
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x30 ], rdi
mov [ rsp + 0x38 ], r13
mulx r13, rdi, [ rax + 0x0 ]
add rdi, r10
adcx r11, r13
mov rdx, [ rsi + 0x20 ]
mulx r13, r10, rcx
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x40 ], r13
lea r13, [rdx + rdx]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x48 ], r10
mov [ rsp + 0x50 ], rbx
mulx rbx, r10, r13
xor rdx, rdx
adox r10, r9
adox rbp, rbx
mov rdx, [ rsi + 0x38 ]
mulx rbx, r9, r15
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x58 ], rbx
mov [ rsp + 0x60 ], r9
mulx r9, rbx, r8
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x68 ], r11
mulx r11, r8, r13
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x70 ], rdi
mulx rdi, r13, r14
adcx rbx, r8
adcx r11, r9
mov rdx, [ rsi + 0x40 ]
mulx r9, r14, r12
xor rdx, rdx
adox rbx, r13
adox rdi, r11
mov rdx, [ rsi + 0x38 ]
mulx r13, r8, rcx
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x78 ], r9
mulx r9, r11, [ rax + 0x0 ]
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0x80 ], r14
mov [ rsp + 0x88 ], rdi
mulx rdi, r14, r15
adcx r14, r8
adcx r13, rdi
xor rdx, rdx
adox r14, r11
adox r9, r13
mov rdx, [ rsi + 0x28 ]
mulx r11, r8, [ rax + 0x8 ]
adcx r14, r8
adcx r11, r9
mov rdx, r12
mulx rdi, r12, [ rsi + 0x30 ]
mov r13, rdx
mov rdx, [ rax + 0x18 ]
mulx r8, r9, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp + 0x90 ], r11
mov [ rsp + 0x98 ], r14
mulx r14, r11, [ rsi + 0x30 ]
test al, al
adox r10, r12
adox rdi, rbp
mov rdx, r11
adcx rdx, [ rsp + 0x70 ]
adcx r14, [ rsp + 0x68 ]
test al, al
adox rdx, r9
adox r8, r14
mov rbp, rdx
mov rdx, [ rsi + 0x20 ]
mulx r9, r12, [ rax + 0x20 ]
adcx rbp, r12
adcx r9, r8
mov rdx, [ rsi + 0x20 ]
mulx r14, r11, [ rsp + 0x50 ]
mov rdx, [ rsi + 0x28 ]
mulx r12, r8, r13
xor rdx, rdx
adox rbx, r8
adox r12, [ rsp + 0x88 ]
adcx rbx, r11
adcx r14, r12
mov rdx, [ rsi + 0x20 ]
mulx r8, r11, [ rax + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa0 ], r14
mulx r14, r12, [ rsp + 0x50 ]
xor rdx, rdx
adox rbp, [ rsp + 0x38 ]
adox r9, [ rsp + 0x30 ]
mov [ rsp + 0xa8 ], r9
mov r9, r11
adcx r9, [ rsp + 0x98 ]
adcx r8, [ rsp + 0x90 ]
test al, al
adox r10, r12
adox r14, rdi
mov rdx, [ rsi + 0x18 ]
mulx r11, rdi, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], rbp
mulx rbp, r12, r15
adcx r9, rdi
adcx r11, r8
mov rdx, [ rax + 0x0 ]
mulx rdi, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xb8 ], r11
mov [ rsp + 0xc0 ], r9
mulx r9, r11, [ rsp - 0x8 ]
xor rdx, rdx
adox r10, r11
adox r9, r14
adcx r10, r12
adcx rbp, r9
mov rdx, rcx
mulx r14, rcx, [ rsi + 0x10 ]
test al, al
adox r10, rcx
adox r14, rbp
mov r12, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r11, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, rbp, [ rax + 0x0 ]
adcx r10, r8
adcx rdi, r14
mov rdx, r15
mulx r8, r15, [ rsi + 0x10 ]
mov r14, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0xc8 ], rcx
mov [ rsp + 0xd0 ], rbp
mulx rbp, rcx, [ rsi + 0x0 ]
add r10, rcx
adcx rbp, rdi
mov rdx, r12
mulx rdi, r12, [ rsi + 0x8 ]
add rbx, r11
adcx r9, [ rsp + 0xa0 ]
xchg rdx, r13
mulx rcx, r11, [ rsi + 0x38 ]
test al, al
adox rbx, r15
adox r8, r9
adcx rbx, r12
adcx rdi, r8
test al, al
adox rbx, [ rsp + 0xd0 ]
adox rdi, [ rsp + 0xc8 ]
mov rdx, rbx
shrd rdx, rdi, 58
shr rdi, 58
mov r15, rdx
mov rdx, [ rsi + 0x30 ]
mulx r9, r12, [ rsp + 0x50 ]
test al, al
adox r10, r15
adox rdi, rbp
mov rdx, 0x3a 
bzhi rbp, rbx, rdx
mov r8, r10
shrd r8, rdi, 58
shr rdi, 58
mov rbx, r11
xor r15, r15
adox rbx, [ rsp + 0x18 ]
adox rcx, [ rsp + 0x10 ]
adcx rbx, r12
adcx r9, rcx
mov rdx, [ rsp - 0x8 ]
mulx r12, r11, [ rsi + 0x38 ]
mov rcx, rdx
mov rdx, [ rsi + 0x40 ]
mov [ rsp + 0xd8 ], rbp
mulx rbp, r15, [ rsp + 0x50 ]
xor rdx, rdx
adox r15, r11
adox r12, rbp
mov rdx, [ rsi + 0x30 ]
mulx rbp, r11, r14
adcx r15, r11
adcx rbp, r12
mov rdx, [ rsi + 0x28 ]
mulx r11, r12, rcx
mov rdx, 0x3a 
mov [ rsp + 0xe0 ], rdi
bzhi rdi, r10, rdx
mov rdx, [ rsp + 0x50 ]
mov [ rsp + 0xe8 ], rdi
mulx rdi, r10, [ rsi + 0x38 ]
mov rdx, r13
mov [ rsp + 0xf0 ], r8
mulx r8, r13, [ rsi + 0x28 ]
adox r15, r13
adox r8, rbp
mov rbp, r10
xor r13, r13
adox rbp, [ rsp + 0x80 ]
adox rdi, [ rsp + 0x78 ]
adcx rbx, r12
adcx r11, r9
mov r9, rdx
mov rdx, [ rsi + 0x20 ]
mulx r10, r12, r14
xor rdx, rdx
adox rbx, r12
adox r10, r11
adcx rbx, [ rsp - 0x10 ]
adcx r10, [ rsp - 0x18 ]
mov rdx, [ rsi + 0x10 ]
mulx r11, r13, [ rax + 0x0 ]
xor rdx, rdx
adox rbx, r13
adox r11, r10
adcx rbx, [ rsp - 0x20 ]
adcx r11, [ rsp - 0x28 ]
xor r12, r12
adox r15, [ rsp - 0x40 ]
adox r8, [ rsp - 0x48 ]
adcx rbx, [ rsp + 0x8 ]
adcx r11, [ rsp + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r13, r10, [ rsi + 0x18 ]
xor rdx, rdx
adox r15, r10
adox r13, r8
adcx rbx, [ rsp + 0xf0 ]
adcx r11, [ rsp + 0xe0 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, r12, r14
mov rdx, rcx
mulx r14, rcx, [ rsi + 0x30 ]
xor r10, r10
adox rbp, rcx
adox r14, rdi
adcx rbp, r12
adcx r8, r14
mov rdi, rdx
mov rdx, [ rax + 0x20 ]
mulx rcx, r12, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r10, r14, [ rax + 0x10 ]
test al, al
adox r15, r14
adox r10, r13
adcx rbp, [ rsp + 0x48 ]
adcx r8, [ rsp + 0x40 ]
mov rdx, [ rsi + 0x18 ]
mulx r14, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xf8 ], r11
mov [ rsp + 0x100 ], rbx
mulx rbx, r11, [ rax + 0x18 ]
xor rdx, rdx
adox r15, r11
adox rbx, r10
adcx rbp, r13
adcx r14, r8
add r15, r12
adcx rcx, rbx
test al, al
adox rbp, [ rsp - 0x30 ]
adox r14, [ rsp - 0x38 ]
mov rdx, r9
mulx r12, r9, [ rsi + 0x40 ]
mov r10, rdx
mov rdx, [ rax + 0x0 ]
mulx r13, r8, [ rsi + 0x38 ]
mov rdx, [ rax + 0x10 ]
mulx rbx, r11, [ rsi + 0x8 ]
mov rdx, rdi
mov [ rsp + 0x108 ], rcx
mulx rcx, rdi, [ rsi + 0x40 ]
adcx rdi, [ rsp + 0x60 ]
adcx rcx, [ rsp + 0x58 ]
xor rdx, rdx
adox r9, r8
adox r13, r12
mov rdx, [ rsi + 0x30 ]
mulx r8, r12, r10
adcx rdi, r12
adcx r8, rcx
xor rdx, rdx
adox rbp, r11
adox rbx, r14
mov rdx, [ rax + 0x18 ]
mulx r14, r10, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx rcx, r11, [ rsi + 0x30 ]
adcx r9, r11
adcx rcx, r13
mov rdx, [ rsp + 0xf8 ]
mov r13, [ rsp + 0x100 ]
shrd r13, rdx, 58
shr rdx, 58
add rbp, r10
adcx r14, rbx
add rbp, r13
adcx rdx, r14
mov r12, rbp
shrd r12, rdx, 58
shr rdx, 58
add r15, r12
adcx rdx, [ rsp + 0x108 ]
mov rbx, rdx
mov rdx, [ rsi + 0x28 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, 0x3ffffffffffffff 
and rbp, rdx
adox r9, r10
adox r11, rcx
mov rcx, r15
and rcx, rdx
shrd r15, rbx, 58
shr rbx, 58
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x20 ], rcx
mov rdx, [ rsi + 0x20 ]
mulx r12, r14, [ rax + 0x18 ]
mov rdx, [ rax + 0x18 ]
mulx rcx, r10, [ rsi + 0x10 ]
test al, al
adox r9, r14
adox r12, r11
mov rdx, [ rax + 0x0 ]
mulx r14, r11, [ rsi + 0x28 ]
mov [ r13 + 0x18 ], rbp
adcx rdi, r11
adcx r14, r8
mov rdx, [ rax + 0x30 ]
mulx rbp, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx r13, r11, [ rax + 0x8 ]
add rdi, r11
adcx r13, r14
mov rdx, [ rax + 0x10 ]
mulx r11, r14, [ rsi + 0x18 ]
add rdi, r14
adcx r11, r13
mov rdx, [ rax + 0x20 ]
mulx r14, r13, [ rsi + 0x18 ]
add rdi, r10
adcx rcx, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x30 ]
mov rdx, r10
mov [ rsp + 0x110 ], rbp
xor rbp, rbp
adox rdx, [ rsp + 0xb0 ]
adox r11, [ rsp + 0xa8 ]
mov r10, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x118 ], r11
mulx r11, rbp, [ rsi + 0x10 ]
adcx r9, r13
adcx r14, r12
mov rdx, [ rsi + 0x8 ]
mulx r13, r12, [ rax + 0x20 ]
add rdi, r12
adcx r13, rcx
mov rdx, [ rax + 0x28 ]
mulx r12, rcx, [ rsi + 0x0 ]
xor rdx, rdx
adox rdi, rcx
adox r12, r13
adcx r9, rbp
adcx r11, r14
add rdi, r15
adcx rbx, r12
mov r15, 0x3ffffffffffffff 
mov rbp, rdi
and rbp, r15
shrd rdi, rbx, 58
shr rbx, 58
mov rdx, [ rsi + 0x10 ]
mulx r13, r14, [ rax + 0x20 ]
mov rdx, r14
xor rcx, rcx
adox rdx, [ rsp + 0xc0 ]
adox r13, [ rsp + 0xb8 ]
adcx rdx, [ rsp + 0x28 ]
adcx r13, [ rsp + 0x20 ]
add rdx, r8
adcx r13, [ rsp + 0x110 ]
xor r8, r8
adox rdx, rdi
adox rbx, r13
mov rcx, rdx
and rcx, r15
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x30 ], rcx
shrd rdx, rbx, 58
shr rbx, 58
mov rdi, rdx
mov rdx, [ rax + 0x38 ]
mulx r13, r14, [ rsi + 0x0 ]
mov rdx, [ rax + 0x30 ]
mulx r8, rcx, [ rsi + 0x8 ]
xor rdx, rdx
adox r9, rcx
adox r8, r11
adcx r9, r14
adcx r13, r8
mov rdx, [ rsi + 0x0 ]
mulx r14, r11, [ rax + 0x40 ]
add r9, rdi
adcx rbx, r13
mov rdx, r9
shrd rdx, rbx, 58
shr rbx, 58
mov rdi, [ rsp + 0x100 ]
and rdi, r15
mov rcx, rdx
mov rdx, [ rax + 0x38 ]
mulx r13, r8, [ rsi + 0x8 ]
adox r10, r8
adox r13, [ rsp + 0x118 ]
adcx r10, r11
adcx r14, r13
add r10, rcx
adcx rbx, r14
mov rdx, 0x1ffffffffffffff 
mov r11, r10
and r11, rdx
shrd r10, rbx, 57
shr rbx, 57
mov [ r12 + 0x40 ], r11
add r10, [ rsp + 0xd8 ]
adc rbx, 0x0
mov rcx, r10
shrd rcx, rbx, 58
and r10, r15
mov [ r12 + 0x0 ], r10
add rcx, [ rsp + 0xe8 ]
mov r8, rcx
shr r8, 58
and rcx, r15
lea r8, [ r8 + rdi ]
mov [ r12 + 0x8 ], rcx
and r9, r15
mov [ r12 + 0x28 ], rbp
mov [ r12 + 0x10 ], r8
mov [ r12 + 0x38 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 416
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.3969
; seed 0674604739076739 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 9811383 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 219800 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.022402550180744142
; number reverted permutation / tried permutation: 71082 / 95041 =74.791%
; number reverted decision / tried decision: 59244 / 94958 =62.390%
; validated in 4.806s
