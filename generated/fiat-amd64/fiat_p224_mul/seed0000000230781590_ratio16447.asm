SECTION .text
	GLOBAL fiat_p224_mul
fiat_p224_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
test al, al
adox rcx, rbx
adox r10, r8
mov rdx, [ rax + 0x10 ]
mulx rbx, r8, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, r9
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x48 ], rbp
mulx rbp, rdi, [ rsi + 0x0 ]
mov rdx, 0xffffffffffffffff 
mov [ rsp - 0x40 ], r12
mov [ rsp - 0x38 ], rbx
mulx rbx, r12, r15
adox rdi, r11
mov r11, 0xffffffff00000000 
mov rdx, r15
mov [ rsp - 0x30 ], r8
mulx r8, r15, r11
mov r11, rdx
adcx r11, r9
adcx r15, rcx
seto r11b
mov r9, -0x2 
inc r9
adox r12, r8
adcx r12, r10
mov rcx, 0xffffffff 
mulx r8, r10, rcx
adox r10, rbx
mov rdx, 0x0 
adox r8, rdx
movzx rbx, r11b
lea rbx, [ rbx + rbp ]
mov rdx, [ rsi + 0x8 ]
mulx r11, rbp, [ rax + 0x0 ]
inc r9
adox rbp, r15
adcx r10, rdi
adcx r8, rbx
mov rdx, [ rax + 0x18 ]
mulx r15, rdi, [ rsi + 0x8 ]
mov rdx, 0xffffffffffffffff 
mulx r9, rbx, rbp
setc r9b
clc
adcx r13, r11
adcx r14, [ rsp - 0x30 ]
adcx rdi, [ rsp - 0x38 ]
mov r11, 0x0 
adcx r15, r11
adox r13, r12
adox r14, r10
adox rdi, r8
mov r12, 0xffffffff00000000 
mov rdx, rbx
mulx r10, rbx, r12
movzx r8, r9b
adox r8, r15
mov r9, 0xffffffffffffffff 
mulx r11, r15, r9
clc
adcx r15, r10
mulx r12, r10, rcx
adcx r10, r11
mov r11, 0x0 
adcx r12, r11
clc
adcx rdx, rbp
adcx rbx, r13
mov rdx, [ rax + 0x0 ]
mulx r13, rbp, [ rsi + 0x10 ]
adcx r15, r14
adcx r10, rdi
adcx r12, r8
mov rdx, [ rax + 0x8 ]
mulx rdi, r14, [ rsi + 0x10 ]
setc dl
clc
adcx r14, r13
movzx r8, dl
adox r8, r11
mov r13, -0x3 
inc r13
adox rbp, rbx
mov rdx, r9
mulx rbx, r9, rbp
adox r14, r15
mov rdx, [ rsi + 0x10 ]
mulx r15, rbx, [ rax + 0x10 ]
mov rdx, 0xffffffff00000000 
mulx r13, r11, r9
adcx rbx, rdi
adox rbx, r10
mov rdx, [ rsi + 0x10 ]
mulx rdi, r10, [ rax + 0x18 ]
adcx r10, r15
mov rdx, 0x0 
adcx rdi, rdx
adox r10, r12
adox rdi, r8
mov r12, 0xffffffffffffffff 
mov rdx, r9
mulx r8, r9, r12
clc
adcx r9, r13
mulx r13, r15, rcx
adcx r15, r8
mov r8, 0x0 
adcx r13, r8
clc
adcx rdx, rbp
adcx r11, r14
adcx r9, rbx
adcx r15, r10
mov rdx, [ rax + 0x8 ]
mulx r14, rbp, [ rsi + 0x18 ]
adcx r13, rdi
setc dl
clc
adcx rbp, [ rsp - 0x40 ]
mov bl, dl
mov rdx, [ rsi + 0x18 ]
mulx rdi, r10, [ rax + 0x10 ]
adcx r10, r14
movzx rdx, bl
adox rdx, r8
mov r14, -0x3 
inc r14
adox r11, [ rsp - 0x48 ]
mov rbx, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r8, [ rax + 0x18 ]
adcx r8, rdi
mov rdx, 0x0 
adcx r14, rdx
adox rbp, r9
adox r10, r15
adox r8, r13
adox r14, rbx
mov rdx, r12
mulx r9, r12, r11
mov r9, r12
clc
adcx r9, r11
mulx r15, r9, r12
mov r13, 0xffffffff00000000 
mov rdx, r12
mulx rdi, r12, r13
seto bl
mov r11, -0x2 
inc r11
adox r9, rdi
mulx r11, rdi, rcx
adcx r12, rbp
adox rdi, r15
adcx r9, r10
adcx rdi, r8
mov rbp, 0x0 
adox r11, rbp
adcx r11, r14
movzx r10, bl
adc r10, 0x0
mov r8, r12
sub r8, 0x1
mov rbx, r9
sbb rbx, r13
mov r14, 0xffffffffffffffff 
mov rdx, rdi
sbb rdx, r14
mov r15, r11
sbb r15, rcx
sbb r10, rbp
cmovc r15, r11
cmovc rdx, rdi
cmovc r8, r12
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x18 ], r15
cmovc rbx, r9
mov [ r10 + 0x8 ], rbx
mov [ r10 + 0x10 ], rdx
mov [ r10 + 0x0 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.6447
; seed 1809231306516220 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1282851 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=99, initial num_batches=31): 86677 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0675659137343308
; number reverted permutation / tried permutation: 75254 / 95469 =78.826%
; number reverted decision / tried decision: 65262 / 94530 =69.038%
; validated in 3.775s
