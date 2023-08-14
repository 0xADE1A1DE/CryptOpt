SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 360
imul rax, [ rsi + 0x28 ], 0x2
imul r10, [ rsi + 0x30 ], 0x2
mov r11, 0x1 
shlx rdx, [ rsi + 0x38 ], r11
mov rcx, [ rsi + 0x18 ]
mov r8, rcx
shl r8, 0x1
mulx r9, rcx, [ rsi + 0x30 ]
xchg rdx, r10
mov [ rsp - 0x80 ], rbx
mulx rbx, r11, [ rsi + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
xchg rdx, rax
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x20 ]
mov [ rsp - 0x58 ], r15
mov r15, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x50 ], rdi
mov [ rsp - 0x48 ], r12
mulx r12, rdi, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], rbp
mov [ rsp - 0x38 ], r12
mulx r12, rbp, r10
mov rdx, rcx
test al, al
adox rdx, rcx
mov [ rsp - 0x30 ], rdi
mov rdi, r9
adox rdi, r9
mov [ rsp - 0x28 ], rbx
mov rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x20 ], r11
mov [ rsp - 0x18 ], rdi
mulx rdi, r11, r15
mov rdx, r15
mov [ rsp - 0x10 ], rdi
mulx rdi, r15, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], r11
mov [ rsp + 0x0 ], rdi
mulx rdi, r11, [ rsi + 0x8 ]
mov [ rsp + 0x8 ], rdi
mov [ rsp + 0x10 ], r11
mulx r11, rdi, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x18 ], r15
mov [ rsp + 0x20 ], rbx
mulx rbx, r15, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x28 ], r14
mov [ rsp + 0x30 ], r13
mulx r13, r14, r10
mov rdx, r15
adcx rdx, r14
mov [ rsp + 0x38 ], r12
mov r12, r13
adcx r12, rbx
mov [ rsp + 0x40 ], rbp
mov rbp, rdx
mov [ rsp + 0x48 ], r11
xor r11, r11
adox rbp, r15
adox rbx, r12
adcx rbp, r14
adcx r13, rbx
mov r15, rdx
mov rdx, [ rsi + 0x20 ]
mulx rbx, r14, rdx
xor rdx, rdx
adox r15, r14
mov r11, rbx
adox r11, r12
mov rdx, r8
mulx r12, r8, [ rsi + 0x10 ]
adcx rbp, r14
adcx rbx, r13
add rbp, rdi
adcx rbx, [ rsp + 0x48 ]
mulx r14, r13, [ rsi + 0x0 ]
add r15, rdi
adcx r11, [ rsp + 0x48 ]
mov rdi, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x50 ], r12
mov [ rsp + 0x58 ], r8
mulx r8, r12, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x60 ], r14
mov [ rsp + 0x68 ], r13
mulx r13, r14, rax
xor rdx, rdx
adox rbp, r14
mov [ rsp + 0x70 ], r11
mov r11, r13
adox r11, rbx
adcx rbp, r12
adcx r8, r11
xor rbx, rbx
adox rbp, [ rsp + 0x40 ]
adox r8, [ rsp + 0x38 ]
mov rdx, rdi
mulx r12, rdi, [ rsi + 0x8 ]
adcx rbp, rdi
adcx r12, r8
mov rdx, rax
mulx r11, rax, [ rsi + 0x18 ]
mov r8, [ rsp + 0x20 ]
test al, al
adox r8, [ rsp + 0x30 ]
mov rdi, [ rsp - 0x18 ]
adox rdi, [ rsp + 0x28 ]
adcx r8, rax
mov [ rsp + 0x78 ], r12
mov r12, r11
adcx r12, rdi
mov rdi, [ rsi + 0x20 ]
mov rbx, rdi
shl rbx, 0x1
xor rdi, rdi
adox r15, r14
adox r13, [ rsp + 0x70 ]
adcx rcx, [ rsp + 0x30 ]
adcx r9, [ rsp + 0x28 ]
add r15, [ rsp + 0x40 ]
adcx r13, [ rsp + 0x38 ]
xor r14, r14
adox rcx, rax
adox r11, r9
mulx rax, rdi, [ rsi + 0x28 ]
xchg rdx, r10
mulx r14, r9, [ rsi + 0x20 ]
adcx rdi, r9
adcx r14, rax
mulx r9, rax, [ rsi + 0x10 ]
xchg rdx, rbx
mov [ rsp + 0x80 ], r13
mov [ rsp + 0x88 ], r15
mulx r15, r13, [ rsi + 0x18 ]
test al, al
adox r8, rax
mov [ rsp + 0x90 ], rbp
mov rbp, r9
adox rbp, r12
mov r12, rdi
adcx r12, r13
adcx r15, r14
add rcx, rax
adcx r9, r11
imul r11, [ rsi + 0x10 ], 0x2
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0x98 ], r9
mulx r9, r13, r11
test al, al
adox rdi, r13
adox r9, r14
mov rdx, [ rsi + 0x0 ]
mulx r13, r14, r11
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xa0 ], r13
mulx r13, r11, rdx
adcx rdi, [ rsp + 0x68 ]
adcx r9, [ rsp + 0x60 ]
mov rdx, 0x38 
mov [ rsp + 0xa8 ], r14
bzhi r14, rdi, rdx
shrd rdi, r9, 56
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xb0 ], r14
mulx r14, r9, rdx
xor rdx, rdx
adox r8, [ rsp + 0x58 ]
adox rbp, [ rsp + 0x50 ]
mov [ rsp + 0xb8 ], rcx
mov rcx, r9
adcx rcx, r9
mov [ rsp + 0xc0 ], rbp
mov rbp, r14
adcx rbp, r14
mov rdx, rbx
mov [ rsp + 0xc8 ], r8
mulx r8, rbx, [ rsi + 0x0 ]
mov [ rsp + 0xd0 ], rdi
xor rdi, rdi
adox rcx, r11
mov [ rsp + 0xd8 ], r8
mov r8, r13
adox r8, rbp
adcx r12, [ rsp + 0x18 ]
adcx r15, [ rsp + 0x0 ]
test al, al
adox r9, r11
adox r13, r14
mov r11, rdx
mov rdx, [ rsi + 0x8 ]
mulx rbp, r14, r10
adcx r9, [ rsp - 0x20 ]
adcx r13, [ rsp - 0x28 ]
mov rdx, r11
mulx r10, r11, [ rsi + 0x18 ]
xor rdx, rdx
adox r9, r11
mov rdi, r10
adox rdi, r13
adcx r12, r14
adcx rbp, r15
mov rdx, [ rsi + 0x0 ]
mulx r14, r15, rdx
add r12, rbx
adcx rbp, [ rsp + 0xd8 ]
xor rdx, rdx
adox rcx, [ rsp - 0x20 ]
adox r8, [ rsp - 0x28 ]
mov rdx, [ rsi + 0x18 ]
mulx r13, rbx, rdx
adcx rcx, r11
adcx r10, r8
xor rdx, rdx
adox rcx, rbx
adox r13, r10
mov rdx, rax
mulx r11, rax, [ rsi + 0x10 ]
mulx rbx, r8, [ rsi + 0x0 ]
adcx r9, [ rsp - 0x30 ]
adcx rdi, [ rsp - 0x38 ]
mov r10, r12
shrd r10, rbp, 56
mov rbp, 0xffffffffffffff 
and r12, rbp
mov rbp, r8
adox rbp, [ rsp + 0x90 ]
adox rbx, [ rsp + 0x78 ]
adcx rcx, rax
adcx r11, r13
xor r13, r13
adox rbp, [ rsp + 0xd0 ]
adox rbx, r13
mov rax, r10
adcx rax, rbp
adc rbx, 0x0
mulx rbp, r8, [ rsi + 0x8 ]
mov rdx, rax
shrd rdx, rbx, 56
mov r13, 0x38 
mov [ rsp + 0xe0 ], r12
bzhi r12, rax, r13
mov rax, r15
adox rax, [ rsp + 0x88 ]
adox r14, [ rsp + 0x80 ]
mov r15, r8
add r15, [ rsp + 0xc8 ]
adcx rbp, [ rsp + 0xc0 ]
mov rbx, [ rsi + 0x8 ]
lea r8, [rbx + rbx]
test al, al
adox r15, [ rsp - 0x8 ]
adox rbp, [ rsp - 0x10 ]
adcx r10, rax
adc r14, 0x0
mov rbx, r10
shrd rbx, r14, 56
xchg rdx, r8
mulx r14, rax, [ rsi + 0x0 ]
mov rdx, rax
add rdx, [ rsp + 0xb8 ]
adcx r14, [ rsp + 0x98 ]
add r15, r8
adc rbp, 0x0
mov r8, r15
shrd r8, rbp, 56
add rdx, rbx
adc r14, 0x0
add rcx, [ rsp + 0x10 ]
adcx r11, [ rsp + 0x8 ]
xor rbx, rbx
adox r9, [ rsp + 0xa8 ]
adox rdi, [ rsp + 0xa0 ]
adcx rcx, [ rsp - 0x40 ]
adcx r11, [ rsp - 0x48 ]
test al, al
adox rcx, r8
adox r11, rbx
mov rax, rdx
shrd rax, r14, 56
add r9, rax
adc rdi, 0x0
mov rbp, rcx
shrd rbp, r11, 56
bzhi r8, rcx, r13
add rbp, [ rsp + 0xe0 ]
mov r14, rbp
shr r14, 56
bzhi rcx, r10, r13
lea rcx, [ rcx + r14 ]
bzhi r10, r9, r13
bzhi r11, rcx, r13
mov rax, [ rsp - 0x50 ]
mov [ rax + 0x0 ], r11
shrd r9, rdi, 56
mov [ rax + 0x10 ], r10
shr rcx, 56
add r9, [ rsp + 0xb0 ]
bzhi rdi, rdx, r13
lea rcx, [ rcx + rdi ]
mov [ rax + 0x8 ], rcx
lea r12, [ r12 + r14 ]
mov rdx, r9
shr rdx, 56
lea rdx, [ rdx + r12 ]
bzhi r14, r9, r13
mov [ rax + 0x18 ], r14
bzhi r10, rdx, r13
mov [ rax + 0x20 ], r10
bzhi r11, r15, r13
mov [ rax + 0x30 ], r8
shr rdx, 56
bzhi r15, rbp, r13
mov [ rax + 0x38 ], r15
lea rdx, [ rdx + r11 ]
mov [ rax + 0x28 ], rdx
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 360
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.0738
; seed 1961860952008788 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3821302 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=76, initial num_batches=31): 127226 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03329388779007783
; number reverted permutation / tried permutation: 73022 / 95163 =76.734%
; number reverted decision / tried decision: 67280 / 94836 =70.944%
; validated in 2.415s
