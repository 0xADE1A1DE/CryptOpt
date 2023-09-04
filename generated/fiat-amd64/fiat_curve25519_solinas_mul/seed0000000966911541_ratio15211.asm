SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x0 ]
xor rdx, rdx
adox r9, rdi
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x48 ], r15
mulx r15, rdi, [ rsi + 0x0 ]
adcx rcx, r9
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x40 ], rdi
mulx rdi, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r9
mov [ rsp - 0x30 ], rbp
mulx rbp, r9, [ rax + 0x8 ]
adox r9, rdi
mov rdx, 0x0 
adox r12, rdx
adcx rbx, r9
mov rdx, [ rax + 0x0 ]
mulx r9, rdi, [ rsi + 0x10 ]
mov rdx, -0x2 
inc rdx
adox rdi, r14
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], r11
mulx r11, r14, [ rsi + 0x10 ]
mov rdx, 0x0 
mov [ rsp - 0x20 ], r14
mov r14, rdx
adcx r14, r12
adcx r11, rdx
adox r9, rcx
mov rdx, [ rsi + 0x8 ]
mulx r12, rcx, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x18 ], r12
mov [ rsp - 0x10 ], r13
mulx r13, r12, [ rsi + 0x8 ]
clc
adcx r12, rdi
adcx rcx, r9
mov rdx, [ rax + 0x10 ]
mulx r9, rdi, [ rsi + 0x10 ]
adox rdi, rbx
adcx r8, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, rbx, [ rax + 0x10 ]
adox rbx, r14
adcx rbp, rbx
mov rdx, 0x0 
mov r14, rdx
adox r14, r11
mov r11, rdx
adcx r11, r14
mov rdx, [ rax + 0x18 ]
mulx r14, rbx, [ rsi + 0x18 ]
mov rdx, 0x0 
adox r14, rdx
adcx r14, rdx
mov [ rsp - 0x8 ], rdi
xor rdi, rdi
adox r10, r15
adcx r10, [ rsp - 0x10 ]
adox r12, [ rsp - 0x28 ]
adox r13, rcx
adox r8, [ rsp - 0x30 ]
adox rbp, [ rsp - 0x20 ]
adcx r12, [ rsp - 0x48 ]
adcx r13, [ rsp - 0x38 ]
adcx r8, [ rsp - 0x18 ]
adcx r9, rbp
mov rdx, 0x26 
mulx rcx, r15, r9
adox rbx, r11
adox r14, rdi
adcx rbx, [ rsp - 0x8 ]
adcx r14, rdi
mulx rbp, r11, r14
mulx r14, r9, rbx
test al, al
adox r15, r10
adox r9, r12
mulx r12, r10, r8
adcx r10, [ rsp - 0x40 ]
adcx r12, r15
adox r11, r13
adcx rcx, r9
adcx r14, r11
adox rbp, rdi
adc rbp, 0x0
mulx r8, r13, rbp
test al, al
adox r13, r10
mov r8, rdi
adox r8, r12
mov rbx, rdi
adox rbx, rcx
mov r15, [ rsp - 0x50 ]
mov [ r15 + 0x10 ], rbx
mov r9, rdi
adox r9, r14
mov r10, rdi
cmovo r10, rdx
adcx r13, r10
mov [ r15 + 0x0 ], r13
mov [ r15 + 0x8 ], r8
mov [ r15 + 0x18 ], r9
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.5211
; seed 4032119261011944 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 640949 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=178, initial num_batches=31): 66350 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.10351837665711312
; number reverted permutation / tried permutation: 64635 / 94816 =68.169%
; number reverted decision / tried decision: 51898 / 95183 =54.524%
; validated in 0.306s
