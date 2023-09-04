SECTION .text
	GLOBAL fiat_p384_square
fiat_p384_square:
sub rsp, 432
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rdx
xor rdx, rdx
adox rax, r15
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
adox r15, r10
adox r11, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, r10, [ rsi + 0x20 ]
mov rdx, 0x100000001 
mov [ rsp - 0x48 ], rbx
mov [ rsp - 0x40 ], rbp
mulx rbp, rbx, r14
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x38 ], rdi
mulx rdi, rbp, [ rsi + 0x0 ]
adox r12, rcx
adox r8, r13
mov rdx, 0xffffffff 
mulx r13, rcx, rbx
mov rdx, 0xffffffff00000000 
mov [ rsp - 0x30 ], rbp
mov [ rsp - 0x28 ], r10
mulx r10, rbp, rbx
adcx rbp, r13
mov r13, 0xffffffffffffffff 
mov rdx, r13
mov [ rsp - 0x20 ], rdi
mulx rdi, r13, rbx
mov rdx, 0xfffffffffffffffe 
mov [ rsp - 0x18 ], r8
mov [ rsp - 0x10 ], r12
mulx r12, r8, rbx
seto bl
mov rdx, -0x2 
inc rdx
adox rcx, r14
adox rbp, rax
adcx r8, r10
mov rcx, r13
adcx rcx, r12
mov r14, r13
adcx r14, rdi
adcx r13, rdi
adox r8, r15
adox rcx, r11
movzx rax, bl
lea rax, [ rax + r9 ]
adox r14, [ rsp - 0x10 ]
mov r9, 0x0 
adcx rdi, r9
adox r13, [ rsp - 0x18 ]
adox rdi, rax
mov rdx, [ rsi + 0x0 ]
mulx r11, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx r10, rbx, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mulx rax, r12, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x8 ], rdi
mulx rdi, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x0 ], rdi
mov [ rsp + 0x8 ], r13
mulx r13, rdi, [ rsi + 0x0 ]
clc
adcx r12, r13
adcx rbx, rax
mov rdx, [ rsi + 0x8 ]
mulx r13, rax, rdx
adcx r9, r10
setc dl
clc
adcx r15, rbp
mov bpl, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], r9
mulx r9, r10, [ rsi + 0x8 ]
mov rdx, 0x100000001 
mov [ rsp + 0x18 ], rbx
mov [ rsp + 0x20 ], r12
mulx r12, rbx, r15
seto r12b
mov rdx, -0x2 
inc rdx
adox rax, r11
adcx rax, r8
mov rdx, [ rsi + 0x18 ]
mulx r11, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x28 ], rdi
mov byte [ rsp + 0x30 ], bpl
mulx rbp, rdi, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x38 ], rdi
mov [ rsp + 0x40 ], rax
mulx rax, rdi, [ rsi + 0x10 ]
adox rdi, r13
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x48 ], rbx
mulx rbx, r13, [ rsi + 0x8 ]
adox r8, rax
adcx rdi, rcx
adcx r8, r14
adox r10, r11
adcx r10, [ rsp + 0x8 ]
adox r13, r9
adcx r13, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x28 ]
mulx r14, rcx, [ rsi + 0x20 ]
mov rdx, 0x0 
adox rbx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r9, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r9, rbp
mov rdx, [ rsi + 0x8 ]
mulx rax, rbp, [ rsi + 0x20 ]
movzx rdx, r12b
adcx rdx, rbx
mov r12, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], r13
mulx r13, rbx, rdx
adox rbx, r11
setc dl
clc
adcx rbp, [ rsp - 0x20 ]
adcx rax, [ rsp - 0x28 ]
mov r11b, dl
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x58 ], rax
mov [ rsp + 0x60 ], rbp
mulx rbp, rax, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov byte [ rsp + 0x68 ], r11b
mov [ rsp + 0x70 ], r12
mulx r12, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x78 ], r10
mov [ rsp + 0x80 ], rbx
mulx rbx, r10, [ rsi + 0x28 ]
adcx r11, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x88 ], r11
mov [ rsp + 0x90 ], r9
mulx r9, r11, rdx
adcx r11, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x98 ], r11
mulx r11, r12, [ rsi + 0x8 ]
adcx rcx, r9
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xa0 ], rcx
mulx rcx, r9, [ rsi + 0x10 ]
setc dl
clc
adcx r12, [ rsp - 0x40 ]
adox rax, r13
adcx r9, r11
mov r13b, dl
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0xa8 ], r9
mulx r9, r11, [ rsi + 0x10 ]
adox r11, rbp
adox r10, r9
mov rdx, [ rsi + 0x18 ]
mulx r9, rbp, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xb0 ], r12
mov [ rsp + 0xb8 ], r10
mulx r10, r12, rdx
adcx r12, rcx
mov rdx, 0xffffffff 
mov [ rsp + 0xc0 ], r12
mulx r12, rcx, [ rsp + 0x48 ]
mov rdx, 0x0 
adox rbx, rdx
adcx rbp, r10
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xc8 ], rbp
mulx rbp, r10, [ rsi + 0x18 ]
adcx r10, r9
mov rdx, 0xffffffff00000000 
mov [ rsp + 0xd0 ], r10
mulx r10, r9, [ rsp + 0x48 ]
adc rbp, 0x0
test al, al
adox r9, r12
mov r12, 0xfffffffffffffffe 
mov rdx, r12
mov [ rsp + 0xd8 ], rbp
mulx rbp, r12, [ rsp + 0x48 ]
adox r12, r10
adcx rcx, r15
adcx r9, [ rsp + 0x40 ]
adcx r12, rdi
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx r15, rcx, [ rsp + 0x48 ]
mov rdi, rcx
adox rdi, rbp
movzx r10, r13b
lea r10, [ r10 + r14 ]
mov r14, rcx
adox r14, r15
adox rcx, r15
adcx rdi, r8
seto r8b
mov r13, -0x2 
inc r13
adox r9, [ rsp + 0x38 ]
adox r12, [ rsp + 0x90 ]
adox rdi, [ rsp + 0x80 ]
adcx r14, [ rsp + 0x78 ]
adcx rcx, [ rsp + 0x50 ]
adox rax, r14
movzx rbp, r8b
lea rbp, [ rbp + r15 ]
mov rdx, [ rsi + 0x20 ]
mulx r8, r15, [ rsi + 0x28 ]
adox r11, rcx
adcx rbp, [ rsp + 0x70 ]
movzx rdx, byte [ rsp + 0x68 ]
mov r14, 0x0 
adcx rdx, r14
movzx rcx, byte [ rsp + 0x30 ]
clc
adcx rcx, r13
adcx r15, [ rsp + 0x0 ]
mov rcx, rdx
mov rdx, [ rsi + 0x28 ]
mulx r13, r14, rdx
mov rdx, 0x100000001 
mov [ rsp + 0xe0 ], r15
mov [ rsp + 0xe8 ], r10
mulx r10, r15, r9
adcx r14, r8
mov r10, 0xffffffff 
mov rdx, r15
mulx r8, r15, r10
setc r10b
clc
adcx r15, r9
adox rbp, [ rsp + 0xb8 ]
mov r15, 0xffffffff00000000 
mov [ rsp + 0xf0 ], r14
mulx r14, r9, r15
adox rbx, rcx
mov rcx, 0xfffffffffffffffe 
mov [ rsp + 0xf8 ], rbx
mulx rbx, r15, rcx
seto cl
mov [ rsp + 0x100 ], rbp
mov rbp, -0x2 
inc rbp
adox r9, r8
adox r15, r14
mov r8, 0xffffffffffffffff 
mulx rbp, r14, r8
adcx r9, r12
adcx r15, rdi
mov r12, r14
adox r12, rbx
mov rdi, r14
adox rdi, rbp
adcx r12, rax
movzx rax, r10b
lea rax, [ rax + r13 ]
adox r14, rbp
mov r13, 0x0 
adox rbp, r13
mov rdx, -0x3 
inc rdx
adox r9, [ rsp - 0x48 ]
mov r10, 0x100000001 
mov rdx, r10
mulx rbx, r10, r9
adox r15, [ rsp + 0xb0 ]
adcx rdi, r11
adcx r14, [ rsp + 0x100 ]
mov rdx, r10
mulx rbx, r10, r8
adox r12, [ rsp + 0xa8 ]
adox rdi, [ rsp + 0xc0 ]
adox r14, [ rsp + 0xc8 ]
adcx rbp, [ rsp + 0xf8 ]
movzx r11, cl
adcx r11, r13
adox rbp, [ rsp + 0xd0 ]
mov rcx, 0xffffffff00000000 
mulx r8, r13, rcx
mov rcx, 0xffffffff 
mov [ rsp + 0x108 ], rax
mov [ rsp + 0x110 ], rbp
mulx rbp, rax, rcx
clc
adcx r13, rbp
adox r11, [ rsp + 0xd8 ]
mov rbp, 0xfffffffffffffffe 
mov [ rsp + 0x118 ], r11
mulx r11, rcx, rbp
adcx rcx, r8
mov rdx, r10
adcx rdx, r11
mov r8, r10
adcx r8, rbx
adcx r10, rbx
setc r11b
clc
adcx rax, r9
adcx r13, r15
adcx rcx, r12
adcx rdx, rdi
adcx r8, r14
adcx r10, [ rsp + 0x110 ]
movzx rax, r11b
lea rax, [ rax + rbx ]
adcx rax, [ rsp + 0x118 ]
setc r9b
clc
adcx r13, [ rsp - 0x30 ]
adcx rcx, [ rsp + 0x60 ]
mov r15, 0x100000001 
xchg rdx, r15
mulx r12, rbx, r13
mov rdx, rbp
mulx r12, rbp, rbx
mov rdi, 0xffffffff 
mov rdx, rdi
mulx r14, rdi, rbx
adcx r15, [ rsp + 0x58 ]
adcx r8, [ rsp + 0x88 ]
adcx r10, [ rsp + 0x98 ]
movzx r11, r9b
mov rdx, 0x0 
adox r11, rdx
adcx rax, [ rsp + 0xa0 ]
adcx r11, [ rsp + 0xe8 ]
mov r9, -0x3 
inc r9
adox rdi, r13
mov rdi, 0xffffffff00000000 
mov rdx, rdi
mulx r13, rdi, rbx
setc r9b
clc
adcx rdi, r14
adcx rbp, r13
mov r14, 0xffffffffffffffff 
mov rdx, r14
mulx r13, r14, rbx
mov rbx, r14
adcx rbx, r12
adox rdi, rcx
adox rbp, r15
mov rcx, r14
adcx rcx, r13
adcx r14, r13
mov r12, 0x0 
adcx r13, r12
adox rbx, r8
adox rcx, r10
clc
adcx rdi, [ rsp + 0x28 ]
adcx rbp, [ rsp + 0x20 ]
mov r15, 0x100000001 
mov rdx, r15
mulx r8, r15, rdi
adcx rbx, [ rsp + 0x18 ]
adcx rcx, [ rsp + 0x10 ]
adox r14, rax
adcx r14, [ rsp + 0xe0 ]
adox r13, r11
movzx r8, r9b
adox r8, r12
adcx r13, [ rsp + 0xf0 ]
mov r10, 0xffffffff00000000 
mov rdx, r10
mulx rax, r10, r15
adcx r8, [ rsp + 0x108 ]
mov r9, 0xffffffff 
mov rdx, r9
mulx r11, r9, r15
mov r12, 0xffffffffffffffff 
mov rdx, r15
mov [ rsp + 0x120 ], r8
mulx r8, r15, r12
mov r12, -0x2 
inc r12
adox r10, r11
mov r11, 0xfffffffffffffffe 
mov [ rsp + 0x128 ], r13
mulx r13, r12, r11
adox r12, rax
mov rdx, r15
adox rdx, r13
mov rax, r15
adox rax, r8
setc r13b
clc
adcx r9, rdi
adox r15, r8
mov r9, 0x0 
adox r8, r9
adcx r10, rbp
adcx r12, rbx
adcx rdx, rcx
adcx rax, r14
adcx r15, [ rsp + 0x128 ]
adcx r8, [ rsp + 0x120 ]
movzx rdi, r13b
adc rdi, 0x0
mov rbp, 0xffffffff 
mov rbx, r10
sub rbx, rbp
mov rcx, 0xffffffff00000000 
mov r14, r12
sbb r14, rcx
mov r13, rdx
sbb r13, r11
mov r9, 0xffffffffffffffff 
mov r11, rax
sbb r11, r9
mov rcx, r15
sbb rcx, r9
mov rbp, r8
sbb rbp, r9
mov r9, 0x0 
sbb rdi, r9
cmovc rbx, r10
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x0 ], rbx
cmovc r13, rdx
mov [ rdi + 0x10 ], r13
cmovc rcx, r15
mov [ rdi + 0x20 ], rcx
cmovc r14, r12
cmovc r11, rax
cmovc rbp, r8
mov [ rdi + 0x8 ], r14
mov [ rdi + 0x28 ], rbp
mov [ rdi + 0x18 ], r11
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 432
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.6131
; seed 3248766233887901 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 4155918 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=40, initial num_batches=31): 122759 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.02953835951527436
; number reverted permutation / tried permutation: 73779 / 95141 =77.547%
; number reverted decision / tried decision: 67544 / 94858 =71.205%
; validated in 37.278s
