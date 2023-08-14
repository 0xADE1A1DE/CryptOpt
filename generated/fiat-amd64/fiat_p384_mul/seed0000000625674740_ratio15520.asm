SECTION .text
	GLOBAL fiat_p384_mul
fiat_p384_mul:
sub rsp, 416
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, [ rax + 0x28 ]
mulx r8, rcx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
add rbp, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mulx r15, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, [ rsi + 0x20 ]
mov rdx, -0x2 
inc rdx
adox r11, rbp
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x40 ], r11
mulx r11, rbp, [ rsi + 0x20 ]
adox rbp, r15
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x38 ], rbp
mulx rbp, r15, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], rdi
mov [ rsp - 0x28 ], rbp
mulx rbp, rdi, [ rax + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x20 ], r15
mov [ rsp - 0x18 ], r10
mulx r10, r15, [ rax + 0x10 ]
adcx r15, r12
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x10 ], r15
mulx r15, r12, [ rsi + 0x20 ]
adox r12, r11
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x8 ], r12
mulx r12, r11, [ rax + 0x20 ]
adox r11, r15
adox r9, r12
mov rdx, [ rsi + 0x8 ]
mulx r12, r15, [ rax + 0x20 ]
adcx rdi, r10
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x0 ], r9
mulx r9, r10, [ rsi + 0x0 ]
adcx r15, rbp
mov rdx, 0x0 
adox rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x8 ], rbx
mulx rbx, rbp, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x10 ], r11
mov [ rsp + 0x18 ], r15
mulx r15, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x20 ], rdi
mov [ rsp + 0x28 ], r12
mulx r12, rdi, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], rdi
mov [ rsp + 0x38 ], r8
mulx r8, rdi, [ rax + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r10, rbx
setc bl
clc
adcx r11, r12
adcx rdi, r15
adox r13, r9
mov rdx, [ rax + 0x18 ]
mulx r15, r9, [ rsi + 0x10 ]
adcx r9, r8
mov rdx, [ rax + 0x28 ]
mulx r8, r12, [ rsi + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x40 ], r9
mov [ rsp + 0x48 ], rdi
mulx rdi, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x50 ], r11
mov [ rsp + 0x58 ], r13
mulx r13, r11, [ rax + 0x0 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x60 ], r11
mov [ rsp + 0x68 ], r10
mulx r10, r11, [ rax + 0x8 ]
adcx r9, r15
adcx r12, rdi
mov rdx, 0x0 
adcx r8, rdx
mov rdx, [ rax + 0x10 ]
mulx rdi, r15, [ rsi + 0x28 ]
clc
adcx r11, r13
adcx r15, r10
mov rdx, [ rax + 0x18 ]
mulx r10, r13, [ rsi + 0x28 ]
adcx r13, rdi
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x70 ], r13
mulx r13, rdi, [ rax + 0x20 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x78 ], r15
mov [ rsp + 0x80 ], r11
mulx r11, r15, [ rsi + 0x0 ]
adcx rdi, r10
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], rdi
mulx rdi, r10, [ rax + 0x20 ]
adox r15, r14
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x90 ], r8
mulx r8, r14, [ rsi + 0x18 ]
adox r10, r11
adcx rcx, r13
mov rdx, [ rax + 0x28 ]
mulx r11, r13, [ rsi + 0x0 ]
adox r13, rdi
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], rcx
mulx rcx, rdi, [ rax + 0x28 ]
mov rdx, 0x0 
adox r11, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], r14
mov [ rsp + 0xa8 ], r12
mulx r12, r14, [ rax + 0x8 ]
mov rdx, 0x100000001 
mov [ rsp + 0xb0 ], r9
mov [ rsp + 0xb8 ], r11
mulx r11, r9, rbp
mov r11, [ rsp + 0x38 ]
adc r11, 0x0
add bl, 0xFF
adcx rdi, [ rsp + 0x28 ]
adox r14, r8
mov rbx, 0x0 
adcx rcx, rbx
mov rdx, [ rsi + 0x18 ]
mulx rbx, r8, [ rax + 0x10 ]
adox r8, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xc0 ], r11
mulx r11, r12, [ rax + 0x18 ]
mov rdx, 0xffffffff 
mov [ rsp + 0xc8 ], r8
mov [ rsp + 0xd0 ], r14
mulx r14, r8, r9
adox r12, rbx
mov rbx, 0xffffffff00000000 
mov rdx, r9
mov [ rsp + 0xd8 ], r12
mulx r12, r9, rbx
clc
adcx r8, rbp
mov r8, 0xfffffffffffffffe 
mulx rbx, rbp, r8
seto r8b
mov [ rsp + 0xe0 ], rcx
mov rcx, -0x2 
inc rcx
adox r9, r14
adcx r9, [ rsp + 0x68 ]
mov r14, 0xffffffffffffffff 
mov [ rsp + 0xe8 ], r11
mulx r11, rcx, r14
adox rbp, r12
mov rdx, rcx
adox rdx, rbx
mov r12, rcx
adox r12, r11
adcx rbp, [ rsp + 0x58 ]
adcx rdx, r15
adox rcx, r11
mov r15, 0x0 
adox r11, r15
adcx r12, r10
adcx rcx, r13
adcx r11, [ rsp + 0xb8 ]
mov r10, -0x3 
inc r10
adox r9, [ rsp - 0x18 ]
adox rbp, [ rsp - 0x48 ]
adox rdx, [ rsp - 0x10 ]
adox r12, [ rsp + 0x20 ]
adox rcx, [ rsp + 0x18 ]
adox rdi, r11
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, rbx, [ rax + 0x20 ]
seto dl
dec r15
movzx r8, r8b
adox r8, r15
adox rbx, [ rsp + 0xe8 ]
movzx rdx, dl
movzx r8, dl
adcx r8, [ rsp + 0xe0 ]
mov rdx, 0x100000001 
mulx r10, r15, r9
mov r10, 0xffffffff 
mov rdx, r15
mulx r14, r15, r10
adox r11, [ rsp - 0x20 ]
mov r10, [ rsp - 0x28 ]
mov [ rsp + 0xf0 ], r11
mov r11, 0x0 
adox r10, r11
mov r11, 0xffffffff00000000 
mov [ rsp + 0xf8 ], r10
mov [ rsp + 0x100 ], rbx
mulx rbx, r10, r11
mov r11, -0x2 
inc r11
adox r15, r9
setc r15b
clc
adcx r10, r14
mov r9, 0xfffffffffffffffe 
mulx r11, r14, r9
adcx r14, rbx
adox r10, rbp
mov rbp, 0xffffffffffffffff 
mulx r9, rbx, rbp
adox r14, r13
mov r13, rbx
adcx r13, r11
adox r13, r12
mov r12, rbx
adcx r12, r9
adcx rbx, r9
mov rdx, 0x0 
adcx r9, rdx
adox r12, rcx
adox rbx, rdi
adox r9, r8
movzx rcx, r15b
adox rcx, rdx
xor rdi, rdi
adox r10, [ rsp + 0x30 ]
mov rdx, 0x100000001 
mulx r8, r15, r10
adox r14, [ rsp + 0x50 ]
mov rdx, rbp
mulx rbp, r8, r15
mov r11, 0xffffffff00000000 
mov rdx, r15
mulx rdi, r15, r11
adox r13, [ rsp + 0x48 ]
adox r12, [ rsp + 0x40 ]
adox rbx, [ rsp + 0xb0 ]
adox r9, [ rsp + 0xa8 ]
mov r11, 0xffffffff 
mov [ rsp + 0x108 ], r9
mov [ rsp + 0x110 ], rbx
mulx rbx, r9, r11
adox rcx, [ rsp + 0x90 ]
adcx r15, rbx
seto bl
mov r11, -0x2 
inc r11
adox r9, r10
mov r9, 0xfffffffffffffffe 
mulx r11, r10, r9
adox r15, r14
adcx r10, rdi
mov rdx, r8
adcx rdx, r11
mov r14, r8
adcx r14, rbp
adox r10, r13
adcx r8, rbp
mov rdi, 0x0 
adcx rbp, rdi
adox rdx, r12
adox r14, [ rsp + 0x110 ]
adox r8, [ rsp + 0x108 ]
adox rbp, rcx
movzx r13, bl
adox r13, rdi
test al, al
adox r15, [ rsp + 0xa0 ]
mov r12, 0x100000001 
xchg rdx, r15
mulx rcx, rbx, r12
mov rcx, 0xffffffff 
xchg rdx, rcx
mulx rdi, r11, rbx
adox r10, [ rsp + 0xd0 ]
mov r9, 0xffffffff00000000 
mov rdx, rbx
mulx r12, rbx, r9
adox r15, [ rsp + 0xc8 ]
adox r14, [ rsp + 0xd8 ]
adox r8, [ rsp + 0x100 ]
adox rbp, [ rsp + 0xf0 ]
adox r13, [ rsp + 0xf8 ]
adcx r11, rcx
seto r11b
mov rcx, -0x2 
inc rcx
adox rbx, rdi
adcx rbx, r10
mov rdi, 0xfffffffffffffffe 
mulx rcx, r10, rdi
adox r10, r12
adcx r10, r15
mov r12, 0xffffffffffffffff 
mulx rdi, r15, r12
mov rdx, r15
adox rdx, rcx
mov rcx, r15
adox rcx, rdi
adcx rdx, r14
adcx rcx, r8
adox r15, rdi
mov r14, 0x0 
adox rdi, r14
adcx r15, rbp
adcx rdi, r13
mov r8, -0x3 
inc r8
adox rbx, [ rsp - 0x30 ]
mov rbp, 0x100000001 
xchg rdx, rbp
mulx r14, r13, rbx
movzx r14, r11b
mov r8, 0x0 
adcx r14, r8
adox r10, [ rsp - 0x40 ]
adox rbp, [ rsp - 0x38 ]
adox rcx, [ rsp - 0x8 ]
adox r15, [ rsp + 0x10 ]
adox rdi, [ rsp + 0x0 ]
mov r11, 0xffffffff 
mov rdx, r11
mulx r8, r11, r13
mov rdx, r13
mulx r12, r13, r9
clc
adcx r13, r8
adox r14, [ rsp + 0x8 ]
seto r8b
mov r9, -0x2 
inc r9
adox r11, rbx
mov r11, 0xfffffffffffffffe 
mulx r9, rbx, r11
adcx rbx, r12
adox r13, r10
mov r10, 0xffffffffffffffff 
mulx r11, r12, r10
mov rdx, r12
adcx rdx, r9
mov r9, r12
adcx r9, r11
adcx r12, r11
mov r10, 0x0 
adcx r11, r10
adox rbx, rbp
adox rdx, rcx
adox r9, r15
adox r12, rdi
clc
adcx r13, [ rsp + 0x60 ]
adcx rbx, [ rsp + 0x80 ]
adcx rdx, [ rsp + 0x78 ]
mov rbp, 0x100000001 
xchg rdx, rbp
mulx r15, rcx, r13
adox r11, r14
movzx r15, r8b
adox r15, r10
adcx r9, [ rsp + 0x70 ]
adcx r12, [ rsp + 0x88 ]
adcx r11, [ rsp + 0x98 ]
adcx r15, [ rsp + 0xc0 ]
mov rdi, 0xffffffff 
mov rdx, rcx
mulx r8, rcx, rdi
mov r14, 0xffffffff00000000 
mulx rdi, r10, r14
mov r14, -0x2 
inc r14
adox r10, r8
setc r8b
clc
adcx rcx, r13
adcx r10, rbx
mov rcx, 0xfffffffffffffffe 
mulx rbx, r13, rcx
adox r13, rdi
adcx r13, rbp
mov rbp, 0xffffffffffffffff 
mulx r14, rdi, rbp
mov rdx, rdi
adox rdx, rbx
mov rbx, rdi
adox rbx, r14
adox rdi, r14
mov rbp, 0x0 
adox r14, rbp
adcx rdx, r9
adcx rbx, r12
adcx rdi, r11
adcx r14, r15
movzx r9, r8b
adc r9, 0x0
mov r12, 0xffffffff 
mov r11, r10
sub r11, r12
mov r8, 0xffffffff00000000 
mov r15, r13
sbb r15, r8
mov rbp, rdx
sbb rbp, rcx
mov rcx, 0xffffffffffffffff 
mov r8, rbx
sbb r8, rcx
mov r12, rdi
sbb r12, rcx
mov [ rsp + 0x118 ], r15
mov r15, r14
sbb r15, rcx
mov rcx, 0x0 
sbb r9, rcx
cmovc rbp, rdx
cmovc r11, r10
cmovc r12, rdi
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x20 ], r12
cmovc r8, rbx
mov [ r9 + 0x0 ], r11
mov [ r9 + 0x10 ], rbp
cmovc r15, r14
mov [ r9 + 0x28 ], r15
mov r10, [ rsp + 0x118 ]
cmovc r10, r13
mov [ r9 + 0x18 ], r8
mov [ r9 + 0x8 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 416
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.5520
; seed 3685820988526532 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6553740 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=32, initial num_batches=31): 184922 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.028216255145916684
; number reverted permutation / tried permutation: 80185 / 94965 =84.436%
; number reverted decision / tried decision: 71542 / 95034 =75.280%
; validated in 64.469s
