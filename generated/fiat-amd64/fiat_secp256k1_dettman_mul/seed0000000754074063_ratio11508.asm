SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
test al, al
adox r10, r9
adox rbx, r11
mov rdx, [ rsi + 0x18 ]
mulx r9, r11, [ rax + 0x8 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
adcx r10, r15
adcx rdi, rbx
mov rdx, [ rax + 0x20 ]
mulx r15, rbx, [ rsi + 0x20 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, rbx
xor rbx, rbx
adox r10, r13
adox r14, rdi
adcx r12, r10
adcx r14, rbp
mov r13, r12
shrd r13, r14, 52
mov rdx, [ rsi + 0x20 ]
mulx rbp, rdi, [ rax + 0x0 ]
test al, al
adox rdi, r11
adox r9, rbp
mov rdx, [ rax + 0x10 ]
mulx r10, r11, [ rsi + 0x10 ]
mov rdx, [ rax + 0x18 ]
mulx rbp, r14, [ rsi + 0x8 ]
adcx rdi, r11
adcx r10, r9
add rdi, r14
adcx rbp, r10
mov rdx, [ rsi + 0x0 ]
mulx r11, r9, [ rax + 0x20 ]
xor rdx, rdx
adox rdi, r9
adox r11, rbp
adcx rdi, r13
adc r11, 0x0
mov rdx, [ rsi + 0x18 ]
mulx r13, rbx, [ rax + 0x10 ]
mov rdx, 0x1000003d10000 
mulx r10, r14, r15
test al, al
adox r14, rdi
adox r11, r10
mov rdx, [ rsi + 0x8 ]
mulx r9, rbp, [ rax + 0x20 ]
adcx rcx, rbx
adcx r13, r8
xor rdx, rdx
adox rcx, [ rsp - 0x40 ]
adox r13, [ rsp - 0x48 ]
mov r8, 0xfffffffffffff 
mov rdi, r14
and rdi, r8
mov r15, 0xffffffffffff 
mov rbx, rdi
and rbx, r15
shrd r14, r11, 52
xor r10, r10
adox rcx, rbp
adox r9, r13
mov rdx, [ rax + 0x0 ]
mulx rbp, r11, [ rsi + 0x0 ]
adcx rcx, r14
adc r9, 0x0
mov rdx, rcx
and rdx, r8
shl rdx, 4
shr rdi, 48
lea rdi, [ rdi + rdx ]
mov rdx, [ rsi + 0x20 ]
mulx r14, r13, [ rax + 0x10 ]
mov rdx, [ rsi + 0x18 ]
mulx r15, r10, [ rax + 0x18 ]
mov rdx, 0x1000003d1 
mov [ rsp - 0x38 ], rbx
mulx rbx, r8, rdi
test al, al
adox r8, r11
adox rbp, rbx
mov rdx, [ rax + 0x20 ]
mulx rdi, r11, [ rsi + 0x18 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x30 ], rdi
mulx rdi, rbx, [ rsi + 0x10 ]
adcx r13, r10
adcx r15, r14
mov rdx, [ rax + 0x8 ]
mulx r10, r14, [ rsi + 0x0 ]
test al, al
adox r13, rbx
adox rdi, r15
shrd rcx, r9, 52
xor rdx, rdx
adox r13, rcx
adox rdi, rdx
mov r9, r8
shrd r9, rbp, 52
mov rbp, 0xfffffffffffff 
mov rbx, r13
and rbx, rbp
shrd r13, rdi, 52
mov rdx, [ rsi + 0x20 ]
mulx rcx, r15, [ rax + 0x18 ]
add r15, r11
adcx rcx, [ rsp - 0x30 ]
xor rdx, rdx
adox r15, r13
adox rcx, rdx
mov rdx, [ rsi + 0x8 ]
mulx rdi, r11, [ rax + 0x0 ]
adcx r11, r14
adcx r10, rdi
mov rdx, 0x1000003d10 
mulx r13, r14, rbx
xor rbx, rbx
adox r11, r9
adox r10, rbx
adcx r14, r11
adcx r10, r13
mov rdx, [ rsi + 0x8 ]
mulx rdi, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx r11, r13, [ rsi + 0x10 ]
test al, al
adox r13, r9
adox rdi, r11
mov rdx, [ rsi + 0x0 ]
mulx r11, r9, [ rax + 0x10 ]
adcx r13, r9
adcx r11, rdi
mov rdx, 0x1000003d10 
mulx r9, rdi, r15
mov r15, r14
shrd r15, r10, 52
xor r10, r10
adox r13, r15
adox r11, r10
adcx rdi, r13
adcx r11, r9
and r12, rbp
mov rbx, rdi
shrd rbx, r11, 52
lea rbx, [ rbx + r12 ]
and rdi, rbp
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], rdi
mov r15, 0x1000003d10000 
mov rdx, rcx
mulx r13, rcx, r15
adox rcx, rbx
adox r13, r10
mov r11, rcx
and r11, rbp
shrd rcx, r13, 52
and r14, rbp
mov [ r9 + 0x8 ], r14
and r8, rbp
mov [ r9 + 0x0 ], r8
mov [ r9 + 0x18 ], r11
add rcx, [ rsp - 0x38 ]
mov [ r9 + 0x20 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1508
; seed 1265311730569762 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1047524 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=182, initial num_batches=31): 80887 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07721732389902283
; number reverted permutation / tried permutation: 69623 / 94784 =73.454%
; number reverted decision / tried decision: 55588 / 95215 =58.382%
; validated in 0.304s
