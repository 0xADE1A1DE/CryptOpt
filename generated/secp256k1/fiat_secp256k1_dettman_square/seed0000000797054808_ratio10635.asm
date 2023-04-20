SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rax, 0x1 
shlx r10, [ rsi + 0x0 ], rax
mov rdx, [ rsi + 0x20 ]
mulx rcx, r11, rdx
imul rdx, [ rsi + 0x8 ], 0x2
mulx r9, r8, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, rax, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, 0x34 
mov [ rsp - 0x60 ], r14
bzhi r14, r11, rdx
mov rdx, r10
mov [ rsp - 0x58 ], r15
mulx r15, r10, [ rsi + 0x18 ]
adox rax, r10
adox r15, rbx
xor rbx, rbx
adox r12, r8
adox r9, r13
mulx r13, r8, [ rsi + 0x20 ]
adcx r12, r8
adcx r13, r9
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, r9, rbp
mov rdx, 0x1000003d10 
mulx rbx, rbp, r14
add rbp, rax
adcx r15, rbx
mov r14, rbp
shrd r14, r15, 52
shrd r11, rcx, 52
mulx rax, rcx, r11
xor rbx, rbx
adox r14, r12
adox r13, rbx
mov r12, 0x34 
bzhi r11, rbp, r12
adox rcx, r14
adox r13, rax
bzhi rbp, rcx, r12
shrd rcx, r13, 52
mov r15, 0x1 
shlx rax, [ rsi + 0x10 ], r15
mov r14, 0x30 
bzhi r13, rbp, r14
mov rdx, rax
mulx rbx, rax, [ rsi + 0x18 ]
shr rbp, 48
xor r15, r15
adox rax, r9
adox r8, rbx
adcx rcx, rax
adc r8, 0x0
bzhi r9, rcx, r12
mulx rax, rbx, [ rsi + 0x20 ]
shl r9, 4
mov rdx, [ rsi + 0x18 ]
mulx r14, r15, rdx
lea r9, [ r9 + rbp ]
mov rdx, 0x1000003d1 
mulx r12, rbp, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mulx rdi, r9, rdx
shrd rcx, r8, 52
add r15, rbx
adcx rax, r14
mov rdx, r10
mulx r8, r10, [ rsi + 0x10 ]
xor rbx, rbx
adox rcx, r15
adox rax, rbx
adcx r9, r10
adcx r8, rdi
mov r14, rdx
mov rdx, [ rsi + 0x0 ]
mulx r15, rdi, rdx
xor rdx, rdx
adox rbp, rdi
adox r15, r12
mov rbx, rbp
shrd rbx, r15, 52
mov r12, 0xfffffffffffff 
mov r10, rcx
and r10, r12
mov rdi, 0x1000003d10 
mov rdx, rdi
mulx r15, rdi, r10
imul r10, [ rsi + 0x18 ], 0x2
mov rdx, r10
mulx r12, r10, [ rsi + 0x20 ]
mov rdx, r14
mov [ rsp - 0x48 ], r13
mulx r13, r14, [ rsi + 0x8 ]
shrd rcx, rax, 52
xor rdx, rdx
adox rcx, r10
adox r12, rdx
adcx rbx, r14
adc r13, 0x0
mov rax, rcx
shrd rax, r12, 52
mov r10, 0xfffffffffffff 
and rcx, r10
adox rdi, rbx
adox r13, r15
mov r15, rdi
and r15, r10
shrd rdi, r13, 52
xor r14, r14
adox rdi, r9
adox r8, r14
mov rdx, 0x1000003d10 
mulx r12, r9, rcx
adcx r9, rdi
adcx r8, r12
mov rbx, r9
and rbx, r10
shrd r9, r8, 52
mulx r13, rcx, rax
lea r11, [ r11 + r9 ]
add rcx, r11
adc r13, 0x0
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x10 ], rbx
mov rdi, rcx
shrd rdi, r13, 52
add rdi, [ rsp - 0x48 ]
mov [ rax + 0x20 ], rdi
and rcx, r10
and rbp, r10
mov [ rax + 0x18 ], rcx
mov [ rax + 0x0 ], rbp
mov [ rax + 0x8 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.0635
; seed 1770814101593427 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1632129 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=385, initial num_batches=31): 162605 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.09962754169554
; number reverted permutation / tried permutation: 75692 / 89825 =84.266%
; number reverted decision / tried decision: 66043 / 90174 =73.240%
; validated in 0.517s
