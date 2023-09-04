SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 304
mov rax, rdx
mov rdx, [ rdx + 0x20 ]
mulx r11, r10, [ rsi + 0x20 ]
mov rdx, [ rax + 0x38 ]
mulx r8, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x38 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x38 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x38 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rsi + 0x30 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], rcx
mulx rcx, r8, [ rsi + 0x28 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], r8
mulx r8, rcx, [ rsi + 0x30 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x18 ], rbp
mov [ rsp - 0x10 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x8 ], r12
mov [ rsp + 0x0 ], rbp
mulx rbp, r12, [ rsi + 0x30 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x8 ], r11
mov [ rsp + 0x10 ], r10
mulx r10, r11, [ rsi + 0x28 ]
mov rdx, r9
test al, al
adox rdx, r12
mov [ rsp + 0x18 ], r10
mov r10, rbp
adox r10, rbx
adcx rdx, r13
mov [ rsp + 0x20 ], r11
mov r11, r14
adcx r11, r10
mov r10, rdx
mov [ rsp + 0x28 ], rdi
xor rdi, rdi
adox r10, r9
adox rbx, r11
adcx r10, r12
adcx rbp, rbx
add r10, r13
adcx r14, rbp
mov r9, rdx
mov rdx, [ rax + 0x8 ]
mulx r12, r13, [ rsi + 0x38 ]
test al, al
adox r10, r13
mov rdx, r12
adox rdx, r14
adcx r10, rcx
mov rbx, r8
adcx rbx, rdx
test al, al
adox r10, r15
adox rbx, [ rsp + 0x28 ]
adcx r10, [ rsp + 0x10 ]
adcx rbx, [ rsp + 0x8 ]
mov rdx, [ rsi + 0x18 ]
mulx r14, rbp, [ rax + 0x28 ]
xor rdx, rdx
adox r9, r13
adox r12, r11
mov rdx, [ rax + 0x30 ]
mulx r11, rdi, [ rsi + 0x10 ]
adcx r10, rbp
mov rdx, r14
adcx rdx, rbx
add r9, rcx
adcx r8, r12
test al, al
adox r10, rdi
mov rcx, r11
adox rcx, rdx
adcx r9, r15
adcx r8, [ rsp + 0x28 ]
xor r15, r15
adox r9, [ rsp + 0x10 ]
adox r8, [ rsp + 0x8 ]
adcx r9, rbp
adcx r14, r8
mov rdx, [ rax + 0x38 ]
mulx rbx, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x38 ]
mulx r12, rbp, [ rax + 0x18 ]
mov rdx, [ rsi + 0x38 ]
mulx r15, r8, [ rax + 0x38 ]
add r10, r13
mov rdx, rbx
adcx rdx, rcx
mov rcx, r8
add rcx, r8
mov [ rsp + 0x30 ], rdx
mov rdx, r15
adcx rdx, r15
test al, al
adox rcx, rbp
mov [ rsp + 0x38 ], r10
mov r10, r12
adox r10, rdx
adcx r9, rdi
adcx r11, r14
test al, al
adox r9, r13
adox rbx, r11
mov rdx, [ rax + 0x28 ]
mulx r14, rdi, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x20 ]
mulx r11, r13, [ rax + 0x30 ]
adcx r8, rbp
adcx r12, r15
mov rdx, [ rax + 0x38 ]
mulx r15, rbp, [ rsi + 0x30 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x40 ], rbx
mov [ rsp + 0x48 ], r9
mulx r9, rbx, [ rsi + 0x38 ]
test al, al
adox r8, [ rsp - 0x10 ]
adox r12, [ rsp - 0x18 ]
adcx r8, rdi
mov rdx, r14
adcx rdx, r12
test al, al
adox rcx, [ rsp - 0x10 ]
adox r10, [ rsp - 0x18 ]
adcx rcx, rdi
adcx r14, r10
mov rdi, rbx
test al, al
adox rdi, rbp
mov r12, r15
adox r12, r9
mov r10, rdi
adcx r10, rbx
adcx r9, r12
add r10, rbp
adcx r15, r9
add rcx, r13
mov rbp, r11
adcx rbp, r14
test al, al
adox r8, r13
adox r11, rdx
adcx rcx, [ rsp - 0x30 ]
adcx rbp, [ rsp - 0x38 ]
add r10, [ rsp - 0x40 ]
adcx r15, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x10 ]
mulx rbx, r13, [ rax + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mulx r9, r14, [ rax + 0x18 ]
test al, al
adox r10, r14
mov rdx, r9
adox rdx, r15
adcx r10, [ rsp + 0x20 ]
adcx rdx, [ rsp + 0x18 ]
mov r15, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x50 ], rbp
mov [ rsp + 0x58 ], rcx
mulx rcx, rbp, [ rsi + 0x20 ]
xor rdx, rdx
adox r10, rbp
mov [ rsp + 0x60 ], rbx
mov rbx, rcx
adox rbx, r15
adcx r8, [ rsp - 0x30 ]
adcx r11, [ rsp - 0x38 ]
add r8, r13
adcx r11, [ rsp + 0x60 ]
mov rdx, [ rax + 0x8 ]
mulx r15, r13, [ rsi + 0x8 ]
xor rdx, rdx
adox rdi, [ rsp - 0x40 ]
adox r12, [ rsp - 0x48 ]
adcx rdi, r14
adcx r9, r12
add rdi, [ rsp + 0x20 ]
adcx r9, [ rsp + 0x18 ]
test al, al
adox rdi, rbp
adox rcx, r9
adcx r8, r13
adcx r15, r11
mov rdx, [ rax + 0x30 ]
mulx rbp, r14, [ rsi + 0x18 ]
xor rdx, rdx
adox rdi, r14
mov r11, rbp
adox r11, rcx
adcx r10, r14
adcx rbp, rbx
mov rdx, [ rax + 0x20 ]
mulx r13, rbx, [ rsi + 0x38 ]
mov rdx, [ rax + 0x30 ]
mulx r9, r12, [ rsi + 0x28 ]
mov rdx, [ rax + 0x0 ]
mulx r14, rcx, [ rsi + 0x18 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x68 ], r15
mov [ rsp + 0x70 ], r8
mulx r8, r15, [ rsi + 0x30 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x78 ], r14
mov [ rsp + 0x80 ], rcx
mulx rcx, r14, [ rsi + 0x10 ]
add rdi, r14
mov rdx, rcx
adcx rdx, r11
test al, al
adox rbx, r15
adox r8, r13
adcx rbx, r12
adcx r9, r8
xor r11, r11
adox r10, r14
adox rcx, rbp
mov rbp, rdx
mov rdx, [ rax + 0x38 ]
mulx r12, r13, [ rsi + 0x20 ]
adcx rbx, r13
adcx r12, r9
mov rdx, [ rax + 0x0 ]
mulx r14, r15, [ rsi + 0x38 ]
mov rdx, rbx
add rdx, r15
adcx r14, r12
test al, al
adox rbx, [ rsp + 0x80 ]
adox r12, [ rsp + 0x78 ]
mov r8, rdx
mov rdx, [ rsi + 0x28 ]
mulx r13, r9, [ rax + 0x0 ]
adcx r10, r9
adcx r13, rcx
mov rdx, [ rax + 0x8 ]
mulx r15, rcx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mulx r11, r9, [ rax + 0x8 ]
test al, al
adox r10, r9
adox r11, r13
mov rdx, [ rsi + 0x30 ]
mulx r9, r13, [ rax + 0x8 ]
adcx rbx, rcx
adcx r15, r12
add r8, r13
adcx r9, r14
mov rdx, [ rax + 0x10 ]
mulx r12, r14, [ rsi + 0x8 ]
mov rdx, [ rax + 0x10 ]
mulx r13, rcx, [ rsi + 0x18 ]
xor rdx, rdx
adox r10, rcx
adox r13, r11
adcx rbx, r14
adcx r12, r15
add rbx, [ rsp + 0x0 ]
adcx r12, [ rsp - 0x8 ]
mov rdx, [ rsi + 0x20 ]
mulx r15, r11, [ rax + 0x18 ]
mov rdx, [ rsi + 0x10 ]
mulx rcx, r14, [ rax + 0x18 ]
add r8, [ rsp - 0x20 ]
adcx r9, [ rsp - 0x28 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0x88 ], rbp
mov [ rsp + 0x90 ], rdi
mulx rdi, rbp, [ rsi + 0x10 ]
test al, al
adox r8, r11
adox r15, r9
mov rdx, [ rax + 0x20 ]
mulx r9, r11, [ rsi + 0x18 ]
adcx r8, r11
adcx r9, r15
xor rdx, rdx
adox r8, rbp
adox rdi, r9
mov rdx, [ rsi + 0x8 ]
mulx r15, rbp, [ rax + 0x30 ]
adcx r8, rbp
adcx r15, rdi
test al, al
adox r10, r14
adox rcx, r13
mov rdx, [ rsi + 0x0 ]
mulx r14, r13, [ rax + 0x38 ]
mov rdx, [ rax + 0x0 ]
mulx r9, r11, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x8 ]
mulx rbp, rdi, [ rax + 0x18 ]
mov rdx, r11
adcx rdx, [ rsp + 0x38 ]
adcx r9, [ rsp + 0x30 ]
add r8, r13
adcx r14, r15
mov r15, rdx
mov rdx, [ rax + 0x8 ]
mulx r11, r13, [ rsi + 0x18 ]
xor rdx, rdx
adox r15, r13
adox r11, r9
mov rdx, [ rax + 0x10 ]
mulx r13, r9, [ rsi + 0x10 ]
adcx r15, r9
adcx r13, r11
test al, al
adox r15, rdi
adox rbp, r13
mov rdx, [ rsi + 0x0 ]
mulx r11, rdi, [ rax + 0x28 ]
mov rdx, [ rsi + 0x0 ]
mulx r13, r9, [ rax + 0x20 ]
adcx r15, r9
adcx r13, rbp
mov rdx, [ rax + 0x0 ]
mulx r9, rbp, [ rsi + 0x30 ]
mov rdx, rbx
shrd rdx, r12, 56
mov r12, r8
shrd r12, r14, 56
add r15, rdx
adc r13, 0x0
mov r14, r12
xor rdx, rdx
adox r14, r15
adox r13, rdx
mov r15, r14
shrd r15, r13, 56
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x98 ], r15
mulx r15, r13, [ rsi + 0x8 ]
xor rdx, rdx
adox r10, r13
adox r15, rcx
mov rcx, rbp
adcx rcx, [ rsp + 0x58 ]
adcx r9, [ rsp + 0x50 ]
mov rbp, 0xffffffffffffff 
and r14, rbp
adox r10, rdi
adox r11, r15
adcx r10, [ rsp + 0x98 ]
adc r11, 0x0
mov rdx, [ rsi + 0x0 ]
mulx r13, rdi, [ rax + 0x30 ]
mov rdx, [ rax + 0x8 ]
mulx rbp, r15, [ rsi + 0x28 ]
mov rdx, r10
shrd rdx, r11, 56
mov r11, rdx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xa0 ], r14
mov [ rsp + 0xa8 ], r13
mulx r13, r14, [ rsi + 0x18 ]
add rcx, r15
adcx rbp, r9
mov rdx, [ rsi + 0x20 ]
mulx r15, r9, [ rax + 0x10 ]
add rcx, r9
adcx r15, rbp
test al, al
adox rcx, r14
adox r13, r15
mov rdx, [ rsi + 0x8 ]
mulx rbp, r14, [ rax + 0x28 ]
mov rdx, [ rsi + 0x10 ]
mulx r15, r9, [ rax + 0x20 ]
adcx rcx, r9
adcx r15, r13
add rcx, r14
adcx rbp, r15
test al, al
adox rcx, rdi
adox rbp, [ rsp + 0xa8 ]
mov rdx, [ rsi + 0x8 ]
mulx r13, rdi, [ rax + 0x0 ]
mov rdx, rdi
adcx rdx, [ rsp + 0x90 ]
adcx r13, [ rsp + 0x88 ]
add rcx, r11
adc rbp, 0x0
mov r11, 0x38 
bzhi r14, rcx, r11
shrd rcx, rbp, 56
mov r9, rdx
mov rdx, [ rax + 0x8 ]
mulx rdi, r15, [ rsi + 0x0 ]
bzhi rdx, r8, r11
adox r9, r15
adox rdi, r13
lea rcx, [ rcx + rdx ]
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x30 ], r14
mov rdx, [ rsi + 0x0 ]
mulx rbp, r13, [ rax + 0x0 ]
mov rdx, r13
xor r14, r14
adox rdx, [ rsp + 0x48 ]
adox rbp, [ rsp + 0x40 ]
adcx r12, rdx
adc rbp, 0x0
bzhi r15, r12, r11
shrd r12, rbp, 56
bzhi r13, rcx, r11
adox r9, r12
adox rdi, r14
bzhi rdx, r9, r11
mov [ r8 + 0x38 ], r13
shr rcx, 56
bzhi rbp, rbx, r11
lea r15, [ r15 + rcx ]
add rcx, [ rsp + 0xa0 ]
bzhi rbx, r15, r11
mov r12, rdx
mov rdx, [ rsi + 0x0 ]
mulx r14, r13, [ rax + 0x10 ]
shrd r9, rdi, 56
mov rdx, r13
add rdx, [ rsp + 0x70 ]
adcx r14, [ rsp + 0x68 ]
add rdx, r9
adc r14, 0x0
bzhi rdi, rdx, r11
mov [ r8 + 0x10 ], rdi
shr r15, 56
shrd rdx, r14, 56
bzhi r13, r10, r11
lea r15, [ r15 + r12 ]
lea rdx, [ rdx + rbp ]
mov r10, rdx
shr r10, 56
lea r10, [ r10 + rcx ]
bzhi r12, rdx, r11
bzhi rbp, r10, r11
mov [ r8 + 0x18 ], r12
shr r10, 56
mov [ r8 + 0x20 ], rbp
mov [ r8 + 0x8 ], r15
lea r10, [ r10 + r13 ]
mov [ r8 + 0x28 ], r10
mov [ r8 + 0x0 ], rbx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 304
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.3288
; seed 1302744888875458 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8152991 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=42, initial num_batches=31): 214623 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.026324449517974448
; number reverted permutation / tried permutation: 69916 / 94969 =73.620%
; number reverted decision / tried decision: 53346 / 95030 =56.136%
; validated in 4.459s
