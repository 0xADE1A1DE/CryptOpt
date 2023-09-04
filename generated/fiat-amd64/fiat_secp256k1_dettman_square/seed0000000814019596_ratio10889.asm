SECTION .text
	GLOBAL fiat_secp256k1_dettman_square
fiat_secp256k1_dettman_square:
mov rdx, [ rsi + 0x20 ]
mulx r10, rax, rdx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r11, rdx
imul rdx, [ rsi + 0x10 ], 0x2
mov r8, [ rsi + 0x0 ]
lea r9, [r8 + r8]
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, r9
imul rdx, [ rsi + 0x8 ], 0x2
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, [ rsi + 0x20 ]
mov [ rsp - 0x50 ], rdi
xor rdi, rdi
adox r12, rbx
adox rbp, r13
mulx r13, rbx, [ rsi + 0x18 ]
adcx r11, rbx
adcx r13, rcx
mov rdx, [ rsi + 0x18 ]
mulx rbx, rcx, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], r15
mulx r15, rdi, rdx
mov rdx, 0x1000003d10 
mov [ rsp - 0x40 ], r15
mov [ rsp - 0x38 ], rdi
mulx rdi, r15, rax
xor rax, rax
adox r15, r12
adox rbp, rdi
mov r12, r15
shrd r12, rbp, 52
mov rdx, [ rsi + 0x20 ]
mulx rbp, rdi, r8
xor rdx, rdx
adox rcx, rdi
adox rbp, rbx
mov rdx, [ rsi + 0x20 ]
mulx rbx, rax, r9
adcx r11, rax
adcx rbx, r13
xor rdx, rdx
adox r11, r12
adox rbx, rdx
mov r13, 0x1000003d10000 
mov rdx, r13
mulx r12, r13, r10
adcx r13, r11
adcx rbx, r12
mov r10, 0x34 
bzhi rdi, r13, r10
mov rdx, [ rsi + 0x18 ]
mulx r11, rax, r8
mov rdx, 0xffffffffffff 
mov r8, rdi
and r8, rdx
shrd r13, rbx, 52
xor r12, r12
adox rax, r14
adox r11, [ rsp - 0x48 ]
adcx rax, r13
adc r11, 0x0
mov r14, rax
shrd r14, r11, 52
add rcx, r14
adc rbp, 0x0
bzhi rbx, rcx, r10
imul r13, [ rsi + 0x18 ], 0x2
bzhi r14, rax, r10
shl r14, 4
mov rdx, r13
mulx rax, r13, [ rsi + 0x20 ]
shr rdi, 48
lea rdi, [ rdi + r14 ]
mov rdx, [ rsi + 0x0 ]
mulx r14, r11, rdx
mov rdx, 0x1000003d1 
mulx r10, r12, rdi
xor rdi, rdi
adox r12, r11
adox r14, r10
mov rdx, r9
mulx r11, r9, [ rsi + 0x10 ]
mov r10, r9
adcx r10, [ rsp - 0x38 ]
adcx r11, [ rsp - 0x40 ]
shrd rcx, rbp, 52
mulx r9, rbp, [ rsi + 0x8 ]
mov rdx, 0x1000003d10 
mov [ rsp - 0x30 ], r8
mulx r8, rdi, rbx
xor rbx, rbx
adox r13, rcx
adox rax, rbx
mov rcx, r12
shrd rcx, r14, 52
mov r14, 0xfffffffffffff 
and r12, r14
adox rbp, rcx
adox r9, rbx
adcx rdi, rbp
adcx r9, r8
mov r8, rdi
shrd r8, r9, 52
mulx rbp, rcx, r13
xor r13, r13
adox r10, r8
adox r11, r13
adcx rcx, r10
adcx r11, rbp
mov rbx, rcx
shrd rbx, r11, 52
and r15, r14
lea rbx, [ rbx + r15 ]
mov r9, 0x1000003d10000 
mov rdx, rax
mulx r8, rax, r9
adox rax, rbx
adox r8, r13
mov rdx, rax
shrd rdx, r8, 52
and rax, r14
mov rbp, [ rsp - 0x50 ]
mov [ rbp + 0x18 ], rax
add rdx, [ rsp - 0x30 ]
and rdi, r14
mov [ rbp + 0x8 ], rdi
mov [ rbp + 0x20 ], rdx
mov [ rbp + 0x0 ], r12
and rcx, r14
mov [ rbp + 0x10 ], rcx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.0889
; seed 0972509408424088 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1702515 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=165, initial num_batches=31): 126996 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.0745931753905252
; number reverted permutation / tried permutation: 74758 / 94960 =78.726%
; number reverted decision / tried decision: 65493 / 95039 =68.912%
; validated in 0.503s
