SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, [ rdx + 0x18 ]
lea r10, [rax + 8 * rax]
lea r11, [rax + 2 * r10]
mov rax, [ rdx + 0x8 ]
lea r10, [rax + 8 * rax]
lea rcx, [rax + 2 * r10]
mov rax, rdx
mov rdx, [ rdx + 0x10 ]
mulx r8, r10, [ rsi + 0x8 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
lea r9, [rdx + 8 * rdx]
lea rbx, [rdx + 2 * r9]
imul rdx, [ rax + 0x10 ], 0x13
mov [ rsp - 0x78 ], rbp
mulx rbp, r9, [ rsi + 0x20 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
mov rdx, r11
mov [ rsp - 0x60 ], r14
mulx r14, r11, [ rsi + 0x18 ]
mov [ rsp - 0x58 ], r15
xor r15, r15
adox r9, r11
adox r14, rbp
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mulx r15, r11, rbx
adcx r9, r11
adcx r15, r14
mov rdx, [ rsi + 0x8 ]
mulx r11, r14, [ rax + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r8
mulx r8, rdi, [ rax + 0x8 ]
xor rdx, rdx
adox r9, r14
adox r11, r15
mov rdx, rcx
mulx r15, rcx, [ rsi + 0x20 ]
adcx rcx, r12
adcx r13, r15
mov rdx, [ rsi + 0x10 ]
mulx r14, r12, rbp
test al, al
adox rcx, r12
adox r14, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, r15, rbx
adcx rcx, r15
adcx r13, r14
mov rdx, [ rax + 0x0 ]
mulx r14, r12, [ rsi + 0x0 ]
mov rdx, rbp
mulx r15, rbp, [ rsi + 0x20 ]
mov rdx, rbx
mov [ rsp - 0x40 ], r10
mulx r10, rbx, [ rsi + 0x18 ]
test al, al
adox rcx, r12
adox r14, r13
adcx rbp, rbx
adcx r10, r15
mov r13, rdx
mov rdx, [ rsi + 0x0 ]
mulx r15, r12, [ rax + 0x8 ]
test al, al
adox r9, r12
adox r15, r11
mov rdx, 0x7ffffffffffff 
mov r11, rcx
and r11, rdx
shrd rcx, r14, 51
xor rbx, rbx
adox r9, rcx
adox r15, rbx
mov r14, r9
and r14, rdx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r12, [ rax + 0x0 ]
adox rbp, r12
adox rcx, r10
mov rdx, [ rax + 0x10 ]
mulx r12, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x38 ], r14
mulx r14, rbx, r13
adcx rbp, rdi
adcx r8, rcx
mov rdx, [ rsi + 0x10 ]
mulx rdi, r13, [ rax + 0x8 ]
add rbp, r10
adcx r12, r8
mov rdx, [ rax + 0x0 ]
mulx r10, rcx, [ rsi + 0x18 ]
add rbx, rcx
adcx r10, r14
shrd r9, r15, 51
xor rdx, rdx
adox rbp, r9
adox r12, rdx
mov r15, rbp
shrd r15, r12, 51
mov rdx, [ rax + 0x8 ]
mulx r8, r14, [ rsi + 0x18 ]
add rbx, r13
adcx rdi, r10
mov rdx, [ rsi + 0x0 ]
mulx rcx, r13, [ rax + 0x18 ]
add rbx, [ rsp - 0x40 ]
adcx rdi, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x20 ]
mulx r9, r10, [ rax + 0x0 ]
test al, al
adox rbx, r13
adox rcx, rdi
adcx rbx, r15
adc rcx, 0x0
mov rdx, [ rsi + 0x10 ]
mulx r15, r12, [ rax + 0x10 ]
add r10, r14
adcx r8, r9
mov rdx, 0x33 
bzhi r14, rbx, rdx
mov r13, [ rsp - 0x50 ]
mov [ r13 + 0x18 ], r14
mov rdx, [ rax + 0x18 ]
mulx r9, rdi, [ rsi + 0x8 ]
adox r10, r12
adox r15, r8
mov rdx, [ rax + 0x20 ]
mulx r8, r12, [ rsi + 0x0 ]
xor rdx, rdx
adox r10, rdi
adox r9, r15
shrd rbx, rcx, 51
test al, al
adox r10, r12
adox r8, r9
adcx r10, rbx
adc r8, 0x0
mov rcx, r10
shrd rcx, r8, 51
lea r14, [rcx + 8 * rcx]
lea rdi, [rcx + 2 * r14]
lea r11, [ r11 + rdi ]
mov r14, r11
shr r14, 51
mov r15, 0x33 
bzhi r12, r10, r15
add r14, [ rsp - 0x38 ]
bzhi r9, r14, r15
bzhi rbx, r11, r15
bzhi r10, rbp, r15
mov [ r13 + 0x8 ], r9
shr r14, 51
lea r14, [ r14 + r10 ]
mov [ r13 + 0x10 ], r14
mov [ r13 + 0x0 ], rbx
mov [ r13 + 0x20 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.2531
; seed 2036959714560557 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1898051 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=122, initial num_batches=31): 134924 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07108555038826671
; number reverted permutation / tried permutation: 76847 / 94856 =81.014%
; number reverted decision / tried decision: 63008 / 95143 =66.225%
; validated in 0.535s
