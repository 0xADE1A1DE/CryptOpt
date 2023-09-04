SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx rcx, r11, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
xor rdx, rdx
adox r12, rcx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mulx r14, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rbx
mulx rbx, rbp, [ rsi + 0x18 ]
adox rcx, r13
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x38 ], rdi
mulx rdi, r13, [ rsi + 0x8 ]
adox rbp, r14
adcx r13, r10
mov rdx, 0xffffffffffffffff 
mulx r14, r10, rax
mov rdx, 0x0 
adox rbx, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], r15
mov [ rsp - 0x28 ], rbx
mulx rbx, r15, [ rsi + 0x0 ]
adcx r8, rdi
adcx r15, r9
mov rdx, 0xffffffff 
mulx rdi, r9, rax
mov rdx, -0x2 
inc rdx
adox r9, r14
mov r14, 0x0 
adcx rbx, r14
adox rdi, r14
mov r14, 0xffffffff00000001 
mov rdx, rax
mov [ rsp - 0x20 ], rbp
mulx rbp, rax, r14
add r10, rdx
adcx r9, r13
mov r10, -0x2 
inc r10
adox r11, r9
adcx rdi, r8
adcx rax, r15
mov rdx, r11
mulx r13, r11, r14
adcx rbp, rbx
adox r12, rdi
adox rcx, rax
adox rbp, [ rsp - 0x20 ]
setc r8b
movzx r8, r8b
adox r8, [ rsp - 0x28 ]
mov r15, 0xffffffffffffffff 
mulx r9, rbx, r15
clc
adcx rbx, rdx
mov rbx, 0xffffffff 
mulx rax, rdi, rbx
seto dl
inc r10
adox rdi, r9
adcx rdi, r12
adox rax, r10
adcx rax, rcx
adcx r11, rbp
adcx r13, r8
movzx r12, dl
adc r12, 0x0
mov rdx, [ rsi + 0x10 ]
mulx rbp, rcx, [ rsi + 0x0 ]
add rbp, [ rsp - 0x30 ]
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, [ rsi + 0x10 ]
mov rdx, -0x3 
inc rdx
adox rcx, rdi
mov rdi, [ rsp - 0x38 ]
adcx rdi, [ rsp - 0x40 ]
adox rbp, rax
adox rdi, r11
mov rdx, rcx
mulx rax, rcx, rbx
adcx r8, [ rsp - 0x48 ]
adox r8, r13
adcx r9, r10
adox r9, r12
mulx r13, r11, r15
clc
adcx rcx, r13
seto r12b
mov r13, -0x3 
inc r13
adox r11, rdx
adox rcx, rbp
adcx rax, r10
mulx rbp, r11, r14
mov rdx, [ rsi + 0x0 ]
mulx r13, r10, [ rsi + 0x18 ]
adox rax, rdi
adox r11, r8
mov rdx, [ rsi + 0x18 ]
mulx r8, rdi, [ rsi + 0x10 ]
adox rbp, r9
mov rdx, [ rsi + 0x18 ]
mulx r14, r9, [ rsi + 0x8 ]
clc
adcx r9, r13
adcx rdi, r14
movzx rdx, r12b
mov r13, 0x0 
adox rdx, r13
mov r12, -0x3 
inc r12
adox r10, rcx
mov rcx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r13, r14, rdx
adox r9, rax
adox rdi, r11
adcx r14, r8
mov rdx, 0x0 
adcx r13, rdx
adox r14, rbp
adox r13, rcx
mov rdx, r10
mulx rax, r10, rbx
mulx r8, r11, r15
clc
adcx r11, rdx
seto r11b
inc r12
adox r10, r8
mov rbp, 0x0 
adox rax, rbp
adcx r10, r9
mov rcx, 0xffffffff00000001 
mulx r8, r9, rcx
adcx rax, rdi
adcx r9, r14
adcx r8, r13
movzx rdx, r11b
adc rdx, 0x0
mov rdi, r10
sub rdi, r15
mov r14, rax
sbb r14, rbx
mov r11, r9
sbb r11, rbp
mov r13, r8
sbb r13, rcx
sbb rdx, rbp
cmovc rdi, r10
cmovc r11, r9
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x0 ], rdi
cmovc r14, rax
cmovc r13, r8
mov [ rdx + 0x18 ], r13
mov [ rdx + 0x10 ], r11
mov [ rdx + 0x8 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.5522
; seed 3978503067403585 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1788455 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=83, initial num_batches=31): 121123 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06772493576858238
; number reverted permutation / tried permutation: 74911 / 95005 =78.850%
; number reverted decision / tried decision: 60471 / 94994 =63.658%
; validated in 2.971s
