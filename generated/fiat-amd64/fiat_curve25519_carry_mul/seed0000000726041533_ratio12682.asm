SECTION .text
	GLOBAL fiat_curve25519_carry_mul
fiat_curve25519_carry_mul:
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, r10, [ rax + 0x8 ]
imul rdx, [ rax + 0x10 ], 0x13
imul rcx, [ rax + 0x20 ], 0x13
mov r8, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rcx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
lea r13, [rdx + 8 * rdx]
lea r14, [rdx + 2 * r13]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mulx r15, r13, r14
mov rdx, rcx
mov [ rsp - 0x50 ], rdi
mulx rdi, rcx, [ rsi + 0x18 ]
mov [ rsp - 0x48 ], r12
xor r12, r12
adox r13, rcx
adox rdi, r15
mov r15, rdx
mov rdx, [ rax + 0x0 ]
mulx r12, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], r11
mulx r11, rbp, r15
imul rdx, [ rax + 0x8 ], 0x13
mov [ rsp - 0x30 ], r10
mov r10, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x28 ], rbx
mov [ rsp - 0x20 ], r9
mulx r9, rbx, [ rsi + 0x18 ]
xor rdx, rdx
adox r13, rcx
adox r12, rdi
mov rdx, [ rsi + 0x20 ]
mulx rcx, rdi, r10
adcx rbp, rbx
adcx r9, r11
mov rdx, [ rsi + 0x18 ]
mulx r10, r11, r8
xor rdx, rdx
adox rdi, r11
adox r10, rcx
mov rdx, r14
mulx rbx, r14, [ rsi + 0x10 ]
mulx r11, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], r12
mov [ rsp - 0x10 ], r13
mulx r13, r12, [ rax + 0x8 ]
adcx rdi, r14
adcx rbx, r10
mov rdx, r15
mulx r10, r15, [ rsi + 0x8 ]
test al, al
adox rdi, r15
adox r10, rbx
adcx rbp, r12
adcx r13, r9
mov rdx, [ rax + 0x0 ]
mulx r14, r9, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mulx rbx, r12, [ rsi + 0x8 ]
mov rdx, r8
mulx r15, r8, [ rsi + 0x20 ]
xor rdx, rdx
adox rbp, r12
adox rbx, r13
adcx r8, rcx
adcx r11, r15
mov rdx, [ rax + 0x0 ]
mulx r13, rcx, [ rsi + 0x8 ]
xor rdx, rdx
adox r8, [ rsp - 0x20 ]
adox r11, [ rsp - 0x28 ]
adcx rdi, r9
adcx r14, r10
test al, al
adox r8, rcx
adox r13, r11
mov rdx, [ rax + 0x10 ]
mulx r9, r10, [ rsi + 0x0 ]
mov rdx, rdi
shrd rdx, r14, 51
mov r12, [ rsp - 0x10 ]
add r12, [ rsp - 0x30 ]
mov r15, [ rsp - 0x18 ]
adcx r15, [ rsp - 0x38 ]
mov rcx, rdx
mov rdx, [ rax + 0x18 ]
mulx r14, r11, [ rsi + 0x0 ]
xor rdx, rdx
adox rbp, r11
adox r14, rbx
adcx r8, [ rsp - 0x40 ]
adcx r13, [ rsp - 0x48 ]
xor rbx, rbx
adox r8, rcx
adox r13, rbx
adcx r12, r10
adcx r9, r15
mov rdx, [ rax + 0x0 ]
mulx rcx, r10, [ rsi + 0x20 ]
mov rdx, r8
shrd rdx, r13, 51
test al, al
adox r12, rdx
adox r9, rbx
mov r15, 0x7ffffffffffff 
and r8, r15
mov r11, r12
shrd r11, r9, 51
mov rdx, [ rsi + 0x18 ]
mulx r9, r13, [ rax + 0x8 ]
test al, al
adox r10, r13
adox r9, rcx
mov rdx, [ rax + 0x10 ]
mulx r13, rcx, [ rsi + 0x10 ]
adcx rbp, r11
adc r14, 0x0
xor rdx, rdx
adox r10, rcx
adox r13, r9
mov rbx, rbp
and rbx, r15
mov r11, [ rsp - 0x50 ]
mov [ r11 + 0x18 ], rbx
mov rdx, [ rax + 0x18 ]
mulx rcx, r9, [ rsi + 0x8 ]
and r12, r15
adox r10, r9
adox rcx, r13
mov rdx, [ rax + 0x20 ]
mulx rbx, r13, [ rsi + 0x0 ]
shrd rbp, r14, 51
xor rdx, rdx
adox r10, r13
adox rbx, rcx
adcx r10, rbp
adc rbx, 0x0
mov r14, r10
and r14, r15
shrd r10, rbx, 51
imul r9, r10, 0x13
mov [ r11 + 0x20 ], r14
and rdi, r15
lea rdi, [ rdi + r9 ]
mov rcx, rdi
and rcx, r15
mov [ r11 + 0x0 ], rcx
shr rdi, 51
lea rdi, [ rdi + r8 ]
mov r8, rdi
and r8, r15
shr rdi, 51
lea rdi, [ rdi + r12 ]
mov [ r11 + 0x8 ], r8
mov [ r11 + 0x10 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.2682
; seed 1198187082684951 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1228201 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=159, initial num_batches=31): 84795 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06904000241002897
; number reverted permutation / tried permutation: 69685 / 95159 =73.230%
; number reverted decision / tried decision: 59697 / 94840 =62.945%
; validated in 0.467s
