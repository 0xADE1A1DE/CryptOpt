SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
sub rsp, 160
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x48 ], r13
mov [ rsp - 0x40 ], rbx
mulx rbx, r13, r10
mov rbx, 0xffffffff00000000 
mov rdx, rbx
mov [ rsp - 0x38 ], r9
mulx r9, rbx, r13
mov rdx, 0xffffffff 
mov [ rsp - 0x30 ], r14
mov [ rsp - 0x28 ], r8
mulx r8, r14, r13
test al, al
adox rbp, r11
adox r15, r12
mov rdx, [ rax + 0x10 ]
mulx r12, r11, [ rsi + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x20 ], r12
mov [ rsp - 0x18 ], r11
mulx r11, r12, r13
adcx r12, r9
adcx r14, r11
mov rdx, [ rax + 0x18 ]
mulx r11, r9, [ rsi + 0x0 ]
adox r9, rdi
mov rdx, 0x0 
adox r11, rdx
mov rdi, -0x3 
inc rdi
adox r13, r10
adox rbx, rbp
mov rdx, [ rsi + 0x8 ]
mulx r10, r13, [ rax + 0x0 ]
mov rdx, 0x0 
adcx r8, rdx
clc
adcx r13, rbx
adox r12, r15
mov rbp, 0xffffffffffffffff 
mov rdx, r13
mulx r15, r13, rbp
adox r14, r9
adox r8, r11
seto r15b
inc rdi
adox rcx, r10
mov r9, rdx
mov rdx, [ rax + 0x10 ]
mulx rbx, r11, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mulx rdi, r10, [ rsi + 0x8 ]
adox r11, [ rsp - 0x28 ]
adox r10, rbx
adcx rcx, r12
adcx r11, r14
mov rdx, 0x0 
adox rdi, rdx
mov rdx, [ rax + 0x8 ]
mulx r14, r12, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox r12, [ rsp - 0x30 ]
adcx r10, r8
adox r14, [ rsp - 0x18 ]
mov r8, [ rsp - 0x20 ]
adox r8, [ rsp - 0x38 ]
movzx rbx, r15b
adcx rbx, rdi
mov rdx, r13
mulx r15, r13, rbp
mov rdi, 0xffffffff00000000 
mov [ rsp - 0x10 ], r8
mulx r8, rbp, rdi
setc dil
clc
adcx r13, r8
mov r8, 0xffffffff 
mov byte [ rsp - 0x8 ], dil
mov [ rsp + 0x0 ], r14
mulx r14, rdi, r8
adcx rdi, r15
mov r15, 0x0 
adcx r14, r15
mov r15, [ rsp - 0x40 ]
mov r8, 0x0 
adox r15, r8
test al, al
adox rdx, r9
adox rbp, rcx
adcx rbp, [ rsp - 0x48 ]
adox r13, r11
adox rdi, r10
adcx r12, r13
adox r14, rbx
adcx rdi, [ rsp + 0x0 ]
mov rdx, 0xffffffffffffffff 
mulx rcx, r9, rbp
movzx rcx, byte [ rsp - 0x8 ]
adox rcx, r8
adcx r14, [ rsp - 0x10 ]
mov r11, 0xffffffff00000000 
mov rdx, r11
mulx r10, r11, r9
adcx r15, rcx
mov rdx, [ rsi + 0x18 ]
mulx r13, rbx, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, -0x2 
inc rdx
adox rcx, r13
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x8 ], rcx
mulx rcx, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0x10 ], rbx
mov [ rsp + 0x18 ], r15
mulx r15, rbx, [ rsi + 0x18 ]
adox r13, r8
adox rbx, rcx
mov rdx, r9
seto r8b
mov rcx, -0x2 
inc rcx
adox rdx, rbp
adox r11, r12
mov rdx, 0xffffffffffffffff 
mulx r12, rbp, r9
movzx rcx, r8b
lea rcx, [ rcx + r15 ]
mov r15, 0xffffffff 
mov rdx, r9
mulx r8, r9, r15
setc dl
clc
adcx rbp, r10
adox rbp, rdi
adcx r9, r12
adox r9, r14
mov rdi, 0x0 
adcx r8, rdi
adox r8, [ rsp + 0x18 ]
movzx r14, dl
adox r14, rdi
test al, al
adox r11, [ rsp + 0x10 ]
mov r10, 0xffffffffffffffff 
mov rdx, r10
mulx r12, r10, r11
mov r12, r10
adcx r12, r11
adox rbp, [ rsp + 0x8 ]
adox r13, r9
adox rbx, r8
mov r12, 0xffffffff00000000 
mov rdx, r12
mulx r9, r12, r10
adcx r12, rbp
adox rcx, r14
mov r8, 0xffffffffffffffff 
mov rdx, r10
mulx r14, r10, r8
mulx rbp, r11, r15
seto dl
mov r15, -0x3 
inc r15
adox r10, r9
adcx r10, r13
adox r11, r14
adox rbp, rdi
adcx r11, rbx
adcx rbp, rcx
movzx r13, dl
adc r13, 0x0
mov rbx, r12
sub rbx, 0x1
mov r9, 0xffffffff00000000 
mov rdx, r10
sbb rdx, r9
mov rcx, r11
sbb rcx, r8
mov r14, 0xffffffff 
mov rdi, rbp
sbb rdi, r14
mov r15, 0x0 
sbb r13, r15
cmovc rcx, r11
cmovc rdx, r10
cmovc rbx, r12
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x8 ], rdx
mov [ r13 + 0x0 ], rbx
cmovc rdi, rbp
mov [ r13 + 0x10 ], rcx
mov [ r13 + 0x18 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 160
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.5959
; seed 4077685764580828 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1125974 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=107, initial num_batches=31): 79335 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07045899816514413
; number reverted permutation / tried permutation: 72314 / 94968 =76.146%
; number reverted decision / tried decision: 64529 / 95031 =67.903%
; validated in 2.058s
