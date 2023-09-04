SECTION .text
	GLOBAL fiat_p224_square
fiat_p224_square:
mov rdx, [ rsi + 0x8 ]
mulx r10, rax, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r11
test al, al
adox rax, rcx
mov rbp, rbx
adcx rbp, r11
mov rbp, 0xffffffff 
mov rdx, rbx
mulx r11, rbx, rbp
mov rcx, 0xffffffff00000000 
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rcx
mov [ rsp - 0x60 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
mulx rcx, r15, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rbp, [ rsi + 0x10 ]
adox rbp, r10
adox r15, rdi
mov rdx, 0xffffffffffffffff 
mulx rdi, r10, r14
mov r14, 0x0 
adox rcx, r14
adcx r12, rax
mov rax, -0x3 
inc rax
adox r10, r13
adcx r10, rbp
adox rbx, rdi
adcx rbx, r15
mov rdx, [ rsi + 0x0 ]
mulx rbp, r13, [ rsi + 0x8 ]
adox r11, r14
mov rdx, -0x3 
inc rdx
adox r13, r12
adcx r11, rcx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r15, rdx
mov rdx, [ rsi + 0x10 ]
mulx r12, rcx, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mulx rax, r14, r13
setc al
clc
adcx r15, rbp
adcx rcx, rdi
adox r15, r10
mov rdx, [ rsi + 0x8 ]
mulx rbp, r10, [ rsi + 0x18 ]
adcx r10, r12
adox rcx, rbx
adox r10, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, rbx, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx rbp, rdx
movzx rdi, al
adox rdi, rbp
mov rdx, [ rsi + 0x0 ]
mulx r12, rax, [ rsi + 0x10 ]
clc
adcx r8, r12
mov rdx, [ rsi + 0x10 ]
mulx r12, rbp, rdx
adcx rbp, r9
adcx rbx, r12
mov rdx, [ rsi + 0x18 ]
mulx r12, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], r9
mov [ rsp - 0x40 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, 0x0 
adcx r11, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r11
mov [ rsp - 0x30 ], rbp
mulx rbp, r11, [ rsi + 0x10 ]
clc
adcx r9, r12
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], r9
mulx r9, r12, rdx
adcx r11, rbx
adcx r12, rbp
mov rdx, r14
seto bl
mov rbp, -0x2 
inc rbp
adox rdx, r13
mov rdx, 0xffffffff00000000 
mulx rbp, r13, r14
adox r13, r15
mov r15, 0x0 
adcx r9, r15
mov r15, 0xffffffff 
mov rdx, r14
mov [ rsp - 0x20 ], r9
mulx r9, r14, r15
mov r15, 0xffffffffffffffff 
mov [ rsp - 0x18 ], r12
mov [ rsp - 0x10 ], r11
mulx r11, r12, r15
clc
adcx r12, rbp
adox r12, rcx
adcx r14, r11
adox r14, r10
mov rdx, 0x0 
adcx r9, rdx
adox r9, rdi
clc
adcx rax, r13
adcx r8, r12
movzx rcx, bl
adox rcx, rdx
mov rdx, r15
mulx r10, r15, rax
mov r10, 0xffffffff 
mov rdx, r15
mulx rbx, r15, r10
mov rdi, 0xffffffff00000000 
mulx r13, rbp, rdi
adcx r14, [ rsp - 0x30 ]
adcx r9, [ rsp - 0x40 ]
mov r11, rdx
mov r12, -0x2 
inc r12
adox r11, rax
adox rbp, r8
adcx rcx, [ rsp - 0x38 ]
mov r11, 0xffffffffffffffff 
mulx r8, rax, r11
setc dl
clc
adcx rax, r13
adcx r15, r8
adox rax, r14
adox r15, r9
mov r13, 0x0 
adcx rbx, r13
adox rbx, rcx
movzx r14, dl
adox r14, r13
xor r9, r9
adox rbp, [ rsp - 0x48 ]
adox rax, [ rsp - 0x28 ]
mov rdx, r11
mulx r13, r11, rbp
adox r15, [ rsp - 0x10 ]
adox rbx, [ rsp - 0x18 ]
adox r14, [ rsp - 0x20 ]
mulx rcx, r13, r11
mov rdx, r11
mulx r8, r11, rdi
adcx r13, r8
mulx r9, r8, r10
adcx r8, rcx
seto cl
inc r12
adox rdx, rbp
adox r11, rax
adox r13, r15
adcx r9, r12
adox r8, rbx
adox r9, r14
movzx rdx, cl
adox rdx, r12
mov rbp, r11
sub rbp, 0x1
mov rax, r13
sbb rax, rdi
mov r15, 0xffffffffffffffff 
mov rbx, r8
sbb rbx, r15
mov rcx, r9
sbb rcx, r10
sbb rdx, r12
cmovc rbp, r11
cmovc rbx, r8
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x10 ], rbx
cmovc rax, r13
mov [ rdx + 0x8 ], rax
cmovc rcx, r9
mov [ rdx + 0x0 ], rbp
mov [ rdx + 0x18 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.4347
; seed 1764722338695077 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1521724 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=83, initial num_batches=31): 95883 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06300945506543894
; number reverted permutation / tried permutation: 72923 / 94641 =77.052%
; number reverted decision / tried decision: 62725 / 95358 =65.778%
; validated in 3.464s
