SECTION .text
	GLOBAL fiat_secp256k1_dettman_mul
fiat_secp256k1_dettman_mul:
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r11, r10, [ rax + 0x8 ]
mov rdx, [ rax + 0x0 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x0 ]
test al, al
adox r9, r10
adox r11, rbx
mov rdx, [ rax + 0x10 ]
mulx rbx, r10, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
adcx rcx, rbp
adcx r12, r8
mov rdx, [ rax + 0x20 ]
mulx rbp, r8, [ rsi + 0x20 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r8
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x58 ], r15
mulx r15, r8, [ rax + 0x10 ]
xor rdx, rdx
adox rcx, r8
adox r15, r12
mov rdx, [ rsi + 0x0 ]
mulx r8, r12, [ rax + 0x18 ]
adcx rcx, r12
adcx r8, r15
xor rdx, rdx
adox r13, rcx
adox r8, r14
mov rdx, [ rax + 0x10 ]
mulx r15, r14, [ rsi + 0x10 ]
adcx r9, r14
adcx r15, r11
mov rdx, [ rsi + 0x8 ]
mulx r12, r11, [ rax + 0x18 ]
test al, al
adox r9, r11
adox r12, r15
mov rdx, r13
shrd rdx, r8, 52
mov rcx, rdx
mov rdx, [ rax + 0x20 ]
mulx r14, r8, [ rsi + 0x0 ]
xor rdx, rdx
adox r9, r8
adox r14, r12
mov rdx, [ rsi + 0x10 ]
mulx r11, r15, [ rax + 0x18 ]
adcx r9, rcx
adc r14, 0x0
mov rdx, 0xfffffffffffff 
and r13, rdx
mov rdx, [ rsi + 0x20 ]
mulx rcx, r12, [ rax + 0x8 ]
adox r12, r10
adox rbx, rcx
mov rdx, 0x1000003d10000 
mulx r8, r10, rbp
adcx r12, r15
adcx r11, rbx
add r10, r9
adcx r14, r8
mov rdx, [ rsi + 0x8 ]
mulx r15, rbp, [ rax + 0x20 ]
mov rdx, r10
shrd rdx, r14, 52
add r12, rbp
adcx r15, r11
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx rbx, rcx, [ rax + 0x18 ]
mov rdx, [ rsi + 0x20 ]
mulx r11, r8, [ rax + 0x10 ]
xor rdx, rdx
adox r12, r9
adox r15, rdx
mov r14, r12
shrd r14, r15, 52
mov rbp, 0xfffffffffffff 
and r12, rbp
shl r12, 4
mov rdx, [ rsi + 0x10 ]
mulx r15, r9, [ rax + 0x0 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, rbp, [ rsi + 0x18 ]
add r8, rcx
adcx rbx, r11
mov rdx, [ rsi + 0x10 ]
mulx r11, rcx, [ rax + 0x20 ]
test al, al
adox r8, rcx
adox r11, rbx
adcx r8, r14
adc r11, 0x0
mov rdx, [ rsi + 0x8 ]
mulx rbx, r14, [ rax + 0x8 ]
add r9, r14
adcx rbx, r15
mov rdx, 0xfffffffffffff 
and r10, rdx
mov r15, r10
shr r15, 48
lea r15, [ r15 + r12 ]
mov rdx, [ rsi + 0x20 ]
mulx rcx, r12, [ rax + 0x18 ]
mov rdx, 0xfffffffffffff 
mov r14, r8
and r14, rdx
adox r12, rbp
adox rdi, rcx
shrd r8, r11, 52
mov rdx, [ rsi + 0x0 ]
mulx r11, rbp, [ rax + 0x10 ]
mov rdx, 0x1000003d1 
mov [ rsp - 0x48 ], r13
mulx r13, rcx, r15
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x40 ], r14
mulx r14, r15, [ rsi + 0x0 ]
add rcx, r15
adcx r14, r13
xor rdx, rdx
adox r12, r8
adox rdi, rdx
mov rdx, [ rax + 0x8 ]
mulx r13, r8, [ rsi + 0x0 ]
adcx r9, rbp
adcx r11, rbx
mov rdx, [ rax + 0x0 ]
mulx rbp, rbx, [ rsi + 0x8 ]
xor rdx, rdx
adox rbx, r8
adox r13, rbp
mov r15, rcx
shrd r15, r14, 52
mov r14, 0x1000003d10 
mov rdx, [ rsp - 0x40 ]
mulx rbp, r8, r14
xor rdx, rdx
adox rbx, r15
adox r13, rdx
adcx r8, rbx
adcx r13, rbp
mov r15, r8
shrd r15, r13, 52
mov rdx, r12
mulx rbp, r12, r14
xor rbx, rbx
adox r9, r15
adox r11, rbx
adcx r12, r9
adcx r11, rbp
mov r13, r12
shrd r13, r11, 52
add r13, [ rsp - 0x48 ]
mov r15, 0x1000003d10000 
mov rdx, r15
mulx rbp, r15, rdi
mov rdi, 0xfffffffffffff 
and r12, rdi
mov r9, [ rsp - 0x50 ]
mov [ r9 + 0x10 ], r12
adox r15, r13
adox rbp, rbx
mov r11, r15
and r11, rdi
mov [ r9 + 0x18 ], r11
and rcx, rdi
mov [ r9 + 0x0 ], rcx
mov r13, 0xffffffffffff 
and r10, r13
shrd r15, rbp, 52
lea r15, [ r15 + r10 ]
mov [ r9 + 0x20 ], r15
and r8, rdi
mov [ r9 + 0x8 ], r8
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 12th Gen Intel(R) Core(TM) i9-12900KF
; ratio 1.1402
; seed 0552908382909921 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1056902 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=182, initial num_batches=31): 81064 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07669963724167425
; number reverted permutation / tried permutation: 69870 / 95031 =73.523%
; number reverted decision / tried decision: 55951 / 94968 =58.916%
; validated in 0.299s
