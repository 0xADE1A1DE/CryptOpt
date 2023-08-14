SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rax, [ rsi + 0x0 ]
lea r10, [rax + rax]
mov rax, [ rsi + 0x8 ]
mov r11, rax
shl r11, 0x1
mov rdx, [ rsi + 0x20 ]
mulx rcx, rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r9, r8, r10
mov rdx, r11
mov [ rsp - 0x80 ], rbx
mulx rbx, r11, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, r10
mov rdx, 0x1000003d10 
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rax
xor rax, rax
adox r11, r8
adox r9, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r8, rdx
mov rdx, rbp
mulx rax, rbp, [ rsi + 0x18 ]
adcx r14, r11
adcx r9, r15
xor r15, r15
adox r8, rbp
adox rax, rbx
mov r11, rdx
mov rdx, [ rsi + 0x20 ]
mulx rbp, rbx, r10
mov rdx, 0xfffffffffffff 
mov r15, r14
and r15, rdx
shrd r14, r9, 52
xor r9, r9
adox r8, rbx
adox rbp, rax
adcx r8, r14
adc rbp, 0x0
imul rax, [ rsi + 0x10 ], 0x2
mov rdx, rax
mulx rbx, rax, [ rsi + 0x18 ]
mulx r9, r14, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r15
mulx r15, rdi, rdx
mov rdx, 0x1000003d10000 
mov [ rsp - 0x40 ], r13
mov [ rsp - 0x38 ], r12
mulx r12, r13, rcx
xor rcx, rcx
adox r13, r8
adox rbp, r12
adcx rdi, r14
adcx r9, r15
mov rdx, r11
mulx r8, r11, [ rsi + 0x20 ]
xor rdx, rdx
adox rax, r11
adox r8, rbx
mov rcx, r13
shrd rcx, rbp, 52
add rax, rcx
adc r8, 0x0
mov rbx, 0xfffffffffffff 
mov r14, rax
and r14, rbx
shl r14, 4
and r13, rbx
shrd rax, r8, 52
add rdi, rax
adc r9, 0x0
mov r15, r13
shr r15, 48
mov r12, rdi
shrd r12, r9, 52
and rdi, rbx
mov rbp, 0x1 
shlx r11, [ rsi + 0x18 ], rbp
mov rdx, r11
mulx rcx, r11, [ rsi + 0x20 ]
adox r11, r12
mov r8, 0x0 
adox rcx, r8
mov rdx, [ rsi + 0x0 ]
mulx r9, rax, rdx
lea r15, [ r15 + r14 ]
mov rdx, r10
mulx r14, r10, [ rsi + 0x8 ]
mov rdx, 0x1000003d1 
mulx rbp, r12, r15
adcx r12, rax
adcx r9, rbp
mov rax, r12
and rax, rbx
mov r15, 0x1000003d10 
mov rdx, r15
mulx rbp, r15, rdi
shrd r12, r9, 52
mov rdi, [ rsp - 0x50 ]
mov [ rdi + 0x0 ], rax
mulx rax, r9, r11
xor r11, r11
adox r10, r12
adox r14, r11
adcx r15, r10
adcx r14, rbp
mov r8, r15
and r8, rbx
shrd r15, r14, 52
mov rdx, [ rsi + 0x8 ]
mulx r12, rbp, rdx
xor rdx, rdx
adox rbp, [ rsp - 0x38 ]
adox r12, [ rsp - 0x40 ]
adcx rbp, r15
adc r12, 0x0
add r9, rbp
adcx r12, rax
mov r11, r9
shrd r11, r12, 52
and r9, rbx
add r11, [ rsp - 0x48 ]
mov rax, 0x1000003d10000 
mov rdx, rax
mulx r10, rax, rcx
mov [ rdi + 0x10 ], r9
xor rcx, rcx
adox rax, r11
adox r10, rcx
mov r14, rax
and r14, rbx
mov r15, 0xffffffffffff 
and r13, r15
shrd rax, r10, 52
mov [ rdi + 0x8 ], r8
lea rax, [ rax + r13 ]
mov [ rdi + 0x18 ], r14
mov [ rdi + 0x20 ], rax
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.1252
; seed 4399155087822125 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 680383 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=233, initial num_batches=31): 65892 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.09684545322267017
; number reverted permutation / tried permutation: 71599 / 95047 =75.330%
; number reverted decision / tried decision: 66591 / 94952 =70.131%
; validated in 0.194s
