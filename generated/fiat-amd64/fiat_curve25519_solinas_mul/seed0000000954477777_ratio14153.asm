SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r15
mov [ rsp - 0x40 ], rbp
mulx rbp, r15, [ rax + 0x0 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x38 ], r13
mov [ rsp - 0x30 ], r10
mulx r10, r13, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x28 ], r13
mov [ rsp - 0x20 ], r9
mulx r9, r13, [ rax + 0x8 ]
xor rdx, rdx
adox r15, r11
adox rcx, rdi
adcx r13, r15
adox r14, rdx
adcx rbp, rcx
mov r11, rdx
adcx r11, r14
mov rdx, [ rsi + 0x10 ]
mulx r15, rdi, [ rax + 0x0 ]
adc r12, 0x0
mov rdx, [ rax + 0x8 ]
mulx r14, rcx, [ rsi + 0x8 ]
test al, al
adox rdi, rbx
adcx rcx, rdi
adox r15, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, rbx, [ rax + 0x10 ]
adcx rbx, r15
mov rdx, [ rsi + 0x10 ]
mulx r15, rdi, [ rax + 0x10 ]
adox rdi, rbp
adcx r9, rdi
mov rdx, [ rsi + 0x18 ]
mulx rdi, rbp, [ rax + 0x10 ]
adox rbp, r11
mov rdx, 0x0 
mov r11, rdx
adox r11, r12
adcx r8, rbp
mov rdx, [ rsi + 0x0 ]
mulx rbp, r12, [ rax + 0x0 ]
mov rdx, 0x0 
mov [ rsp - 0x18 ], r12
mov r12, rdx
adcx r12, r11
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x10 ], rdi
mulx rdi, r11, [ rax + 0x0 ]
mov rdx, 0x0 
adox r10, rdx
adcx r10, rdx
mov [ rsp - 0x8 ], r15
xor r15, r15
adox r11, rbp
adox rdi, rcx
adcx r11, [ rsp - 0x20 ]
adcx rdi, [ rsp - 0x30 ]
adox r14, rbx
adox r9, [ rsp - 0x38 ]
adox r8, [ rsp - 0x40 ]
adox r12, [ rsp - 0x28 ]
adox r10, r15
adcx r14, [ rsp - 0x48 ]
adcx r13, r9
adcx r8, [ rsp - 0x8 ]
adcx r12, [ rsp - 0x10 ]
mov rdx, 0x26 
mulx rbx, rcx, r13
mulx r9, rbp, r12
mulx r12, r13, r8
adcx r10, r15
test al, al
adox r13, r11
adcx rcx, [ rsp - 0x18 ]
adox rbp, rdi
adcx rbx, r13
mulx rdi, r11, r10
adox r11, r14
adcx r12, rbp
adcx r9, r11
adox rdi, r15
adc rdi, 0x0
mulx r8, r14, rdi
xor r8, r8
adox r14, rcx
mov r15, r8
adox r15, rbx
mov r10, r8
adox r10, r12
mov r13, r8
adox r13, r9
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x10 ], r10
mov rbp, r8
cmovo rbp, rdx
adcx r14, rbp
mov [ rcx + 0x0 ], r14
mov [ rcx + 0x18 ], r13
mov [ rcx + 0x8 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.4153
; seed 3336612688318393 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 958283 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=131, initial num_batches=31): 84446 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08812219354825244
; number reverted permutation / tried permutation: 64438 / 94731 =68.022%
; number reverted decision / tried decision: 51300 / 95268 =53.848%
; validated in 0.597s
