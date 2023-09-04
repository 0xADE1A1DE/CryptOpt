SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x0 ]
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], rdi
mov [ rsp - 0x40 ], r15
mulx r15, rdi, [ rsi + 0x10 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r12
mov [ rsp - 0x30 ], rbp
mulx rbp, r12, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x28 ], rbp
mov [ rsp - 0x20 ], r12
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x18 ], r12
mov [ rsp - 0x10 ], rbp
mulx rbp, r12, [ rax + 0x18 ]
xor rdx, rdx
adox r13, rcx
adox r8, r14
mov rdx, [ rsi + 0x0 ]
mulx r14, rcx, [ rax + 0x18 ]
adcx r10, rdi
adcx r15, r11
mov rdx, 0x1000003d10000 
mulx rdi, r11, rbx
add r10, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x38 ]
add r10, rcx
adcx r14, r15
mov rcx, 0x1000003d10 
mov rdx, rcx
mulx rbx, rcx, r9
add rcx, r10
adcx r14, rbx
mov rdx, [ rax + 0x20 ]
mulx r9, r15, [ rsi + 0x0 ]
mov rdx, rcx
shrd rdx, r14, 52
xor r10, r10
adox r13, [ rsp - 0x40 ]
adox r8, [ rsp - 0x48 ]
adcx r13, r12
adcx rbp, r8
xor r12, r12
adox r13, r15
adox r9, rbp
adcx r13, rdx
adc r9, 0x0
test al, al
adox r11, r13
adox r9, rdi
mov r10, 0xfffffffffffff 
mov rdi, r11
and rdi, r10
mov rbx, rdi
shr rbx, 48
mov rdx, [ rsi + 0x18 ]
mulx r15, r14, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mulx rbp, r8, [ rax + 0x8 ]
test al, al
adox r8, r14
adox r15, rbp
mov rdx, [ rax + 0x20 ]
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, [ rax + 0x18 ]
mulx r12, rbp, [ rsi + 0x10 ]
adcx r8, rbp
adcx r12, r15
xor rdx, rdx
adox r8, r13
adox r14, r12
shrd r11, r9, 52
add r8, r11
adc r14, 0x0
mov r9, r8
and r9, r10
shl r9, 4
mov rdx, [ rax + 0x18 ]
mulx r13, r15, [ rsi + 0x20 ]
lea rbx, [ rbx + r9 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, rbp, [ rax + 0x20 ]
mov rdx, [ rsi + 0x20 ]
mulx r9, r11, [ rax + 0x10 ]
xor rdx, rdx
adox r15, rbp
adox r12, r13
mov rdx, [ rax + 0x20 ]
mulx rbp, r13, [ rsi + 0x10 ]
shrd r8, r14, 52
xor rdx, rdx
adox r11, [ rsp - 0x10 ]
adox r9, [ rsp - 0x18 ]
adcx r11, r13
adcx rbp, r9
xor r14, r14
adox r11, r8
adox rbp, r14
mov rdx, 0x1000003d1 
mulx r8, r13, rbx
mov rdx, [ rax + 0x0 ]
mulx r9, rbx, [ rsi + 0x0 ]
mov rdx, r11
and rdx, r10
adox r13, rbx
adox r9, r8
mov r8, r13
and r8, r10
mov rbx, rdx
mov rdx, [ rsi + 0x8 ]
mulx r10, r14, [ rax + 0x8 ]
shrd r13, r9, 52
mov rdx, r14
add rdx, [ rsp - 0x20 ]
adcx r10, [ rsp - 0x28 ]
shrd r11, rbp, 52
xor rbp, rbp
adox r15, r11
adox r12, rbp
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x0 ], r8
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mulx r11, r14, [ rax + 0x8 ]
mov rdx, 0x1000003d10000 
mulx r9, rbp, r12
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x8 ], r9
mulx r9, r12, [ rax + 0x0 ]
adcx r12, r14
adcx r11, r9
xor rdx, rdx
adox r12, r13
adox r11, rdx
mov r13, 0x1000003d10 
mov rdx, r13
mulx r14, r13, rbx
adcx r13, r12
adcx r11, r14
mov rdx, [ rsi + 0x0 ]
mulx r9, rbx, [ rax + 0x10 ]
xor rdx, rdx
adox r8, rbx
adox r9, r10
mov r10, r13
shrd r10, r11, 52
xor r12, r12
adox r8, r10
adox r9, r12
mov rdx, 0x1000003d10 
mulx r11, r14, r15
adcx r14, r8
adcx r9, r11
mov r15, r14
shrd r15, r9, 52
mov rbx, 0xfffffffffffff 
and rcx, rbx
lea r15, [ r15 + rcx ]
adox rbp, r15
mov r10, [ rsp - 0x8 ]
adox r10, r12
mov r8, rbp
shrd r8, r10, 52
mov r11, 0xffffffffffff 
and rdi, r11
lea r8, [ r8 + rdi ]
and r14, rbx
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], r14
and rbp, rbx
mov [ r9 + 0x18 ], rbp
and r13, rbx
mov [ r9 + 0x20 ], r8
mov [ r9 + 0x8 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.0809
; seed 0151646685006193 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1615478 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=190, initial num_batches=31): 96602 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.05979778121398125
; number reverted permutation / tried permutation: 57591 / 94953 =60.652%
; number reverted decision / tried decision: 49839 / 95046 =52.437%
; validated in 0.271s
