SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, rdx
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, [ rax + 0x0 ]
imul rdx, [ rax + 0x18 ], 0x13
mulx r8, rcx, [ rsi + 0x20 ]
mov r9, rdx
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
xor rdx, rdx
adox r10, rbx
adox rbp, r11
imul r11, [ rax + 0x10 ], 0x13
mov rdx, r11
mulx rbx, r11, [ rsi + 0x18 ]
mov [ rsp - 0x70 ], r12
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
lea r15, [rdx + 8 * rdx]
lea rdi, [rdx + 2 * r15]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r14
mulx r14, r15, r9
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x40 ], r13
mov [ rsp - 0x38 ], r8
mulx r8, r13, [ rsi + 0x10 ]
mov rdx, rdi
mov [ rsp - 0x30 ], rcx
mulx rcx, rdi, [ rsi + 0x20 ]
test al, al
adox rdi, r11
adox rbx, rcx
adcx rdi, r15
adcx r14, rbx
imul r11, [ rax + 0x20 ], 0x13
mov rdx, r9
mulx r15, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx rbx, rcx, r12
xor rdx, rdx
adox rcx, r9
adox r15, rbx
adcx r10, r13
adcx r8, rbp
mov rdx, r11
mulx rbp, r11, [ rsi + 0x18 ]
mov r12, r11
add r12, [ rsp - 0x30 ]
adcx rbp, [ rsp - 0x38 ]
mulx r9, r13, [ rsi + 0x8 ]
mulx r11, rbx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], r8
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], r10
mov [ rsp - 0x18 ], r11
mulx r11, r10, [ rax + 0x0 ]
xor rdx, rdx
adox rdi, r13
adox r9, r14
adcx rdi, r10
adcx r11, r9
mov r14, rdi
shrd r14, r11, 51
mov rdx, r8
mulx r13, r8, [ rsi + 0x10 ]
xor rdx, rdx
adox rcx, r8
adox r13, r15
mov rdx, [ rsi + 0x8 ]
mulx r10, r15, [ rax + 0x0 ]
mov rdx, [ rax + 0x0 ]
mulx r11, r9, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x10 ], rbx
mulx rbx, r8, [ rax + 0x8 ]
adcx rcx, r15
adcx r10, r13
add rcx, r8
adcx rbx, r10
xor rdx, rdx
adox r12, r9
adox r11, rbp
adcx rcx, r14
adc rbx, 0x0
mov rbp, rcx
shrd rbp, rbx, 51
mov rdx, [ rsi + 0x0 ]
mulx r13, r14, [ rax + 0x10 ]
mov rdx, [ rax + 0x8 ]
mulx r9, r15, [ rsi + 0x8 ]
add r12, r15
adcx r9, r11
mov rdx, [ rsi + 0x18 ]
mulx r10, r8, [ rax + 0x0 ]
mov rdx, r8
xor r11, r11
adox rdx, [ rsp - 0x10 ]
adox r10, [ rsp - 0x18 ]
mov rbx, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, r15, [ rax + 0x8 ]
adcx r12, r14
adcx r13, r9
mov rdx, [ rax + 0x10 ]
mulx r9, r14, [ rsi + 0x8 ]
xor rdx, rdx
adox r12, rbp
adox r13, rdx
adcx rbx, r15
adcx r8, r10
mov r11, r12
shrd r11, r13, 51
mov rbp, 0x7ffffffffffff 
and r12, rbp
mov rdx, [ rax + 0x20 ]
mulx r15, r10, [ rsi + 0x0 ]
adox rbx, r14
adox r9, r8
mov rdx, [ rax + 0x18 ]
mulx r13, r14, [ rsi + 0x8 ]
adcx rbx, [ rsp - 0x40 ]
adcx r9, [ rsp - 0x48 ]
xor rdx, rdx
adox rbx, r11
adox r9, rdx
mov r8, rbx
shrd r8, r9, 51
and rbx, rbp
mov r11, r14
adox r11, [ rsp - 0x20 ]
adox r13, [ rsp - 0x28 ]
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x18 ], rbx
adcx r11, r10
adcx r15, r13
xor r10, r10
adox r11, r8
adox r15, r10
mov rdx, r11
shrd rdx, r15, 51
and r11, rbp
imul r9, rdx, 0x13
and rdi, rbp
lea rdi, [ rdi + r9 ]
and rcx, rbp
mov r8, rdi
shr r8, 51
and rdi, rbp
lea r8, [ r8 + rcx ]
mov rbx, r8
and rbx, rbp
shr r8, 51
lea r8, [ r8 + r12 ]
mov [ r14 + 0x8 ], rbx
mov [ r14 + 0x10 ], r8
mov [ r14 + 0x20 ], r11
mov [ r14 + 0x0 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.2068
; seed 0938739286138487 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 965562 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=197, initial num_batches=31): 78218 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.08100774471240584
; number reverted permutation / tried permutation: 70008 / 94904 =73.767%
; number reverted decision / tried decision: 59941 / 95095 =63.033%
; validated in 0.285s
