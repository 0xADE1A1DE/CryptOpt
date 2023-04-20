SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
imul rax, [ rsi + 0x0 ], 0x2
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, rdx
mov rdx, [ rsi + 0x18 ]
mulx r8, rcx, rax
imul rdx, [ rsi + 0x8 ], 0x2
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x10 ]
mov [ rsp - 0x78 ], rbp
imul rbp, [ rsi + 0x10 ], 0x2
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x20 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r13
mulx r13, rdi, rdx
xor rdx, rdx
adox rdi, r14
adox r15, r13
mov r14, 0xfffffffffffff 
mov r13, r10
and r13, r14
adox r9, rcx
adox r8, rbx
mov rcx, 0x1000003d10 
mov rdx, r13
mulx rbx, r13, rcx
adcx r13, r9
adcx r8, rbx
mov rdx, r13
shrd rdx, r8, 52
mov r9, rdx
mov rdx, [ rsi + 0x20 ]
mulx r8, rbx, rax
test al, al
adox rdi, rbx
adox r8, r15
adcx r9, rdi
adc r8, 0x0
shrd r10, r11, 52
mov rdx, rcx
mulx r11, rcx, r10
mov rdx, [ rsi + 0x18 ]
mulx rbx, r15, rbp
xor rdx, rdx
adox rcx, r9
adox r8, r11
mov rdi, rcx
shrd rdi, r8, 52
and rcx, r14
adox r15, r12
adox rbx, [ rsp - 0x48 ]
adcx rdi, r15
adc rbx, 0x0
mov r12, rdi
and r12, r14
shl r12, 4
mov r9, 0x30 
bzhi r10, rcx, r9
mov rdx, rbp
mulx r11, rbp, [ rsi + 0x20 ]
shr rcx, 48
lea r12, [ r12 + rcx ]
mov rdx, [ rsi + 0x18 ]
mulx r15, r8, rdx
mov rdx, 0x1000003d1 
mulx r9, rcx, r12
imul r12, [ rsi + 0x18 ], 0x2
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x40 ], r10
mulx r10, r14, r12
shrd rdi, rbx, 52
test al, al
adox r8, rbp
adox r11, r15
mov rdx, [ rsi + 0x0 ]
mulx rbp, rbx, rdx
adcx rdi, r8
adc r11, 0x0
test al, al
adox rcx, rbx
adox rbp, r9
mov rdx, rcx
shrd rdx, rbp, 52
mov r15, 0xfffffffffffff 
and rcx, r15
mov r9, rdi
shrd r9, r11, 52
xor r12, r12
adox r9, r14
adox r10, r12
mov r14, r9
and r14, r15
mov r8, rdx
mov rdx, [ rsi + 0x8 ]
mulx r11, rbx, rdx
mov rdx, rax
mulx rbp, rax, [ rsi + 0x10 ]
mov r12, [ rsp - 0x50 ]
mov [ r12 + 0x0 ], rcx
and rdi, r15
adox rbx, rax
adox rbp, r11
mulx r11, rcx, [ rsi + 0x8 ]
adcx r8, rcx
adc r11, 0x0
mov rdx, 0x1000003d10 
mulx rcx, rax, rdi
xor rdi, rdi
adox rax, r8
adox r11, rcx
mov r8, rax
and r8, r15
mulx rdi, rcx, r14
shrd rax, r11, 52
xor r14, r14
adox rax, rbx
adox rbp, r14
shrd r9, r10, 52
mov [ r12 + 0x8 ], r8
and r13, r15
mulx rbx, r10, r9
adox rcx, rax
adox rbp, rdi
mov r11, rcx
shrd r11, rbp, 52
lea r13, [ r13 + r11 ]
xor r8, r8
adox r10, r13
adox rbx, r8
mov r14, r10
shrd r14, rbx, 52
add r14, [ rsp - 0x40 ]
mov [ r12 + 0x20 ], r14
and rcx, r15
and r10, r15
mov [ r12 + 0x10 ], rcx
mov [ r12 + 0x18 ], r10
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.0822
; seed 0408655312509767 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; time needed: 1167733 ms on 180000 evaluations.
; Time spent for assembling and measuring (initial batch_size=224, initial num_batches=31): 90718 ms
; number of used evaluations: 180000
; Ratio (time for assembling + measure)/(total runtime for 180000 evals): 0.07768727954078544
; number reverted permutation / tried permutation: 76237 / 90068 =84.644%
; number reverted decision / tried decision: 65719 / 89931 =73.077%
; validated in 0.367s
