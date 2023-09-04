SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 384
imul rax, [ rsi + 0x10 ], 0x2
mov rdx, [ rsi + 0x20 ]
mulx r11, r10, rdx
mov rdx, [ rsi + 0x28 ]
mulx r8, rcx, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, rdx
mov rdx, 0x1 
mov [ rsp - 0x78 ], rbp
shlx rbp, [ rsi + 0x28 ], rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov r12, rdx
shl r12, 0x1
imul rdx, [ rsi + 0x30 ], 0x2
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], r14
mulx r14, r12, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r13
mov r13, r9
add r13, r9
mov [ rsp - 0x30 ], r11
mov r11, rbx
adcx r11, rbx
mov [ rsp - 0x28 ], r10
xor r10, r10
adox r9, rcx
mov [ rsp - 0x20 ], rdi
mov rdi, r8
adox rdi, rbx
imul rbx, [ rsi + 0x38 ], 0x2
mov r10, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x18 ], rdi
mov [ rsp - 0x10 ], r9
mulx r9, rdi, rbx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], r15
mov [ rsp + 0x0 ], r9
mulx r9, r15, rdx
mov rdx, r10
mov [ rsp + 0x8 ], r9
mulx r9, r10, [ rsi + 0x20 ]
mov [ rsp + 0x10 ], r9
mov r9, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x18 ], r10
mov [ rsp + 0x20 ], r15
mulx r15, r10, rbx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x28 ], r15
mov [ rsp + 0x30 ], r10
mulx r10, r15, rbp
mov rdx, r9
mov [ rsp + 0x38 ], r10
mulx r10, r9, [ rsi + 0x0 ]
mov [ rsp + 0x40 ], r10
mov r10, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x48 ], r9
mov [ rsp + 0x50 ], r15
mulx r15, r9, rbp
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x58 ], rdi
mov [ rsp + 0x60 ], r14
mulx r14, rdi, rbx
mov rdx, rdi
test al, al
adox rdx, r9
mov [ rsp + 0x68 ], r12
mov r12, r15
adox r12, r14
mov [ rsp + 0x70 ], r12
mov r12, rdi
adcx r12, rdi
adcx r14, r14
mov rdi, [ rsi + 0x20 ]
mov [ rsp + 0x78 ], rdx
lea rdx, [rdi + rdi]
xor rdi, rdi
adox r13, rcx
adox r8, r11
mov rcx, rdx
mov rdx, [ rsi + 0x20 ]
mulx rdi, r11, rbx
mov rdx, r10
mov [ rsp + 0x80 ], r8
mulx r8, r10, [ rsi + 0x28 ]
adcx r10, r11
adcx rdi, r8
mov rdx, rax
mulx r11, rax, [ rsi + 0x8 ]
mov [ rsp + 0x88 ], r13
mulx r13, r8, [ rsi + 0x0 ]
add r12, r9
adcx r15, r14
test al, al
adox r12, [ rsp + 0x68 ]
adox r15, [ rsp + 0x60 ]
mov rdx, [ rsi + 0x18 ]
mulx r14, r9, rcx
adcx r12, [ rsp + 0x58 ]
adcx r15, [ rsp + 0x0 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x90 ], r13
mov [ rsp + 0x98 ], r8
mulx r8, r13, rdx
mov rdx, r10
mov [ rsp + 0xa0 ], r15
xor r15, r15
adox rdx, r9
adox r14, rdi
mov r9, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa8 ], r12
mulx r12, r15, rbx
mov rdx, rbp
mov [ rsp + 0xb0 ], r11
mulx r11, rbp, [ rsi + 0x10 ]
adcx r9, rbp
adcx r11, r14
mov r14, r13
add r14, r15
mov rbp, r12
adcx rbp, r8
mov [ rsp + 0xb8 ], rax
xor rax, rax
adox r9, [ rsp - 0x8 ]
adox r11, [ rsp - 0x20 ]
mov [ rsp + 0xc0 ], r11
mov r11, r14
adcx r11, r13
adcx r8, rbp
xor r13, r13
adox r11, r15
adox r12, r8
adcx r11, [ rsp - 0x28 ]
adcx r12, [ rsp - 0x30 ]
xchg rdx, rbx
mulx r15, rax, [ rsi + 0x0 ]
add r11, [ rsp + 0x50 ]
adcx r12, [ rsp + 0x38 ]
test al, al
adox r11, [ rsp - 0x38 ]
adox r12, [ rsp - 0x40 ]
adcx r9, rax
adcx r15, [ rsp + 0xc0 ]
mov r8, 0x38 
bzhi rax, r9, r8
adox r14, [ rsp - 0x28 ]
adox rbp, [ rsp - 0x30 ]
test al, al
adox r14, [ rsp + 0x50 ]
adox rbp, [ rsp + 0x38 ]
adcx r14, [ rsp - 0x38 ]
adcx rbp, [ rsp - 0x40 ]
add r14, [ rsp + 0x30 ]
adcx rbp, [ rsp + 0x28 ]
mov r13, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xc8 ], rax
mulx rax, r8, rdx
imul rdx, [ rsi + 0x18 ], 0x2
shrd r9, r15, 56
xor r15, r15
adox r14, r8
adox rax, rbp
adcx r11, [ rsp + 0x20 ]
adcx r12, [ rsp + 0x8 ]
mov rbp, r9
add rbp, r14
adc rax, 0x0
xor r8, r8
adox r11, [ rsp + 0x30 ]
adox r12, [ rsp + 0x28 ]
mulx r14, r15, [ rsi + 0x8 ]
adcx r10, [ rsp + 0xb8 ]
adcx rdi, [ rsp + 0xb0 ]
test al, al
adox r11, r15
adox r14, r12
mulx r15, r12, [ rsi + 0x0 ]
adcx r10, r12
adcx r15, rdi
mov rdi, r10
shrd rdi, r15, 56
mulx r15, r12, [ rsi + 0x10 ]
mov rdx, 0xffffffffffffff 
and r10, rdx
mov rdx, rcx
mulx r8, rcx, [ rsi + 0x0 ]
adox r11, rcx
adox r8, r14
adcx r11, rdi
adc r8, 0x0
add r9, r11
adc r8, 0x0
mov r14, r12
xor rdi, rdi
adox r14, [ rsp + 0xa8 ]
adox r15, [ rsp + 0xa0 ]
mov r12, [ rsp + 0x78 ]
adcx r12, [ rsp + 0x68 ]
mov rcx, [ rsp + 0x70 ]
adcx rcx, [ rsp + 0x60 ]
mov r11, r9
shrd r11, r8, 56
mov r8, rdx
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd0 ], r10
mulx r10, rdi, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0xd8 ], r10
mov [ rsp + 0xe0 ], rdi
mulx rdi, r10, [ rsp - 0x48 ]
xor rdx, rdx
adox r12, [ rsp + 0x58 ]
adox rcx, [ rsp + 0x0 ]
adcx r12, r10
adcx rdi, rcx
mov r10, rbp
shrd r10, rax, 56
add r12, r10
adc rdi, 0x0
mov rdx, [ rsi + 0x8 ]
mulx rcx, rax, r8
xor rdx, rdx
adox r14, rax
adox rcx, r15
mov rdx, r13
mulx r15, r13, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mulx rax, r10, rdx
mov rdx, rbx
mov [ rsp + 0xe8 ], rdi
mulx rdi, rbx, [ rsi + 0x8 ]
mov [ rsp + 0xf0 ], r12
mov [ rsp + 0xf8 ], rdi
mulx rdi, r12, [ rsi + 0x0 ]
adcx r14, r12
adcx rdi, rcx
mov rdx, [ rsp - 0x10 ]
add rdx, [ rsp + 0x18 ]
mov rcx, [ rsp - 0x18 ]
adcx rcx, [ rsp + 0x10 ]
test al, al
adox rdx, r13
mov r12, r15
adox r12, rcx
adcx rdx, r10
adcx rax, r12
add r14, r11
adc rdi, 0x0
mov r11, rdx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r10, r8
mov rdx, [ rsp + 0x18 ]
mov r8, rdx
add r8, [ rsp + 0x88 ]
mov r12, [ rsp + 0x10 ]
adcx r12, [ rsp + 0x80 ]
add r8, r13
adcx r15, r12
add r8, [ rsp + 0xe0 ]
adcx r15, [ rsp + 0xd8 ]
add r11, [ rsp + 0x98 ]
adcx rax, [ rsp + 0x90 ]
add r8, r10
adcx rcx, r15
xor rdx, rdx
adox r8, rbx
adox rcx, [ rsp + 0xf8 ]
adcx r8, [ rsp + 0x48 ]
adcx rcx, [ rsp + 0x40 ]
mov r13, r14
shrd r13, rdi, 56
mov rbx, 0x38 
bzhi r10, r14, rbx
adox r8, r13
adox rcx, rdx
bzhi r14, r8, rbx
shrd r8, rcx, 56
mov rdi, [ rsp + 0xf0 ]
mov r12, [ rsp + 0xe8 ]
mov r15, rdi
shrd r15, r12, 56
xor r12, r12
adox r11, r15
adox rax, r12
mov rdx, r11
shrd rdx, rax, 56
add rdx, [ rsp + 0xd0 ]
bzhi r13, r11, rbx
mov rcx, [ rsp - 0x50 ]
mov [ rcx + 0x10 ], r13
bzhi r15, rdx, rbx
bzhi r11, r9, rbx
add r8, [ rsp + 0xc8 ]
mov r9, r8
shr r9, 56
bzhi rax, r8, rbx
shr rdx, 56
lea r11, [ r11 + r9 ]
bzhi r13, rbp, rbx
lea rdx, [ rdx + r11 ]
bzhi rbp, rdx, rbx
mov [ rcx + 0x20 ], rbp
lea r13, [ r13 + r9 ]
bzhi r8, r13, rbx
shr rdx, 56
lea rdx, [ rdx + r10 ]
mov [ rcx + 0x28 ], rdx
shr r13, 56
bzhi r10, rdi, rbx
lea r13, [ r13 + r10 ]
mov [ rcx + 0x8 ], r13
mov [ rcx + 0x38 ], rax
mov [ rcx + 0x30 ], r14
mov [ rcx + 0x0 ], r8
mov [ rcx + 0x18 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 384
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.1436
; seed 0833215647959282 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3813271 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=71, initial num_batches=31): 125901 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.033016536196876646
; number reverted permutation / tried permutation: 69776 / 94440 =73.884%
; number reverted decision / tried decision: 65700 / 95559 =68.753%
; validated in 2.529s
