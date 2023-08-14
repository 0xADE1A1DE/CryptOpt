SECTION .text
	GLOBAL fiat_p434_mul
fiat_p434_mul:
sub rsp, 584
mov rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mulx r8, rcx, [ rax + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x30 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
xor rdx, rdx
adox r10, r14
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r9
mulx r9, rdi, [ rsi + 0x20 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x40 ], r10
mov [ rsp - 0x38 ], r13
mulx r13, r10, [ rsi + 0x20 ]
adcx rdi, r13
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x30 ], rdi
mulx rdi, r13, [ rsi + 0x20 ]
adcx r13, r9
adcx rbp, rdi
mov rdx, [ rax + 0x10 ]
mulx rdi, r9, [ rsi + 0x10 ]
adox r9, r11
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], rbp
mulx rbp, r11, [ rsi + 0x10 ]
adcx rcx, r12
adox r11, rdi
mov rdx, [ rsi + 0x28 ]
mulx rdi, r12, [ rax + 0x8 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x20 ], rcx
mov [ rsp - 0x18 ], r13
mulx r13, rcx, [ rax + 0x28 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x10 ], r10
mov [ rsp - 0x8 ], r11
mulx r11, r10, [ rsi + 0x28 ]
adcx rcx, r8
seto dl
mov r8, -0x2 
inc r8
adox r12, r11
adox r14, rdi
mov dil, dl
mov rdx, [ rax + 0x18 ]
mulx r8, r11, [ rsi + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x0 ], r14
mov [ rsp + 0x8 ], r12
mulx r12, r14, [ rsi + 0x0 ]
adox r11, r15
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x10 ], r11
mulx r11, r15, [ rax + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x18 ], r10
mov [ rsp + 0x20 ], rcx
mulx rcx, r10, [ rsi + 0x0 ]
setc dl
clc
adcx r14, rcx
adcx r15, r12
mov r12b, dl
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x28 ], r9
mulx r9, rcx, [ rsi + 0x28 ]
adox rcx, r8
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x30 ], rcx
mulx rcx, r8, [ rsi + 0x0 ]
adcx r8, r11
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x38 ], r13
mulx r13, r11, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov byte [ rsp + 0x40 ], r12b
mov [ rsp + 0x48 ], r8
mulx r8, r12, [ rax + 0x20 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x50 ], r15
mov [ rsp + 0x58 ], r14
mulx r14, r15, [ rsi + 0x28 ]
adox r11, r9
adox r15, r13
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, [ rax + 0x28 ]
adcx r12, rcx
adcx r9, r8
mov rdx, [ rax + 0x10 ]
mulx r8, rcx, [ rsi + 0x30 ]
mov rdx, 0x0 
adox r14, rdx
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x60 ], r14
mov [ rsp + 0x68 ], r15
mulx r15, r14, [ rsi + 0x0 ]
adcx r14, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x70 ], r11
mulx r11, r13, [ rax + 0x8 ]
adc r15, 0x0
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x78 ], r15
mov [ rsp + 0x80 ], r14
mulx r14, r15, [ rax + 0x8 ]
test al, al
adox r15, rbx
adox rcx, r14
mov rdx, [ rsi + 0x30 ]
mulx r14, rbx, [ rax + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x88 ], rcx
mov [ rsp + 0x90 ], r15
mulx r15, rcx, [ rsi + 0x18 ]
adox rbx, r8
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x98 ], rbx
mulx rbx, r8, [ rsi + 0x30 ]
adox r8, r14
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], r8
mulx r8, r14, [ rax + 0x20 ]
adcx r13, r15
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa8 ], r13
mulx r13, r15, [ rax + 0x10 ]
adcx r15, r11
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xb0 ], r15
mulx r15, r11, [ rsi + 0x18 ]
adcx r11, r13
adcx r14, r15
mov rdx, [ rax + 0x28 ]
mulx r15, r13, [ rsi + 0x30 ]
adox r13, rbx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xb8 ], r13
mulx r13, rbx, [ rsi + 0x10 ]
setc dl
clc
mov [ rsp + 0xc0 ], r14
mov r14, -0x1 
movzx rdi, dil
adcx rdi, r14
adcx rbp, rbx
mov dil, dl
mov rdx, [ rax + 0x28 ]
mulx r14, rbx, [ rsi + 0x10 ]
adcx rbx, r13
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xc8 ], r11
mulx r11, r13, [ rsi + 0x10 ]
adcx r13, r14
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0xd0 ], rcx
mulx rcx, r14, [ rax + 0x30 ]
adox r14, r15
mov rdx, 0x0 
adox rcx, rdx
adc r11, 0x0
mov r15, 0xffffffffffffffff 
mov rdx, r10
mov [ rsp + 0xd8 ], rcx
mulx rcx, r10, r15
mov r15, r10
test al, al
adox r15, rcx
mov [ rsp + 0xe0 ], r14
mov r14, 0xfdc1767ae2ffffff 
mov [ rsp + 0xe8 ], r11
mov [ rsp + 0xf0 ], r13
mulx r13, r11, r14
mov r14, r10
adox r14, rcx
adcx r10, rdx
adcx r15, [ rsp + 0x58 ]
mov r10, 0x7bc65c783158aea3 
mov [ rsp + 0xf8 ], rbx
mov [ rsp + 0x100 ], rbp
mulx rbp, rbx, r10
adox r11, rcx
adcx r14, [ rsp + 0x50 ]
adcx r11, [ rsp + 0x48 ]
adox rbx, r13
adcx rbx, r12
mov r12, 0x2341f27177344 
mulx r13, rcx, r12
mov r12, 0x6cfc5fd681c52056 
mov [ rsp + 0x108 ], rbx
mulx rbx, r10, r12
adox r10, rbp
adox rcx, rbx
adcx r10, r9
adcx rcx, [ rsp + 0x80 ]
mov rdx, 0x0 
adox r13, rdx
mov rdx, [ rax + 0x0 ]
mulx rbp, r9, [ rsi + 0x8 ]
adcx r13, [ rsp + 0x78 ]
mov rdx, [ rax + 0x10 ]
mulx r12, rbx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x110 ], r13
mov [ rsp + 0x118 ], rcx
mulx rcx, r13, [ rax + 0x8 ]
mov rdx, -0x2 
inc rdx
adox r13, rbp
adox rbx, rcx
setc bpl
clc
adcx r9, r15
mov rdx, [ rax + 0x28 ]
mulx rcx, r15, [ rsi + 0x18 ]
mov rdx, 0xffffffffffffffff 
mov byte [ rsp + 0x120 ], bpl
mov [ rsp + 0x128 ], r10
mulx r10, rbp, r9
adcx r13, r14
seto r14b
mov rdx, 0x0 
dec rdx
movzx rdi, dil
adox rdi, rdx
adox r8, r15
adcx rbx, r11
mov rdx, [ rsi + 0x18 ]
mulx r11, rdi, [ rax + 0x30 ]
adox rdi, rcx
mov rdx, rbp
setc r15b
clc
adcx rdx, r10
mov rcx, rbp
mov [ rsp + 0x130 ], rdi
seto dil
mov [ rsp + 0x138 ], r8
mov r8, -0x2 
inc r8
adox rcx, r9
adox rdx, r13
mov rcx, 0xfdc1767ae2ffffff 
xchg rdx, r9
mulx r8, r13, rcx
adcx rbp, r10
adox rbp, rbx
adcx r13, r10
movzx r10, dil
lea r10, [ r10 + r11 ]
mov rbx, 0x7bc65c783158aea3 
mulx rdi, r11, rbx
seto bl
mov rcx, -0x2 
inc rcx
adox r9, [ rsp - 0x38 ]
adox rbp, [ rsp - 0x40 ]
adcx r11, r8
mov r8, 0x6cfc5fd681c52056 
mov [ rsp + 0x140 ], r10
mulx r10, rcx, r8
adcx rcx, rdi
mov rdi, 0x2341f27177344 
mov [ rsp + 0x148 ], rbp
mulx rbp, r8, rdi
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x150 ], r9
mulx r9, rdi, [ rax + 0x30 ]
seto dl
mov [ rsp + 0x158 ], rcx
movzx rcx, byte [ rsp + 0x40 ]
mov [ rsp + 0x160 ], r11
mov r11, -0x1 
inc r11
mov r11, -0x1 
adox rcx, r11
adox rdi, [ rsp + 0x38 ]
adcx r8, r10
mov cl, dl
mov rdx, [ rax + 0x20 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, 0x0 
adcx rbp, rdx
adox r9, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x168 ], r9
mov [ rsp + 0x170 ], rdi
mulx rdi, r9, [ rax + 0x18 ]
add r14b, 0xFF
adcx r12, r9
adcx r10, rdi
mov rdx, [ rsi + 0x8 ]
mulx r9, r14, [ rax + 0x28 ]
adcx r14, r11
mov rdx, [ rax + 0x30 ]
mulx rdi, r11, [ rsi + 0x8 ]
adcx r11, r9
adc rdi, 0x0
add r15b, 0xFF
adcx r12, [ rsp + 0x108 ]
mov rdx, -0x1 
movzx rbx, bl
adox rbx, rdx
adox r12, r13
adcx r10, [ rsp + 0x128 ]
adox r10, [ rsp + 0x160 ]
adcx r14, [ rsp + 0x118 ]
adox r14, [ rsp + 0x158 ]
adcx r11, [ rsp + 0x110 ]
adox r8, r11
movzx r15, byte [ rsp + 0x120 ]
adcx r15, rdi
adox rbp, r15
seto bl
adc bl, 0x0
movzx rbx, bl
add cl, 0x7F
adox r12, [ rsp + 0x28 ]
adox r10, [ rsp - 0x8 ]
mov r13, 0xffffffffffffffff 
mov rdx, [ rsp + 0x150 ]
mulx r9, rcx, r13
mov rdi, rcx
adcx rdi, r9
adox r14, [ rsp + 0x100 ]
adox r8, [ rsp + 0xf8 ]
mov r11, 0xfdc1767ae2ffffff 
mulx r13, r15, r11
mov r11, rcx
adcx r11, r9
adcx r15, r9
adox rbp, [ rsp + 0xf0 ]
movzx rbx, bl
movzx r9, bl
adox r9, [ rsp + 0xe8 ]
seto bl
mov [ rsp + 0x178 ], r9
mov r9, -0x2 
inc r9
adox rcx, rdx
adox rdi, [ rsp + 0x148 ]
adox r11, r12
adox r15, r10
mov rcx, 0x7bc65c783158aea3 
mulx r10, r12, rcx
adcx r12, r13
adox r12, r14
mov r14, 0x6cfc5fd681c52056 
mulx r9, r13, r14
adcx r13, r10
adox r13, r8
mov r8, 0x2341f27177344 
mulx r14, r10, r8
adcx r10, r9
mov rdx, 0x0 
adcx r14, rdx
clc
adcx rdi, [ rsp + 0xd0 ]
adcx r11, [ rsp + 0xa8 ]
mov r9, 0xffffffffffffffff 
mov rdx, rdi
mulx r8, rdi, r9
adcx r15, [ rsp + 0xb0 ]
adcx r12, [ rsp + 0xc8 ]
adcx r13, [ rsp + 0xc0 ]
adox r10, rbp
adcx r10, [ rsp + 0x138 ]
adox r14, [ rsp + 0x178 ]
adcx r14, [ rsp + 0x130 ]
movzx rbp, bl
mov rcx, 0x0 
adox rbp, rcx
mov rbx, rdi
mov r9, -0x3 
inc r9
adox rbx, r8
mov rcx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x180 ], r14
mulx r14, r9, rcx
mov rcx, rdi
adox rcx, r8
adox r9, r8
adcx rbp, [ rsp + 0x140 ]
setc r8b
clc
adcx rdi, rdx
adcx rbx, r11
adcx rcx, r15
mov rdi, 0x7bc65c783158aea3 
mulx r15, r11, rdi
adox r11, r14
adcx r9, r12
mov r12, 0x6cfc5fd681c52056 
mulx rdi, r14, r12
adox r14, r15
adcx r11, r13
adcx r14, r10
mov r13, 0x2341f27177344 
mulx r15, r10, r13
adox r10, rdi
adcx r10, [ rsp + 0x180 ]
mov rdx, 0x0 
adox r15, rdx
adcx r15, rbp
movzx rbp, r8b
adc rbp, 0x0
xor r8, r8
adox rbx, [ rsp - 0x10 ]
adox rcx, [ rsp - 0x30 ]
mov rdx, 0xffffffffffffffff 
mulx r8, rdi, rbx
adox r9, [ rsp - 0x18 ]
adox r11, [ rsp - 0x28 ]
adox r14, [ rsp - 0x20 ]
adox r10, [ rsp + 0x20 ]
adox r15, [ rsp + 0x170 ]
adox rbp, [ rsp + 0x168 ]
mov r12, rdi
adcx r12, r8
mov r13, rdi
adcx r13, r8
seto dl
mov [ rsp + 0x188 ], rbp
mov rbp, -0x2 
inc rbp
adox rdi, rbx
mov rdi, 0xfdc1767ae2ffffff 
xchg rdx, rbx
mov byte [ rsp + 0x190 ], bl
mulx rbx, rbp, rdi
adox r12, rcx
adox r13, r9
adcx rbp, r8
adox rbp, r11
mov rcx, 0x7bc65c783158aea3 
mulx r9, r8, rcx
adcx r8, rbx
adox r8, r14
setc r11b
clc
adcx r12, [ rsp + 0x18 ]
adcx r13, [ rsp + 0x8 ]
adcx rbp, [ rsp + 0x0 ]
mov r14, 0x6cfc5fd681c52056 
mulx rcx, rbx, r14
adcx r8, [ rsp + 0x10 ]
setc r14b
clc
mov rdi, -0x1 
movzx r11, r11b
adcx r11, rdi
adcx r9, rbx
mov r11, 0x2341f27177344 
mulx rdi, rbx, r11
adcx rbx, rcx
mov rdx, 0x0 
adcx rdi, rdx
mov rcx, 0xffffffffffffffff 
mov rdx, r12
mulx r11, r12, rcx
adox r9, r10
mov r10, r12
clc
adcx r10, rdx
adox rbx, r15
mov r10, r12
seto r15b
mov rcx, -0x2 
inc rcx
adox r10, r11
mov rcx, 0xfdc1767ae2ffffff 
mov [ rsp + 0x198 ], rbx
mov [ rsp + 0x1a0 ], r9
mulx r9, rbx, rcx
adox r12, r11
adox rbx, r11
mov r11, 0x7bc65c783158aea3 
mov byte [ rsp + 0x1a8 ], r14b
mulx r14, rcx, r11
adox rcx, r9
adcx r10, r13
mov r13, 0x6cfc5fd681c52056 
mulx r11, r9, r13
adcx r12, rbp
adox r9, r14
mov rbp, 0x2341f27177344 
mulx r13, r14, rbp
adox r14, r11
setc dl
clc
adcx r10, [ rsp - 0x48 ]
adcx r12, [ rsp + 0x90 ]
setc r11b
clc
mov rbp, -0x1 
movzx r15, r15b
adcx r15, rbp
adcx rdi, [ rsp + 0x188 ]
mov r15, 0x0 
adox r13, r15
movzx r15, byte [ rsp + 0x190 ]
adc r15, 0x0
add dl, 0x7F
adox r8, rbx
mov rbx, [ rsp + 0x1a0 ]
movzx rdx, byte [ rsp + 0x1a8 ]
adcx rdx, rbp
adcx rbx, [ rsp + 0x30 ]
adox rcx, rbx
mov rdx, [ rsp + 0x70 ]
adcx rdx, [ rsp + 0x198 ]
adox r9, rdx
adcx rdi, [ rsp + 0x68 ]
adcx r15, [ rsp + 0x60 ]
adox r14, rdi
adox r13, r15
seto bl
adc bl, 0x0
movzx rbx, bl
add r11b, 0xFF
adcx r8, [ rsp + 0x88 ]
adcx rcx, [ rsp + 0x98 ]
adcx r9, [ rsp + 0xa0 ]
adcx r14, [ rsp + 0xb8 ]
adcx r13, [ rsp + 0xe0 ]
mov r11, 0xffffffffffffffff 
mov rdx, r10
mulx rdi, r10, r11
mov r15, r10
adox r15, rdi
mov rbp, r10
adox rbp, rdi
movzx rbx, bl
movzx r11, bl
adcx r11, [ rsp + 0xd8 ]
setc bl
clc
adcx r10, rdx
adcx r15, r12
adcx rbp, r8
mov r10, 0xfdc1767ae2ffffff 
mulx r8, r12, r10
adox r12, rdi
adcx r12, rcx
mov rcx, 0x7bc65c783158aea3 
mulx r10, rdi, rcx
adox rdi, r8
adcx rdi, r9
mov r9, 0x6cfc5fd681c52056 
mulx rcx, r8, r9
adox r8, r10
adcx r8, r14
mov r14, 0x2341f27177344 
mulx r9, r10, r14
adox r10, rcx
mov rdx, 0x0 
adox r9, rdx
adcx r10, r13
adcx r9, r11
movzx r13, bl
adc r13, 0x0
mov rbx, 0xffffffffffffffff 
mov r11, r15
sub r11, rbx
mov rcx, rbp
sbb rcx, rbx
mov rdx, r12
sbb rdx, rbx
mov r14, 0xfdc1767ae2ffffff 
mov rbx, rdi
sbb rbx, r14
mov r14, 0x7bc65c783158aea3 
mov [ rsp + 0x1b0 ], rbx
mov rbx, r8
sbb rbx, r14
mov r14, 0x6cfc5fd681c52056 
mov [ rsp + 0x1b8 ], rcx
mov rcx, r10
sbb rcx, r14
mov r14, 0x2341f27177344 
mov [ rsp + 0x1c0 ], rcx
mov rcx, r9
sbb rcx, r14
mov r14, 0x0 
sbb r13, r14
cmovc rbx, r8
cmovc rdx, r12
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x20 ], rbx
mov [ r13 + 0x10 ], rdx
cmovc r11, r15
mov r15, [ rsp + 0x1c0 ]
cmovc r15, r10
mov [ r13 + 0x28 ], r15
mov r12, [ rsp + 0x1b8 ]
cmovc r12, rbp
mov [ r13 + 0x8 ], r12
mov rbp, [ rsp + 0x1b0 ]
cmovc rbp, rdi
cmovc rcx, r9
mov [ r13 + 0x30 ], rcx
mov [ r13 + 0x0 ], r11
mov [ r13 + 0x18 ], rbp
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 584
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.8231
; seed 2356672490565929 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8174220 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=18, initial num_batches=31): 179614 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.021973228026649638
; number reverted permutation / tried permutation: 79831 / 95198 =83.858%
; number reverted decision / tried decision: 69155 / 94801 =72.948%
; validated in 462.618s
