SECTION .text
	GLOBAL fiat_p256_mul
fiat_p256_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
test al, al
adox r10, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mulx r15, rbx, [ rax + 0x10 ]
adox rbx, r11
mov rdx, 0xffffffff 
mov [ rsp - 0x50 ], rdi
mulx rdi, r11, r9
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x48 ], r14
mov [ rsp - 0x40 ], r13
mulx r13, r14, r9
adcx r11, r13
mov r13, 0x0 
adcx rdi, r13
adox rcx, r15
adox r8, r13
test al, al
adox r14, r9
adox r11, r10
adox rdi, rbx
mov rdx, [ rsi + 0x8 ]
mulx r10, r14, [ rax + 0x0 ]
adcx r14, r11
mov rdx, 0xffffffff00000001 
mulx rbx, r15, r9
adox r15, rcx
adox rbx, r8
seto r9b
mov rcx, -0x3 
inc rcx
adox rbp, r10
adcx rbp, rdi
mov rdx, [ rax + 0x10 ]
mulx r11, r8, [ rsi + 0x8 ]
adox r8, r12
mov rdx, [ rax + 0x18 ]
mulx rdi, r12, [ rsi + 0x8 ]
adox r12, r11
adox rdi, r13
adcx r8, r15
mov rdx, 0xffffffffffffffff 
mulx r15, r10, r14
adcx r12, rbx
mov rbx, -0x3 
inc rbx
adox r10, r14
mov rdx, [ rax + 0x8 ]
mulx rbx, r10, [ rsi + 0x10 ]
mov rdx, 0xffffffff 
mulx r13, r11, r14
movzx rcx, r9b
adcx rcx, rdi
setc r9b
clc
adcx r11, r15
adox r11, rbp
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbp, [ rax + 0x0 ]
mov rdx, 0x0 
adcx r13, rdx
clc
adcx rbp, r11
setc r15b
clc
adcx r10, rdi
mov rdx, [ rsi + 0x10 ]
mulx rdi, r11, [ rax + 0x10 ]
adcx r11, rbx
adox r13, r8
mov rdx, 0xffffffff00000001 
mulx rbx, r8, r14
adox r8, r12
adox rbx, rcx
movzx r14, r9b
mov r12, 0x0 
adox r14, r12
mov rdx, [ rsi + 0x10 ]
mulx rcx, r9, [ rax + 0x18 ]
adcx r9, rdi
adc rcx, 0x0
mov rdx, 0xffffffff 
mulx r12, rdi, rbp
add r15b, 0x7F
adox r13, r10
mov r15, 0xffffffffffffffff 
mov rdx, rbp
mulx r10, rbp, r15
adox r11, r8
adcx rdi, r10
mov r8, 0x0 
adcx r12, r8
clc
adcx rbp, rdx
adox r9, rbx
mov rbp, 0xffffffff00000001 
mulx r10, rbx, rbp
adox rcx, r14
mov rdx, [ rsi + 0x18 ]
mulx r8, r14, [ rax + 0x8 ]
adcx rdi, r13
mov rdx, [ rax + 0x0 ]
mulx r15, r13, [ rsi + 0x18 ]
adcx r12, r11
adcx rbx, r9
adcx r10, rcx
seto dl
mov r11, -0x2 
inc r11
adox r14, r15
movzx r9, dl
mov rcx, 0x0 
adcx r9, rcx
mov rdx, [ rax + 0x10 ]
mulx rcx, r15, [ rsi + 0x18 ]
adox r15, r8
adox rcx, [ rsp - 0x40 ]
clc
adcx r13, rdi
adcx r14, r12
adcx r15, rbx
mov rdx, 0xffffffffffffffff 
mulx rdi, r8, r13
adcx rcx, r10
mov r12, [ rsp - 0x48 ]
mov rbx, 0x0 
adox r12, rbx
mov r10, 0xffffffff 
mov rdx, r13
mulx rbx, r13, r10
inc r11
adox r13, rdi
adcx r12, r9
setc r9b
clc
adcx r8, rdx
adcx r13, r14
mulx r14, r8, rbp
adox rbx, r11
adcx rbx, r15
adcx r8, rcx
adcx r14, r12
movzx rdx, r9b
adc rdx, 0x0
mov r15, 0xffffffffffffffff 
mov rdi, r13
sub rdi, r15
mov rcx, rbx
sbb rcx, r10
mov r9, r8
sbb r9, r11
mov r12, r14
sbb r12, rbp
sbb rdx, r11
cmovc rdi, r13
cmovc r9, r8
cmovc rcx, rbx
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x8 ], rcx
mov [ rdx + 0x10 ], r9
cmovc r12, r14
mov [ rdx + 0x18 ], r12
mov [ rdx + 0x0 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.6285
; seed 2003279818584281 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1360182 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=77, initial num_batches=31): 93657 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06885622659320591
; number reverted permutation / tried permutation: 73556 / 95214 =77.253%
; number reverted decision / tried decision: 61401 / 94785 =64.779%
; validated in 2.436s
