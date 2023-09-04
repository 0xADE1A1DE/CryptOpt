SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 344
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x8 ]
test al, al
adox r11, r9
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, r9, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], rax
mulx rax, r15, rdx
adox r15, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], r15
mulx r15, rcx, [ rsi + 0x18 ]
adox rcx, rax
adox rbx, r15
adox r9, rbp
mov rdx, [ rsi + 0x8 ]
mulx rax, rbp, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x30 ], r9
mulx r9, r15, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x28 ], rbx
mov [ rsp - 0x20 ], rcx
mulx rcx, rbx, [ rsi + 0x20 ]
adcx rbp, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], rbp
mulx rbp, r10, [ rsi + 0x20 ]
mov rdx, 0x0 
adox r14, rdx
mov [ rsp - 0x10 ], r14
mov r14, -0x3 
inc r14
adox rbx, rdi
mov rdx, [ rsi + 0x20 ]
mulx r14, rdi, [ rsi + 0x18 ]
adox r10, rcx
adox rdi, rbp
adcx r15, rax
mov rdx, [ rsi + 0x20 ]
mulx rcx, rax, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x8 ], rdi
mulx rdi, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x0 ], r10
mov [ rsp + 0x8 ], rbx
mulx rbx, r10, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x10 ], r10
mov [ rsp + 0x18 ], r15
mulx r15, r10, [ rsi + 0x20 ]
setc dl
clc
adcx rbp, rbx
adox rax, r14
mov r14b, dl
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x20 ], rbp
mulx rbp, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x28 ], rax
mov [ rsp + 0x30 ], r11
mulx r11, rax, rdx
adox r10, rcx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x38 ], r10
mulx r10, rcx, [ rsi + 0x28 ]
mov rdx, 0x0 
adox r15, rdx
adcx rbx, rdi
adcx rcx, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbp, rdi, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x40 ], rcx
mov [ rsp + 0x48 ], rbx
mulx rbx, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], r15
mov [ rsp + 0x58 ], r8
mulx r8, r15, [ rsi + 0x8 ]
mov rdx, 0x0 
dec rdx
movzx r14, r14b
adox r14, rdx
adox r9, rax
mov rdx, [ rsi + 0x8 ]
mulx rax, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x60 ], r9
mov [ rsp + 0x68 ], r10
mulx r10, r9, rdx
setc dl
clc
adcx r9, rbp
adcx r15, r10
adcx r14, r8
adcx r12, rax
adox rcx, r11
mov r11b, dl
mov rdx, [ rsi + 0x0 ]
mulx r8, rbp, rdx
mov rdx, [ rsi + 0x28 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x70 ], rcx
mov byte [ rsp + 0x78 ], r11b
mulx r11, rcx, [ rsi + 0x8 ]
mov rdx, 0x100000001 
mov [ rsp + 0x80 ], r12
mov [ rsp + 0x88 ], r14
mulx r14, r12, rbp
adcx rcx, r13
adox rax, rbx
mov r14, 0xffffffffffffffff 
mov rdx, r12
mulx r13, r12, r14
mov rbx, 0xfffffffffffffffe 
mov [ rsp + 0x90 ], rax
mulx rax, r14, rbx
mov rbx, 0x0 
adox r10, rbx
mov rbx, 0xffffffff00000000 
mov [ rsp + 0x98 ], r10
mov [ rsp + 0xa0 ], rcx
mulx rcx, r10, rbx
adc r11, 0x0
mov rbx, 0xffffffff 
mov [ rsp + 0xa8 ], r11
mov [ rsp + 0xb0 ], r15
mulx r15, r11, rbx
test al, al
adox r11, rbp
adcx r10, r15
adcx r14, rcx
mov r11, r12
adcx r11, rax
mov rdx, [ rsi + 0x8 ]
mulx rax, rbp, [ rsi + 0x0 ]
mov rdx, r12
adcx rdx, r13
adcx r12, r13
mov rcx, 0x0 
adcx r13, rcx
mov r15, rdx
mov rdx, [ rsi + 0x0 ]
mulx rbx, rcx, [ rsi + 0x10 ]
clc
adcx rbp, r8
adcx rcx, rax
adox r10, rbp
adox r14, rcx
mov rdx, [ rsi + 0x18 ]
mulx rax, r8, [ rsi + 0x0 ]
adcx r8, rbx
adox r11, r8
mov rdx, [ rsi + 0x0 ]
mulx rbp, rbx, [ rsi + 0x20 ]
adcx rbx, rax
mov rdx, [ rsi + 0x0 ]
mulx rax, rcx, [ rsi + 0x28 ]
adcx rcx, rbp
adox r15, rbx
adox r12, rcx
mov rdx, 0x0 
adcx rax, rdx
clc
adcx rdi, r10
adcx r9, r14
adcx r11, [ rsp + 0xb0 ]
adox r13, rax
adcx r15, [ rsp + 0x88 ]
adcx r12, [ rsp + 0x80 ]
adcx r13, [ rsp + 0xa0 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, r10, rdx
mov rdx, [ rsi + 0x28 ]
mulx rbp, r8, [ rsi + 0x20 ]
mov rdx, 0x100000001 
mulx rcx, rbx, rdi
setc cl
movzx rax, byte [ rsp + 0x78 ]
clc
mov rdx, -0x1 
adcx rax, rdx
adcx r8, [ rsp + 0x68 ]
adcx r10, rbp
movzx rcx, cl
movzx rax, cl
adox rax, [ rsp + 0xa8 ]
mov rcx, 0xffffffff00000000 
mov rdx, rbx
mulx rbp, rbx, rcx
mov rcx, 0xffffffff 
mov [ rsp + 0xb8 ], r10
mov [ rsp + 0xc0 ], r8
mulx r8, r10, rcx
mov rcx, 0x0 
adcx r14, rcx
clc
adcx rbx, r8
seto r8b
mov [ rsp + 0xc8 ], r14
mov r14, -0x3 
inc r14
adox r10, rdi
adox rbx, r9
mov r10, 0xfffffffffffffffe 
mulx r9, rdi, r10
adcx rdi, rbp
mov rbp, 0xffffffffffffffff 
mulx r14, rcx, rbp
adox rdi, r11
mov r11, rcx
adcx r11, r9
adox r11, r15
mov r15, rcx
adcx r15, r14
adox r15, r12
adcx rcx, r14
adox rcx, r13
mov r12, 0x0 
adcx r14, r12
adox r14, rax
movzx r13, r8b
adox r13, r12
test al, al
adox rbx, [ rsp + 0x58 ]
adox rdi, [ rsp + 0x30 ]
adox r11, [ rsp - 0x38 ]
adox r15, [ rsp - 0x20 ]
adox rcx, [ rsp - 0x28 ]
adox r14, [ rsp - 0x30 ]
mov rdx, 0x100000001 
mulx rax, r8, rbx
mov rax, 0xffffffff 
mov rdx, r8
mulx r9, r8, rax
mulx rax, r12, rbp
adcx r8, rbx
mov r8, 0xffffffff00000000 
mulx r10, rbx, r8
adox r13, [ rsp - 0x10 ]
seto r8b
mov rbp, -0x2 
inc rbp
adox rbx, r9
adcx rbx, rdi
mov rdi, 0xfffffffffffffffe 
mulx rbp, r9, rdi
adox r9, r10
adcx r9, r11
mov r11, r12
adox r11, rbp
adcx r11, r15
mov r15, r12
adox r15, rax
adcx r15, rcx
adox r12, rax
mov rcx, 0x0 
adox rax, rcx
adcx r12, r14
mov r14, -0x3 
inc r14
adox rbx, [ rsp - 0x40 ]
mov rdx, 0x100000001 
mulx rbp, r10, rbx
adcx rax, r13
movzx rbp, r8b
adcx rbp, rcx
adox r9, [ rsp - 0x18 ]
adox r11, [ rsp + 0x18 ]
adox r15, [ rsp + 0x60 ]
adox r12, [ rsp + 0x70 ]
mov r8, 0xffffffff00000000 
mov rdx, r10
mulx r13, r10, r8
mov rcx, 0xffffffff 
mulx r8, r14, rcx
adox rax, [ rsp + 0x90 ]
clc
adcx r14, rbx
adox rbp, [ rsp + 0x98 ]
seto r14b
mov rbx, -0x2 
inc rbx
adox r10, r8
adcx r10, r9
mulx r8, r9, rdi
adox r9, r13
adcx r9, r11
mov r11, 0xffffffffffffffff 
mulx rbx, r13, r11
mov rdx, r13
adox rdx, r8
mov r8, r13
adox r8, rbx
adcx rdx, r15
adcx r8, r12
adox r13, rbx
adcx r13, rax
mov r15, 0x0 
adox rbx, r15
adcx rbx, rbp
movzx r12, r14b
adc r12, 0x0
xor rax, rax
adox r10, [ rsp - 0x48 ]
adox r9, [ rsp + 0x8 ]
mov r15, 0x100000001 
xchg rdx, r15
mulx rbp, r14, r10
adox r15, [ rsp + 0x0 ]
adox r8, [ rsp - 0x8 ]
adox r13, [ rsp + 0x28 ]
mov rdx, r14
mulx r14, rbp, rcx
adcx rbp, r10
adox rbx, [ rsp + 0x38 ]
adox r12, [ rsp + 0x50 ]
mov rbp, 0xffffffff00000000 
mulx rax, r10, rbp
seto cl
mov rbp, -0x2 
inc rbp
adox r10, r14
mulx rbp, r14, r11
adcx r10, r9
mulx r11, r9, rdi
adox r9, rax
mov rdx, r14
adox rdx, r11
mov rax, r14
adox rax, rbp
adcx r9, r15
adox r14, rbp
adcx rdx, r8
adcx rax, r13
mov r15, 0x0 
adox rbp, r15
adcx r14, rbx
adcx rbp, r12
movzx r8, cl
adc r8, 0x0
xor r13, r13
adox r10, [ rsp + 0x10 ]
mov r15, 0x100000001 
xchg rdx, r15
mulx rcx, rbx, r10
mov rcx, 0xffffffff00000000 
mov rdx, rbx
mulx r12, rbx, rcx
mulx r13, r11, rdi
adox r9, [ rsp + 0x20 ]
adox r15, [ rsp + 0x48 ]
adox rax, [ rsp + 0x40 ]
adox r14, [ rsp + 0xc0 ]
mov rcx, 0xffffffff 
mov [ rsp + 0xd0 ], r14
mulx r14, rdi, rcx
adcx rdi, r10
adox rbp, [ rsp + 0xb8 ]
adox r8, [ rsp + 0xc8 ]
seto dil
mov r10, -0x2 
inc r10
adox rbx, r14
adox r11, r12
mov r12, 0xffffffffffffffff 
mulx r10, r14, r12
adcx rbx, r9
adcx r11, r15
mov rdx, r14
adox rdx, r13
mov r13, r14
adox r13, r10
adox r14, r10
adcx rdx, rax
adcx r13, [ rsp + 0xd0 ]
mov r9, 0x0 
adox r10, r9
adcx r14, rbp
adcx r10, r8
movzx r15, dil
adc r15, 0x0
mov rax, rbx
sub rax, rcx
mov rbp, 0xffffffff00000000 
mov rdi, r11
sbb rdi, rbp
mov r8, 0xfffffffffffffffe 
mov r9, rdx
sbb r9, r8
mov rcx, r13
sbb rcx, r12
mov rbp, r14
sbb rbp, r12
mov r8, r10
sbb r8, r12
mov r12, 0x0 
sbb r15, r12
cmovc rbp, r14
cmovc r9, rdx
cmovc rdi, r11
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x20 ], rbp
cmovc r8, r10
mov [ r15 + 0x28 ], r8
mov [ r15 + 0x10 ], r9
cmovc rcx, r13
mov [ r15 + 0x18 ], rcx
cmovc rax, rbx
mov [ r15 + 0x8 ], rdi
mov [ r15 + 0x0 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 344
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.5061
; seed 1388536562688382 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6045396 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=35, initial num_batches=31): 179890 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0297565287699929
; number reverted permutation / tried permutation: 79512 / 94849 =83.830%
; number reverted decision / tried decision: 67831 / 95150 =71.288%
; validated in 61.474s
