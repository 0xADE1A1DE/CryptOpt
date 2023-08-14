SECTION .text
	GLOBAL fiat_curve25519_solinas_mul
fiat_curve25519_solinas_mul:
mov rax, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r10, [ rax + 0x18 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r10
mov [ rsp - 0x40 ], rcx
mulx rcx, r10, [ rax + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x38 ], r10
mov [ rsp - 0x30 ], r15
mulx r15, r10, [ rsi + 0x10 ]
xor rdx, rdx
adox r9, r8
adcx r13, r9
mov rdx, [ rax + 0x8 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x28 ], r10
mov [ rsp - 0x20 ], r12
mulx r12, r10, [ rsi + 0x8 ]
adox r8, r11
mov rdx, 0x0 
adox r12, rdx
adcx rbx, r8
mov r11, rdx
adcx r11, r12
mov rdx, [ rsi + 0x10 ]
mulx r12, r8, [ rax + 0x0 ]
adc r15, 0x0
xor rdx, rdx
adox r8, rdi
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x18 ], r10
mulx r10, rdi, [ rsi + 0x18 ]
adox r12, r13
adcx rbp, r8
mov rdx, [ rax + 0x10 ]
mulx r8, r13, [ rsi + 0x10 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x10 ], r10
mov [ rsp - 0x8 ], r8
mulx r8, r10, [ rsi + 0x8 ]
adcx r10, r12
adox r13, rbx
adox rdi, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, rbx, [ rax + 0x0 ]
mov rdx, 0x0 
mov r12, rdx
adox r12, r15
adcx r14, r13
adcx r9, rdi
adox rcx, rdx
mov r15, rdx
adcx r15, r12
adcx rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r13, [ rax + 0x0 ]
test al, al
adox r13, r11
adox rdi, rbp
adox r10, [ rsp - 0x20 ]
adox r14, [ rsp - 0x18 ]
adcx r13, [ rsp - 0x30 ]
adcx rdi, [ rsp - 0x40 ]
adox r9, [ rsp - 0x28 ]
adcx r10, [ rsp - 0x48 ]
adcx r8, r14
mov rdx, 0x26 
mulx r11, rbp, r8
adox r15, [ rsp - 0x38 ]
adcx r9, [ rsp - 0x8 ]
mulx r14, r12, r9
adcx r15, [ rsp - 0x10 ]
mov r8, 0x0 
adox rcx, r8
adcx rcx, r8
mulx r8, r9, r15
xor r15, r15
adox r12, r13
adox r9, rdi
adcx rbp, rbx
mulx r13, rbx, rcx
adox rbx, r10
adcx r11, r12
adcx r14, r9
adox r13, r15
adcx r8, rbx
adc r13, 0x0
mulx r10, rdi, r13
test al, al
adox rdi, rbp
mov r10, r15
adox r10, r11
mov rcx, r15
adox rcx, r14
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x10 ], rcx
mov r9, r15
adox r9, r8
mov [ r12 + 0x18 ], r9
mov rbp, r15
cmovo rbp, rdx
adcx rdi, rbp
mov [ r12 + 0x0 ], rdi
mov [ r12 + 0x8 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.4145
; seed 1620706973199217 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1312766 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=133, initial num_batches=31): 120846 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.092054486481216
; number reverted permutation / tried permutation: 63726 / 95225 =66.922%
; number reverted decision / tried decision: 50779 / 94774 =53.579%
; validated in 0.583s
