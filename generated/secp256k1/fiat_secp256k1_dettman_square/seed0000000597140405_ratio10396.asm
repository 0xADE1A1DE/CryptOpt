SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
imul rax, [ rsi + 0x0 ], 0x2
mov r10, [ rsi + 0x8 ]
mov r11, r10
shl r11, 0x1
mov rdx, [ rsi + 0x20 ]
mulx rcx, r10, rdx
mov rdx, 0x34 
bzhi r8, r10, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, r11
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, r11
mov rdx, 0x1000003d10 
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, r8
shrd r10, rcx, 52
mulx r8, rcx, r10
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mulx r15, r10, rdx
xor rdx, rdx
adox r10, rbp
adox r12, r15
mov rdx, rax
mulx rbp, rax, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x18 ]
adcx r9, r15
adcx rdi, rbx
xor rbx, rbx
adox r13, r9
adox rdi, r14
mov r14, 0xfffffffffffff 
mov r15, r13
and r15, r14
shrd r13, rdi, 52
mov r9, 0x1 
shlx rdi, [ rsi + 0x10 ], r9
xor r9, r9
adox r10, rax
adox rbp, r12
adcx r13, r10
adc rbp, 0x0
add rcx, r13
adcx rbp, r8
xchg rdx, rdi
mulx r8, rbx, [ rsi + 0x18 ]
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, r11
mov rdx, rcx
shrd rdx, rbp, 52
xor r11, r11
adox rbx, rax
adox r10, r8
adcx rdx, rbx
adc r10, 0x0
mov r9, rdx
and r9, r14
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rbp, rdx
shl r9, 4
mov rdx, r12
mulx rax, r12, [ rsi + 0x20 ]
shrd r13, r10, 52
test al, al
adox rbp, r12
adox rax, r8
adcx r13, rbp
adc rax, 0x0
and rcx, r14
mov rdx, r13
shrd rdx, rax, 52
mov rbx, rcx
shr rbx, 48
mov r10, rdx
mov rdx, [ rsi + 0x0 ]
mulx r12, r8, rdx
lea r9, [ r9 + rbx ]
mov rdx, 0x1000003d1 
mulx rax, rbp, r9
test al, al
adox rbp, r8
adox r12, rax
mov rbx, rbp
shrd rbx, r12, 52
and rbp, r14
and r13, r14
mov r8, 0x1000003d10 
mov rdx, r13
mulx r9, r13, r8
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x0 ], rbp
mov rdx, rdi
mulx r12, rdi, [ rsi + 0x8 ]
adox rbx, rdi
adox r12, r11
adcx r13, rbx
adcx r12, r9
mov rbp, r13
shrd rbp, r12, 52
mov r9, [ rsi + 0x18 ]
lea rdi, [r9 + r9]
mov r9, rdx
mov rdx, [ rsi + 0x8 ]
mulx r12, rbx, rdx
mov rdx, [ rsi + 0x10 ]
mulx r8, r11, r9
mov rdx, rdi
mulx r9, rdi, [ rsi + 0x20 ]
add r10, rdi
adc r9, 0x0
mov rdx, r10
shrd rdx, r9, 52
and r10, r14
adox rbx, r11
adox r8, r12
adcx rbp, rbx
adc r8, 0x0
mov r12, 0x1000003d10 
xchg rdx, r12
mulx rdi, r11, r10
test al, al
adox r11, rbp
adox r8, rdi
mov r9, r11
shrd r9, r8, 52
lea r15, [ r15 + r9 ]
and r11, r14
mulx rbx, r10, r12
and r13, r14
adox r10, r15
mov r12, 0x0 
adox rbx, r12
mov rbp, r10
and rbp, r14
mov [ rax + 0x8 ], r13
mov [ rax + 0x18 ], rbp
mov rdi, 0xffffffffffff 
and rcx, rdi
shrd r10, rbx, 52
lea rcx, [ rcx + r10 ]
mov [ rax + 0x10 ], r11
mov [ rax + 0x20 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu AMD Ryzen 9 5950X 16-Core Processor
; ratio 1.0396
; seed 0861151032243001 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1455711 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=239, initial num_batches=31): 100470 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.06901782015798466
; number reverted permutation / tried permutation: 74997 / 89854 =83.465%
; number reverted decision / tried decision: 53524 / 90145 =59.375%
; validated in 0.298s
