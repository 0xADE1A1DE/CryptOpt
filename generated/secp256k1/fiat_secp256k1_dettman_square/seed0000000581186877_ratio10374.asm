SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov r11, rax
shrd r11, r10, 52
mov rdx, [ rsi + 0x10 ]
mov rcx, rdx
shl rcx, 0x1
mov rdx, [ rsi + 0x10 ]
mulx r9, r8, rdx
mov rdx, [ rsi + 0x8 ]
mov r10, rdx
shl r10, 0x1
mov rdx, r10
mov [ rsp - 0x80 ], rbx
mulx rbx, r10, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x10 ]
mov [ rsp - 0x68 ], r13
mov r13, 0xfffffffffffff 
and rax, r13
mov [ rsp - 0x60 ], r14
mov r14, 0x1 
mov [ rsp - 0x58 ], r15
shlx r15, [ rsi + 0x0 ], r14
mov r14, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r13, r15
mov rdx, 0x1000003d10 
mov [ rsp - 0x48 ], r11
mov [ rsp - 0x40 ], r9
mulx r9, r11, rax
adox rbp, r13
adox rdi, r12
adcx r11, rbp
adcx rdi, r9
mov rdx, [ rsi + 0x18 ]
mulx rax, r12, rcx
xor rdx, rdx
adox r8, r10
adox rbx, [ rsp - 0x40 ]
mov r10, r11
shrd r10, rdi, 52
mov rdx, [ rsi + 0x20 ]
mulx r9, r13, r15
xor rdx, rdx
adox r8, r13
adox r9, rbx
adcx r10, r8
adc r9, 0x0
mov rdx, r14
mulx rbp, r14, [ rsi + 0x20 ]
mov rdx, 0x1000003d10 
mulx rbx, rdi, [ rsp - 0x48 ]
xor r13, r13
adox r12, r14
adox rbp, rax
adcx rdi, r10
adcx r9, rbx
mov rax, rdi
shrd rax, r9, 52
mov r8, 0xfffffffffffff 
and rdi, r8
adox rax, r12
adox rbp, r13
mov r10, rax
and r10, r8
mov r14, 0xffffffffffff 
mov rbx, rdi
and rbx, r14
mov r12, [ rsi + 0x18 ]
lea r9, [r12 + r12]
mov rdx, r9
mulx r12, r9, [ rsi + 0x20 ]
mov rdx, rcx
mulx r13, rcx, [ rsi + 0x20 ]
shl r10, 4
mov rdx, [ rsi + 0x18 ]
mulx r8, r14, rdx
xor rdx, rdx
adox r14, rcx
adox r13, r8
shrd rax, rbp, 52
add rax, r14
adc r13, 0x0
mov rbp, rax
shrd rbp, r13, 52
add rbp, r9
adc r12, 0x0
mov r9, rbp
shrd r9, r12, 52
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, rdx
shr rdi, 48
lea r10, [ r10 + rdi ]
mov rdx, 0x1000003d1 
mulx r13, r14, r10
xor r12, r12
adox r14, rcx
adox r8, r13
mov rcx, r14
shrd rcx, r8, 52
mov rdi, 0xfffffffffffff 
and rax, rdi
mov rdx, r15
mulx r10, r15, [ rsi + 0x8 ]
and r14, rdi
mov r13, 0x1000003d10 
xchg rdx, r13
mulx r12, r8, rax
adox rcx, r15
mov rax, 0x0 
adox r10, rax
adcx r8, rcx
adcx r10, r12
mov r15, r8
shrd r15, r10, 52
and rbp, rdi
mulx rcx, r12, rbp
mov rdx, [ rsi + 0x8 ]
mulx rbp, r10, rdx
and r8, rdi
mov rdx, r13
mulx rax, r13, [ rsi + 0x10 ]
adox r10, r13
adox rax, rbp
adcx r15, r10
adc rax, 0x0
xor rdx, rdx
adox r12, r15
adox rax, rcx
mov rcx, r12
and rcx, rdi
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x10 ], rcx
and r11, rdi
mov r13, 0x1000003d10 
mov rdx, r9
mulx r10, r9, r13
shrd r12, rax, 52
lea r11, [ r11 + r12 ]
xor rdx, rdx
adox r9, r11
adox r10, rdx
mov r15, r9
shrd r15, r10, 52
lea rbx, [ rbx + r15 ]
mov [ rbp + 0x20 ], rbx
and r9, rdi
mov [ rbp + 0x8 ], r8
mov [ rbp + 0x18 ], r9
mov [ rbp + 0x0 ], r14
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 7950X 16-Core Processor
; ratio 1.0374
; seed 3961557512977834 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1030358 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=227, initial num_batches=31): 71202 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.0691041366204756
; number reverted permutation / tried permutation: 74854 / 89777 =83.378%
; number reverted decision / tried decision: 58934 / 90222 =65.321%
; validated in 0.217s
