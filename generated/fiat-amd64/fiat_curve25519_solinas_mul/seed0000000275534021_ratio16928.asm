SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rdx + 0x8 ]
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r13
mulx r13, rdi, [ rax + 0x18 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], rdi
mov [ rsp - 0x30 ], r9
mulx r9, rdi, [ rsi + 0x10 ]
xor rdx, rdx
adox rdi, rbx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x28 ], r11
mulx r11, rbx, [ rax + 0x10 ]
adcx rbp, r11
adcx r10, r13
mov rdx, [ rsi + 0x8 ]
mulx r11, r13, [ rax + 0x18 ]
mov rdx, 0x0 
adcx r11, rdx
clc
adcx rcx, rbp
adcx r12, r10
mov rbp, rdx
adcx rbp, r11
adcx r14, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x10 ]
adox r9, rcx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x20 ], r11
mulx r11, rcx, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x18 ], r13
mov [ rsp - 0x10 ], r11
mulx r11, r13, [ rax + 0x10 ]
adox r15, r12
clc
adcx rcx, rdi
adcx r10, r9
adox r13, rbp
mov rdx, [ rsi + 0x0 ]
mulx r12, rdi, [ rax + 0x0 ]
adcx r8, r15
adcx r13, [ rsp - 0x28 ]
mov rdx, 0x0 
mov rbp, rdx
adox rbp, r14
mov r14, rdx
adcx r14, rbp
mov rdx, [ rax + 0x0 ]
mulx r15, r9, [ rsi + 0x8 ]
seto dl
mov rbp, -0x2 
inc rbp
adox r9, r12
setc r12b
clc
adcx r9, [ rsp - 0x30 ]
adox r15, rcx
adcx rbx, r15
adox r10, [ rsp - 0x10 ]
mov cl, dl
mov rdx, [ rax + 0x18 ]
mulx rbp, r15, [ rsi + 0x18 ]
adox r8, [ rsp - 0x18 ]
adcx r10, [ rsp - 0x38 ]
adcx r8, [ rsp - 0x20 ]
adox r13, [ rsp - 0x40 ]
adcx r13, [ rsp - 0x48 ]
adox r15, r14
adcx r11, r15
mov rdx, 0x26 
mulx r15, r14, r11
movzx r11, cl
lea r11, [ r11 + rbp ]
mov rcx, 0x0 
movzx r12, r12b
lea r11, [ r11 + rcx ]
lea r11, [ r11 + r12 ]
adox r11, rcx
adcx r11, rcx
mulx rbp, r12, r13
xor r13, r13
adox r12, r9
mulx r9, rcx, r8
adcx rcx, rdi
adcx r9, r12
adox r14, rbx
adcx rbp, r14
mulx rbx, rdi, r11
adox rdi, r10
adox rbx, r13
adcx r15, rdi
adc rbx, 0x0
mulx r8, r10, rbx
test al, al
adox r10, rcx
mov r8, r13
adox r8, r9
mov r11, r13
adox r11, rbp
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x10 ], r11
mov [ r12 + 0x8 ], r8
mov rcx, r13
adox rcx, r15
mov r9, r13
cmovo r9, rdx
adcx r10, r9
mov [ r12 + 0x18 ], rcx
mov [ r12 + 0x0 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.6928
; seed 4405760797227309 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1030519 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=142, initial num_batches=31): 87892 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08528906308374712
; number reverted permutation / tried permutation: 79314 / 95094 =83.406%
; number reverted decision / tried decision: 59710 / 94905 =62.916%
; validated in 0.469s
