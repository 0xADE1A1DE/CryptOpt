SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x0 ]
imul rdx, [ rax + 0x18 ], 0x13
imul rcx, [ rax + 0x8 ], 0x13
mulx r9, r8, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x20 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x18 ]
imul rdx, [ rax + 0x10 ], 0x13
mov [ rsp - 0x60 ], r14
imul r14, [ rax + 0x20 ], 0x13
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x20 ]
mov [ rsp - 0x48 ], rbp
mov [ rsp - 0x40 ], rbx
mulx rbx, rbp, [ rsi + 0x18 ]
mov rdx, rcx
mov [ rsp - 0x38 ], r11
mulx r11, rcx, [ rsi + 0x20 ]
test al, al
adox r15, r12
adox r13, rdi
adcx rcx, rbp
adcx rbx, r11
mov rdx, r14
mulx r12, r14, [ rsi + 0x10 ]
add r15, r14
adcx r12, r13
mulx rbp, rdi, [ rsi + 0x8 ]
mov r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r14, r13, [ rax + 0x0 ]
xor rdx, rdx
adox rcx, r8
adox r9, rbx
adcx rcx, rdi
adcx rbp, r9
xor r8, r8
adox r15, r10
adox r12, [ rsp - 0x38 ]
adcx rcx, r13
adcx r14, rbp
mov rdx, rcx
shrd rdx, r14, 51
mov r10, rdx
mov rdx, [ rsi + 0x0 ]
mulx rdi, rbx, [ rax + 0x8 ]
xor rdx, rdx
adox r15, rbx
adox rdi, r12
adcx r15, r10
adc rdi, 0x0
mov rdx, r11
mulx r8, r11, [ rsi + 0x18 ]
mov r13, r11
add r13, [ rsp - 0x40 ]
adcx r8, [ rsp - 0x48 ]
mov r9, rdx
mov rdx, [ rax + 0x0 ]
mulx r12, rbp, [ rsi + 0x10 ]
xor rdx, rdx
adox r13, rbp
adox r12, r8
mov rdx, [ rsi + 0x8 ]
mulx r10, r14, [ rax + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx r11, rbx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx rbp, r8, [ rax + 0x8 ]
mov rdx, r15
shrd rdx, rdi, 51
xor rdi, rdi
adox r13, r14
adox r10, r12
adcx r13, rbx
adcx r11, r10
xor r12, r12
adox r13, rdx
adox r11, r12
mov rdx, [ rsi + 0x20 ]
mulx r14, rdi, r9
mov rdx, r13
shrd rdx, r11, 51
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, rbx, [ rax + 0x0 ]
xor rdx, rdx
adox rdi, rbx
adox r10, r14
mov rdx, [ rax + 0x0 ]
mulx r11, r12, [ rsi + 0x20 ]
mov rdx, [ rax + 0x8 ]
mulx rbx, r14, [ rsi + 0x10 ]
adcx r12, r8
adcx rbp, r11
xor rdx, rdx
adox rdi, r14
adox rbx, r10
mov rdx, [ rsi + 0x8 ]
mulx r10, r8, [ rax + 0x10 ]
adcx rdi, r8
adcx r10, rbx
mov rdx, [ rsi + 0x0 ]
mulx r14, r11, [ rax + 0x18 ]
xor rdx, rdx
adox rdi, r11
adox r14, r10
mov rdx, [ rsi + 0x10 ]
mulx r8, rbx, [ rax + 0x10 ]
adcx r12, rbx
adcx r8, rbp
mov rdx, [ rax + 0x18 ]
mulx r10, rbp, [ rsi + 0x8 ]
mov rdx, [ rax + 0x20 ]
mulx rbx, r11, [ rsi + 0x0 ]
add rdi, r9
adc r14, 0x0
test al, al
adox r12, rbp
adox r10, r8
adcx r12, r11
adcx rbx, r10
mov rdx, rdi
shrd rdx, r14, 51
add r12, rdx
adc rbx, 0x0
mov r9, 0x7ffffffffffff 
mov r8, r12
and r8, r9
shrd r12, rbx, 51
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x20 ], r8
lea r11, [r12 + 8 * r12]
lea r14, [r12 + 2 * r11]
and rcx, r9
lea rcx, [ rcx + r14 ]
mov r11, rcx
and r11, r9
mov [ rbp + 0x0 ], r11
and r15, r9
shr rcx, 51
lea rcx, [ rcx + r15 ]
mov r10, rcx
shr r10, 51
and rcx, r9
and rdi, r9
mov [ rbp + 0x8 ], rcx
mov [ rbp + 0x18 ], rdi
and r13, r9
lea r10, [ r10 + r13 ]
mov [ rbp + 0x10 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.2750
; seed 1318608097904961 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1902150 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=122, initial num_batches=31): 135069 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07100859553662961
; number reverted permutation / tried permutation: 75382 / 95022 =79.331%
; number reverted decision / tried decision: 61014 / 94977 =64.241%
; validated in 0.501s
