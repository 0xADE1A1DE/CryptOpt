SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 360
mov rdx, [ rsi + 0x10 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
xor rdx, rdx
adox rax, r13
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, r13, rdx
adox r13, r10
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx r15, r10, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r11
mulx r11, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], rdi
mov [ rsp - 0x38 ], r13
mulx r13, rdi, [ rsi + 0x28 ]
adox r10, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x30 ], r10
mulx r10, r14, [ rsi + 0x18 ]
adcx r14, r11
adox r8, r15
mov rdx, [ rsi + 0x10 ]
mulx r11, r15, [ rsi + 0x18 ]
adcx r15, r10
seto dl
mov r10, -0x2 
inc r10
adox rbx, rcx
mov cl, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], rbx
mulx rbx, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x20 ], r15
mov [ rsp - 0x18 ], r14
mulx r14, r15, rdx
adcx r15, r11
adcx r10, r14
mov rdx, [ rsi + 0x18 ]
mulx r14, r11, [ rsi + 0x28 ]
adcx r11, rbx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x10 ], r11
mulx r11, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x8 ], r10
mov [ rsp + 0x0 ], r15
mulx r15, r10, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x8 ], r8
mov [ rsp + 0x10 ], rax
mulx rax, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], r12
mov [ rsp + 0x20 ], r10
mulx r10, r12, rdx
adox rbx, rbp
setc dl
clc
adcx r12, r15
adox r8, r11
mov bpl, dl
mov rdx, [ rsi + 0x20 ]
mulx r15, r11, rdx
adox r11, rax
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x28 ], r11
mulx r11, rax, [ rsi + 0x28 ]
adox rax, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x30 ], rax
mulx rax, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x38 ], r8
mov [ rsp + 0x40 ], rbx
mulx rbx, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x48 ], r8
mov [ rsp + 0x50 ], r11
mulx r11, r8, [ rsi + 0x28 ]
seto dl
mov [ rsp + 0x58 ], r12
mov r12, -0x2 
inc r12
adox r8, rbx
mov bl, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x60 ], r8
mulx r8, r12, [ rsi + 0x10 ]
movzx rdx, bpl
lea rdx, [ rdx + r14 ]
adox r12, r11
mov r14, rdx
mov rdx, [ rsi + 0x28 ]
mulx r11, rbp, [ rsi + 0x18 ]
adox rbp, r8
adcx r15, r10
mov rdx, [ rsi + 0x8 ]
mulx r8, r10, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x68 ], rbp
mov [ rsp + 0x70 ], r12
mulx r12, rbp, rdx
adcx r10, rax
adox rdi, r11
mov rdx, [ rsi + 0x28 ]
mulx r11, rax, rdx
adox rax, r13
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x78 ], rax
mulx rax, r13, [ rsi + 0x8 ]
mov rdx, 0x100000001 
mov [ rsp + 0x80 ], rdi
mov byte [ rsp + 0x88 ], bl
mulx rbx, rdi, rbp
mov rbx, 0xffffffff 
mov rdx, rdi
mov [ rsp + 0x90 ], r14
mulx r14, rdi, rbx
mov rbx, 0xffffffff00000000 
mov [ rsp + 0x98 ], rax
mov [ rsp + 0xa0 ], r10
mulx r10, rax, rbx
adcx r13, r8
setc r8b
clc
adcx rax, r14
mov r14, 0xfffffffffffffffe 
mov byte [ rsp + 0xa8 ], r8b
mulx r8, rbx, r14
adcx rbx, r10
mov r10, 0xffffffffffffffff 
mov [ rsp + 0xb0 ], r13
mulx r13, r14, r10
mov rdx, r14
adcx rdx, r8
mov r8, r14
adcx r8, r13
mov r10, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xb8 ], r15
mov [ rsp + 0xc0 ], r9
mulx r9, r15, [ rsi + 0x8 ]
adcx r14, r13
mov rdx, 0x0 
adcx r13, rdx
adox r11, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc8 ], r11
mov [ rsp + 0xd0 ], r13
mulx r13, r11, [ rsi + 0x10 ]
xor rdx, rdx
adox r15, r12
adox r11, r9
adcx rdi, rbp
adcx rax, r15
mov rdx, [ rsi + 0x0 ]
mulx rbp, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mulx r9, r12, [ rsi + 0x0 ]
adcx rbx, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, r15, [ rsi + 0x20 ]
adox rdi, r13
adcx r10, rdi
mov rdx, [ rsi + 0x28 ]
mulx rdi, r13, [ rsi + 0x10 ]
adox r15, rbp
adcx r8, r15
adox r12, r11
setc dl
clc
mov rbp, -0x1 
movzx rcx, cl
adcx rcx, rbp
adcx r13, [ rsp + 0xc0 ]
mov rcx, 0x0 
adcx rdi, rcx
adox r9, rcx
add dl, 0x7F
adox r12, r14
adcx rax, [ rsp + 0x20 ]
adcx rbx, [ rsp + 0x58 ]
adcx r10, [ rsp + 0xb8 ]
adcx r8, [ rsp + 0xa0 ]
adcx r12, [ rsp + 0xb0 ]
mov r14, 0x100000001 
mov rdx, rax
mulx r11, rax, r14
mov r11, rdx
mov rdx, [ rsi + 0x28 ]
mulx rcx, r15, [ rsi + 0x8 ]
adox r9, [ rsp + 0xd0 ]
seto dl
movzx rbp, byte [ rsp + 0xa8 ]
mov r14, 0x0 
dec r14
adox rbp, r14
adox r15, [ rsp + 0x98 ]
mov rbp, 0x0 
adox rcx, rbp
adcx r15, r9
mov r9, 0xffffffff00000000 
xchg rdx, rax
mulx r14, rbp, r9
mov r9, 0xffffffff 
mov [ rsp + 0xd8 ], rdi
mov [ rsp + 0xe0 ], r13
mulx r13, rdi, r9
mov r9, -0x2 
inc r9
adox rbp, r13
movzx r13, al
adcx r13, rcx
setc al
clc
adcx rdi, r11
adcx rbp, rbx
mov rdi, 0xfffffffffffffffe 
mulx rbx, r11, rdi
mov rcx, 0xffffffffffffffff 
mulx rdi, r9, rcx
adox r11, r14
adcx r11, r10
mov r10, r9
adox r10, rbx
adcx r10, r8
mov r8, r9
adox r8, rdi
adox r9, rdi
mov rdx, 0x0 
adox rdi, rdx
mov r14, -0x3 
inc r14
adox rbp, [ rsp + 0x18 ]
adox r11, [ rsp + 0x10 ]
adox r10, [ rsp - 0x38 ]
adcx r8, r12
adox r8, [ rsp - 0x30 ]
adcx r9, r15
adox r9, [ rsp + 0x8 ]
adcx rdi, r13
adox rdi, [ rsp + 0xe0 ]
movzx r12, al
adcx r12, rdx
adox r12, [ rsp + 0xd8 ]
mov r15, 0x100000001 
mov rdx, r15
mulx rax, r15, rbp
mov rax, 0xffffffff 
mov rdx, rax
mulx r13, rax, r15
clc
adcx rax, rbp
mov rax, 0xffffffff00000000 
mov rdx, r15
mulx rbx, r15, rax
seto bpl
inc r14
adox r15, r13
adcx r15, r11
mov r11, 0xfffffffffffffffe 
mulx r14, r13, r11
adox r13, rbx
adcx r13, r10
mulx rbx, r10, rcx
mov rdx, r10
adox rdx, r14
mov r14, r10
adox r14, rbx
adox r10, rbx
adcx rdx, r8
adcx r14, r9
adcx r10, rdi
mov r8, 0x0 
adox rbx, r8
adcx rbx, r12
movzx r9, bpl
adc r9, 0x0
xor rdi, rdi
adox r15, [ rsp - 0x40 ]
mov r8, 0x100000001 
xchg rdx, r8
mulx r12, rbp, r15
adox r13, [ rsp - 0x18 ]
mov rdx, rax
mulx r12, rax, rbp
adox r8, [ rsp - 0x20 ]
adox r14, [ rsp + 0x0 ]
adox r10, [ rsp - 0x8 ]
adox rbx, [ rsp - 0x10 ]
mov rdi, 0xffffffff 
mov rdx, rbp
mulx rcx, rbp, rdi
adcx rbp, r15
adox r9, [ rsp + 0x90 ]
seto bpl
mov r15, -0x2 
inc r15
adox rax, rcx
mulx r15, rcx, r11
adcx rax, r13
adox rcx, r12
adcx rcx, r8
mov r13, 0xffffffffffffffff 
mulx r8, r12, r13
movzx rdx, byte [ rsp + 0x88 ]
mov r13, [ rsp + 0x50 ]
lea rdx, [ rdx + r13 ]
mov r13, r12
adox r13, r15
mov r15, r12
adox r15, r8
adox r12, r8
mov r11, 0x0 
adox r8, r11
adcx r13, r14
adcx r15, r10
adcx r12, rbx
mov r14, -0x3 
inc r14
adox rax, [ rsp - 0x48 ]
mov r10, 0x100000001 
xchg rdx, r10
mulx r11, rbx, rax
adcx r8, r9
adox rcx, [ rsp - 0x28 ]
movzx r11, bpl
mov r9, 0x0 
adcx r11, r9
adox r13, [ rsp + 0x40 ]
mov rdx, rbx
mulx rbp, rbx, rdi
clc
adcx rbx, rax
adox r15, [ rsp + 0x38 ]
adox r12, [ rsp + 0x28 ]
adox r8, [ rsp + 0x30 ]
mov rbx, 0xffffffff00000000 
mulx r9, rax, rbx
adox r10, r11
seto r11b
inc r14
adox rax, rbp
adcx rax, rcx
mov rcx, 0xfffffffffffffffe 
mulx r14, rbp, rcx
adox rbp, r9
adcx rbp, r13
mov r13, 0xffffffffffffffff 
mulx rcx, r9, r13
mov rdx, r9
adox rdx, r14
mov r14, r9
adox r14, rcx
adcx rdx, r15
adcx r14, r12
adox r9, rcx
adcx r9, r8
mov r15, 0x0 
adox rcx, r15
adcx rcx, r10
movzx r12, r11b
adc r12, 0x0
test al, al
adox rax, [ rsp + 0x48 ]
mov r8, 0x100000001 
xchg rdx, r8
mulx r10, r11, rax
mov rdx, r11
mulx r11, r10, rbx
mulx r13, r15, rdi
adox rbp, [ rsp + 0x60 ]
adox r8, [ rsp + 0x70 ]
adox r14, [ rsp + 0x68 ]
adox r9, [ rsp + 0x80 ]
adox rcx, [ rsp + 0x78 ]
adcx r15, rax
adox r12, [ rsp + 0xc8 ]
seto r15b
mov rax, -0x2 
inc rax
adox r10, r13
mov r13, 0xfffffffffffffffe 
mulx rbx, rax, r13
adox rax, r11
adcx r10, rbp
adcx rax, r8
mov r11, 0xffffffffffffffff 
mulx r8, rbp, r11
mov rdx, rbp
adox rdx, rbx
adcx rdx, r14
mov r14, rbp
adox r14, r8
adox rbp, r8
adcx r14, r9
adcx rbp, rcx
mov r9, 0x0 
adox r8, r9
adcx r8, r12
movzx rcx, r15b
adc rcx, 0x0
mov r15, r10
sub r15, rdi
mov r12, 0xffffffff00000000 
mov rbx, rax
sbb rbx, r12
mov r9, rdx
sbb r9, r13
mov r13, r14
sbb r13, r11
mov r12, rbp
sbb r12, r11
mov rdi, r8
sbb rdi, r11
mov r11, 0x0 
sbb rcx, r11
cmovc rdi, r8
cmovc r9, rdx
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x10 ], r9
cmovc r15, r10
cmovc rbx, rax
mov [ rcx + 0x8 ], rbx
cmovc r13, r14
mov [ rcx + 0x18 ], r13
mov [ rcx + 0x28 ], rdi
cmovc r12, rbp
mov [ rcx + 0x0 ], r15
mov [ rcx + 0x20 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 360
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.4853
; seed 2078013595801023 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4672271 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 141713 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.030330646488613354
; number reverted permutation / tried permutation: 81571 / 94819 =86.028%
; number reverted decision / tried decision: 67330 / 95180 =70.740%
; validated in 47.026s
