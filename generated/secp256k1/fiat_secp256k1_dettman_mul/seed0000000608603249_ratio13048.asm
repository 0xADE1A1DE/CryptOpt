SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rax + 0x10 ]
mulx r8, rcx, [ rsi + 0x10 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x20 ]
mov rdx, 0xfffffffffffff 
mov [ rsp - 0x78 ], rbp
mov rbp, r9
and rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rax + 0x8 ]
adox r10, r12
adox r13, r11
mov rdx, [ rsi + 0x8 ]
mulx r12, r11, [ rax + 0x10 ]
adcx r10, r11
adcx r12, r13
mov rdx, [ rsi + 0x20 ]
mulx r11, r13, [ rax + 0x0 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rbp
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rbp, [ rsi + 0x18 ]
add r13, rbp
adcx rdi, r11
add r13, rcx
adcx r8, rdi
mov rdx, [ rsi + 0x0 ]
mulx r11, rcx, [ rax + 0x18 ]
xor rdx, rdx
adox r10, rcx
adox r11, r12
mov rdx, [ rax + 0x18 ]
mulx rbp, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mulx rcx, rdi, [ rax + 0x20 ]
adcx r13, r12
adcx rbp, r8
add r13, rdi
adcx rcx, rbp
shrd r9, rbx, 52
xor rdx, rdx
adox r14, r10
adox r11, r15
mov rbx, r14
shrd rbx, r11, 52
mov r15, 0x1000003d10 
mov rdx, r15
mulx r8, r15, r9
xor r10, r10
adox rbx, r13
adox rcx, r10
mov r12, 0xfffffffffffff 
and r14, r12
adox r15, rbx
adox rcx, r8
mov rdi, r15
and rdi, r12
mov rdx, [ rax + 0x8 ]
mulx r13, rbp, [ rsi + 0x20 ]
shrd r15, rcx, 52
mov rdx, [ rsi + 0x10 ]
mulx r11, r9, [ rax + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rbx, r8, [ rax + 0x10 ]
test al, al
adox rbp, r8
adox rbx, r13
mov rdx, [ rsi + 0x8 ]
mulx r13, rcx, [ rax + 0x20 ]
adcx rbp, r9
adcx r11, rbx
xor rdx, rdx
adox rbp, rcx
adox r13, r11
adcx r15, rbp
adc r13, 0x0
mov r10, r15
shrd r10, r13, 52
and r15, r12
mov rdx, [ rsi + 0x20 ]
mulx r8, r9, [ rax + 0x10 ]
shl r15, 4
mov rdx, [ rax + 0x20 ]
mulx rcx, rbx, [ rsi + 0x10 ]
mov rdx, [ rax + 0x18 ]
mulx rbp, r11, [ rsi + 0x18 ]
mov rdx, rdi
shr rdx, 48
test al, al
adox r9, r11
adox rbp, r8
lea r15, [ r15 + rdx ]
adcx r9, rbx
adcx rcx, rbp
mov rdx, [ rsi + 0x0 ]
mulx r8, r13, [ rax + 0x0 ]
xor rdx, rdx
adox r10, r9
adox rcx, rdx
mov rbx, r10
and rbx, r12
mov rdx, [ rax + 0x18 ]
mulx rbp, r11, [ rsi + 0x20 ]
mov rdx, 0xffffffffffff 
and rdi, rdx
mov r9, 0x1000003d1 
mov rdx, r9
mulx r12, r9, r15
adox r9, r13
adox r8, r12
mov rdx, [ rsi + 0x18 ]
mulx r13, r15, [ rax + 0x20 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], rdi
mulx rdi, r12, [ rsi + 0x8 ]
adcx r11, r15
adcx r13, rbp
shrd r10, rcx, 52
mov rdx, [ rax + 0x8 ]
mulx rbp, rcx, [ rsi + 0x0 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x40 ], r14
mulx r14, r15, [ rsi + 0x8 ]
xor rdx, rdx
adox r15, rcx
adox rbp, r14
mov rcx, r9
shrd rcx, r8, 52
mov rdx, [ rsi + 0x0 ]
mulx r14, r8, [ rax + 0x10 ]
xor rdx, rdx
adox rcx, r15
adox rbp, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x38 ], r14
mulx r14, r15, [ rsi + 0x10 ]
adcx r15, r12
adcx rdi, r14
mov rdx, 0x1000003d10 
mulx r14, r12, rbx
xor rbx, rbx
adox r12, rcx
adox rbp, r14
mov rcx, r12
shrd rcx, rbp, 52
test al, al
adox r10, r11
adox r13, rbx
mov r11, r10
shrd r11, r13, 52
test al, al
adox r15, r8
adox rdi, [ rsp - 0x38 ]
adcx rcx, r15
adc rdi, 0x0
mov r8, 0xfffffffffffff 
and r10, r8
mulx rbp, r14, r10
adox r14, rcx
adox rdi, rbp
mulx r15, r13, r11
mov r11, r14
shrd r11, rdi, 52
add r11, [ rsp - 0x40 ]
add r13, r11
adc r15, 0x0
mov rcx, r13
shrd rcx, r15, 52
add rcx, [ rsp - 0x48 ]
and r13, r8
mov r10, [ rsp - 0x50 ]
mov [ r10 + 0x18 ], r13
and r9, r8
mov [ r10 + 0x20 ], rcx
mov [ r10 + 0x0 ], r9
and r14, r8
and r12, r8
mov [ r10 + 0x10 ], r14
mov [ r10 + 0x8 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.3048
; seed 2807251129265081 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 830917 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=325, initial num_batches=31): 81036 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.09752598635002052
; number reverted permutation / tried permutation: 70958 / 90051 =78.798%
; number reverted decision / tried decision: 52407 / 89948 =58.264%
; validated in 0.25s
