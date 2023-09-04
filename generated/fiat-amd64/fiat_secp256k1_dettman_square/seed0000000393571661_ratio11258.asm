SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, [ rsi + 0x0 ]
mov rdx, r11
shl rdx, 0x1
mov r11, [ rsi + 0x10 ]
lea rcx, [r11 + r11]
mulx r8, r11, [ rsi + 0x18 ]
mov r9, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
lea rbx, [r9 + r9]
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, rbx
test al, al
adox rbp, r11
adox r8, r12
mov rdx, 0x1000003d10 
mulx r12, r11, rax
adcx r11, rbp
adcx r8, r12
mov rax, r11
shrd rax, r8, 52
mov rdx, [ rsi + 0x18 ]
mulx r12, rbp, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mulx r13, r8, rdx
xor rdx, rdx
adox r8, rbp
adox r12, r13
mov rdx, r9
mulx rbp, r9, [ rsi + 0x20 ]
adcx r8, r9
adcx rbp, r12
mov r13, rdx
mov rdx, [ rsi + 0x20 ]
mulx r9, r12, rbx
add r8, rax
adc rbp, 0x0
mov rdx, 0x1000003d10000 
mulx rax, rbx, r10
add rbx, r8
adcx rbp, rax
mov r10, rbx
shrd r10, rbp, 52
mov rdx, rcx
mulx r8, rcx, [ rsi + 0x18 ]
add rcx, r12
adcx r9, r8
add rcx, r10
adc r9, 0x0
mov r12, 0xfffffffffffff 
and rbx, r12
mov rax, rdx
mov rdx, [ rsi + 0x18 ]
mulx r10, rbp, rdx
mov rdx, rcx
shrd rdx, r9, 52
mov r8, rbx
shr r8, 48
and rcx, r12
shl rcx, 4
lea r8, [ r8 + rcx ]
mov r9, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x60 ], r14
mulx r14, rcx, rax
xor rdx, rdx
adox rbp, rcx
adox r14, r10
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, rdx
adcx rbp, r9
adc r14, 0x0
mov rdx, 0x1000003d1 
mulx rcx, r9, r8
xor r8, r8
adox r9, rax
adox r10, rcx
mov rax, r9
and rax, r12
mov rdx, r13
mulx rcx, r13, [ rsi + 0x8 ]
mov [ rdi + 0x0 ], rax
mulx r8, rax, [ rsi + 0x10 ]
shrd r9, r10, 52
xor rdx, rdx
adox r13, r9
adox rcx, rdx
mov r10, rbp
and r10, r12
mov r9, 0x1000003d10 
mov rdx, r9
mov [ rsp - 0x58 ], r15
mulx r15, r9, r10
adox r9, r13
adox rcx, r15
mov r13, r9
and r13, r12
shrd r9, rcx, 52
imul r10, [ rsi + 0x18 ], 0x2
mov [ rdi + 0x8 ], r13
mov rdx, [ rsi + 0x8 ]
mulx rcx, r15, rdx
mov rdx, r10
mulx r13, r10, [ rsi + 0x20 ]
shrd rbp, r14, 52
xor r14, r14
adox r10, rbp
adox r13, r14
adcx r15, rax
adcx r8, rcx
mov rax, 0x1000003d10 
mov rdx, rax
mulx rcx, rax, r10
and r11, r12
mov rbp, 0x1000003d10000 
mov rdx, r13
mulx r10, r13, rbp
adox r15, r9
adox r8, r14
adcx rax, r15
adcx r8, rcx
mov r9, rax
shrd r9, r8, 52
lea r9, [ r9 + r11 ]
and rax, r12
adox r13, r9
adox r10, r14
mov rdx, r13
shrd rdx, r10, 52
mov [ rdi + 0x10 ], rax
and r13, r12
mov rcx, 0xffffffffffff 
and rbx, rcx
lea rdx, [ rdx + rbx ]
mov [ rdi + 0x20 ], rdx
mov [ rdi + 0x18 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu 13th Gen Intel(R) Core(TM) i9-13900KF
; ratio 1.1258
; seed 3970883964921491 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 695275 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=239, initial num_batches=31): 66505 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0956527992520945
; number reverted permutation / tried permutation: 71136 / 95167 =74.749%
; number reverted decision / tried decision: 65471 / 94832 =69.039%
; validated in 0.178s
