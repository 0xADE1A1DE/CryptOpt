SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 440
mov rax, rdx
mov rdx, [ rsi + 0x30 ]
mulx r11, r10, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mulx r8, rcx, [ rax + 0x38 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x30 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x18 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x38 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x48 ], r12
mov [ rsp - 0x40 ], rbp
mulx rbp, r12, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x38 ], rbp
mov [ rsp - 0x30 ], r12
mulx r12, rbp, [ rax + 0x30 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x28 ], r8
mov [ rsp - 0x20 ], rcx
mulx rcx, r8, [ rsi + 0x8 ]
mov rdx, [ rax + 0x0 ]
mov [ rsp - 0x18 ], rcx
mov [ rsp - 0x10 ], r8
mulx r8, rcx, [ rsi + 0x20 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp - 0x8 ], r8
mov [ rsp + 0x0 ], rcx
mulx rcx, r8, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x8 ], rcx
mov [ rsp + 0x10 ], r8
mulx r8, rcx, [ rax + 0x8 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x18 ], rbx
mov [ rsp + 0x20 ], r9
mulx r9, rbx, [ rsi + 0x20 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x28 ], r9
mov [ rsp + 0x30 ], rbx
mulx rbx, r9, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x38 ], rbx
mov [ rsp + 0x40 ], r9
mulx r9, rbx, [ rax + 0x28 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x48 ], r14
mov [ rsp + 0x50 ], r13
mulx r13, r14, [ rsi + 0x20 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0x58 ], r13
mov [ rsp + 0x60 ], r14
mulx r14, r13, [ rsi + 0x30 ]
mov rdx, rbx
add rdx, r13
mov [ rsp + 0x68 ], r12
mov r12, r14
adcx r12, r9
add rdx, r15
mov [ rsp + 0x70 ], rbp
mov rbp, rdi
adcx rbp, r12
mov r12, rdx
test al, al
adox r12, rbx
adox r9, rbp
mov rbx, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x78 ], r11
mov [ rsp + 0x80 ], r10
mulx r10, r11, [ rax + 0x10 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x88 ], r10
mov [ rsp + 0x90 ], r11
mulx r11, r10, [ rax + 0x8 ]
adcx r12, r13
adcx r14, r9
xor rdx, rdx
adox r12, r15
adox rdi, r14
adcx r12, rcx
mov r15, r8
adcx r15, rdi
test al, al
adox rbx, rcx
adox r8, rbp
adcx r12, [ rsp + 0x80 ]
adcx r15, [ rsp + 0x78 ]
mov rdx, [ rsi + 0x28 ]
mulx r13, rcx, [ rax + 0x18 ]
mov rdx, [ rax + 0x10 ]
mulx r9, rbp, [ rsi + 0x10 ]
xor rdx, rdx
adox rbx, [ rsp + 0x80 ]
adox r8, [ rsp + 0x78 ]
adcx rbx, rcx
mov r14, r13
adcx r14, r8
xor rdi, rdi
adox r12, rcx
adox r13, r15
mov rdx, [ rax + 0x20 ]
mulx rcx, r15, [ rsi + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mulx rdi, r8, [ rax + 0x28 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x98 ], r9
mov [ rsp + 0xa0 ], rbp
mulx rbp, r9, [ rax + 0x38 ]
adcx rbx, r15
mov rdx, rcx
adcx rdx, r14
mov r14, rdx
mov rdx, [ rax + 0x18 ]
mov [ rsp + 0xa8 ], r11
mov [ rsp + 0xb0 ], r10
mulx r10, r11, [ rsi + 0x38 ]
xor rdx, rdx
adox r12, r15
adox rcx, r13
adcx rbx, r8
mov r13, rdi
adcx r13, r14
test al, al
adox r12, r8
adox rdi, rcx
mov r15, r9
adcx r15, r9
mov r8, rbp
adcx r8, rbp
xor r14, r14
adox rbx, [ rsp + 0x70 ]
adox r13, [ rsp + 0x68 ]
adcx r9, r11
mov rdx, r10
adcx rdx, rbp
test al, al
adox rbx, [ rsp + 0x50 ]
adox r13, [ rsp + 0x48 ]
adcx r12, [ rsp + 0x70 ]
adcx rdi, [ rsp + 0x68 ]
test al, al
adox r9, [ rsp + 0x20 ]
adox rdx, [ rsp + 0x18 ]
mov rbp, rdx
mov rdx, [ rax + 0x28 ]
mulx r14, rcx, [ rsi + 0x28 ]
adcx r9, rcx
mov rdx, r14
adcx rdx, rbp
xor rbp, rbp
adox r15, r11
adox r10, r8
adcx r9, [ rsp + 0x30 ]
adcx rdx, [ rsp + 0x28 ]
test al, al
adox r9, [ rsp + 0x40 ]
adox rdx, [ rsp + 0x38 ]
adcx r15, [ rsp + 0x20 ]
adcx r10, [ rsp + 0x18 ]
add r15, rcx
adcx r14, r10
test al, al
adox r15, [ rsp + 0x30 ]
adox r14, [ rsp + 0x28 ]
mov r11, rdx
mov rdx, [ rax + 0x30 ]
mulx rcx, r8, [ rsi + 0x38 ]
mov rdx, r8
adcx rdx, [ rsp + 0x10 ]
mov r10, rcx
adcx r10, [ rsp + 0x8 ]
test al, al
adox r15, [ rsp + 0x40 ]
adox r14, [ rsp + 0x38 ]
mov [ rsp + 0xb8 ], r11
mov r11, rdx
adcx r11, r8
adcx rcx, r10
mov r8, rdx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xc0 ], r9
mulx r9, rbp, [ rax + 0x10 ]
test al, al
adox r8, rbp
mov rdx, r9
adox rdx, r10
adcx r11, [ rsp + 0x10 ]
adcx rcx, [ rsp + 0x8 ]
mov r10, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xc8 ], r14
mov [ rsp + 0xd0 ], r15
mulx r15, r14, [ rsi + 0x28 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp + 0xd8 ], rdi
mov [ rsp + 0xe0 ], r12
mulx r12, rdi, [ rsi + 0x28 ]
add r11, rbp
adcx r9, rcx
mov rdx, [ rsi + 0x30 ]
mulx rcx, rbp, [ rax + 0x18 ]
test al, al
adox r11, rbp
mov rdx, rcx
adox rdx, r9
mov r9, rdx
mov rdx, [ rax + 0x28 ]
mov [ rsp + 0xe8 ], r13
mov [ rsp + 0xf0 ], rbx
mulx rbx, r13, [ rsi + 0x20 ]
adcx r8, rbp
adcx rcx, r10
xor rdx, rdx
adox r11, r14
mov r10, r15
adox r10, r9
mov rdx, [ rsi + 0x30 ]
mulx r9, rbp, [ rax + 0x28 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0xf8 ], r12
mov [ rsp + 0x100 ], rdi
mulx rdi, r12, [ rsi + 0x38 ]
adcx r12, rbp
adcx r9, rdi
add r8, r14
adcx r15, rcx
mov rdx, [ rsi + 0x18 ]
mulx rcx, r14, [ rax + 0x0 ]
add r8, r13
mov rdx, rbx
adcx rdx, r15
mov rbp, rdx
mov rdx, [ rsi + 0x18 ]
mulx r15, rdi, [ rax + 0x30 ]
add r11, r13
adcx rbx, r10
add r12, [ rsp + 0x100 ]
adcx r9, [ rsp + 0xf8 ]
xor rdx, rdx
adox r12, [ rsp - 0x20 ]
adox r9, [ rsp - 0x28 ]
mov r13, r12
adcx r13, r14
adcx rcx, r9
mov rdx, [ rsi + 0x8 ]
mulx r14, r10, [ rax + 0x10 ]
xor rdx, rdx
adox r11, rdi
mov [ rsp + 0x108 ], rbp
mov rbp, r15
adox rbp, rbx
adcx r13, [ rsp + 0xb0 ]
adcx rcx, [ rsp + 0xa8 ]
test al, al
adox r13, r10
adox r14, rcx
mov rdx, [ rax + 0x18 ]
mulx r10, rbx, [ rsi + 0x0 ]
adcx r13, rbx
adcx r10, r14
mov rdx, [ rax + 0x38 ]
mulx r14, rcx, [ rsi + 0x10 ]
mov rdx, r13
shrd rdx, r10, 56
mov rbx, 0xffffffffffffff 
and r13, rbx
mov r10, rdx
mov rdx, [ rax + 0x0 ]
mov [ rsp + 0x110 ], r13
mulx r13, rbx, [ rsi + 0x28 ]
adox r11, rcx
mov rdx, r14
adox rdx, rbp
adcx r11, rbx
adcx r13, rdx
xor rbp, rbp
adox r11, [ rsp + 0x60 ]
adox r13, [ rsp + 0x58 ]
mov rdx, [ rax + 0x28 ]
mulx rbp, rbx, [ rsi + 0x10 ]
adcx r8, rdi
adcx r15, [ rsp + 0x108 ]
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0x118 ], r10
mulx r10, rdi, [ rax + 0x0 ]
add r12, rdi
adcx r10, r9
mov rdx, [ rax + 0x8 ]
mulx rdi, r9, [ rsi + 0x30 ]
xor rdx, rdx
adox r12, r9
adox rdi, r10
adcx r8, rcx
adcx r14, r15
mov rdx, [ rsi + 0x18 ]
mulx r15, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x28 ]
mulx r9, r10, [ rax + 0x10 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x120 ], r14
mov [ rsp + 0x128 ], r8
mulx r8, r14, [ rax + 0x0 ]
mov rdx, r14
add rdx, [ rsp + 0xf0 ]
adcx r8, [ rsp + 0xe8 ]
xor r14, r14
adox r11, rcx
adox r15, r13
mov r13, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, rcx, [ rax + 0x20 ]
adcx r12, r10
adcx r9, rdi
mov rdx, [ rax + 0x18 ]
mulx r10, rdi, [ rsi + 0x20 ]
add r12, rdi
adcx r10, r9
xor rdx, rdx
adox r12, rcx
adox r14, r10
adcx r12, rbx
adcx rbp, r14
add r12, [ rsp - 0x10 ]
adcx rbp, [ rsp - 0x18 ]
mov rbx, [ rsp + 0xe0 ]
test al, al
adox rbx, [ rsp + 0x50 ]
mov rcx, [ rsp + 0xd8 ]
adox rcx, [ rsp + 0x48 ]
mov rdx, [ rax + 0x38 ]
mulx rdi, r9, [ rsi + 0x0 ]
adcx r12, r9
adcx rdi, rbp
mov rdx, [ rsi + 0x8 ]
mulx r14, r10, [ rax + 0x18 ]
test al, al
adox rbx, [ rsp + 0x0 ]
adox rcx, [ rsp - 0x8 ]
mov rdx, [ rax + 0x8 ]
mulx r9, rbp, [ rsi + 0x18 ]
adcx rbx, rbp
adcx r9, rcx
mov rdx, r12
shrd rdx, rdi, 56
mov rdi, rdx
add rdi, r13
adc r8, 0x0
mov r13, rdi
shrd r13, r8, 56
add rbx, [ rsp + 0xa0 ]
adcx r9, [ rsp + 0x98 ]
mov rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, rbp, [ rax + 0x20 ]
xor rdx, rdx
adox rbx, r10
adox r14, r9
adcx rbx, rbp
adcx r8, r14
mov rdx, [ rax + 0x0 ]
mulx r9, r10, [ rsi + 0x8 ]
xor rdx, rdx
adox rbx, [ rsp + 0x118 ]
adox r8, rdx
mov rbp, r10
adcx rbp, [ rsp + 0x128 ]
adcx r9, [ rsp + 0x120 ]
xor r14, r14
adox rcx, rbx
adox r8, r14
mov rdx, [ rax + 0x18 ]
mulx rbx, r10, [ rsi + 0x10 ]
adcx r11, r10
adcx rbx, r15
mov rdx, [ rax + 0x0 ]
mulx r10, r15, [ rsi + 0x30 ]
mov rdx, [ rax + 0x20 ]
mov [ rsp + 0x130 ], r13
mulx r13, r14, [ rsi + 0x8 ]
add r11, r14
adcx r13, rbx
mov rdx, rcx
shrd rdx, r8, 56
mov r8, r15
test al, al
adox r8, [ rsp + 0xd0 ]
adox r10, [ rsp + 0xc8 ]
mov rbx, rdx
mov rdx, [ rax + 0x8 ]
mulx r14, r15, [ rsi + 0x28 ]
adcx r8, r15
adcx r14, r10
mov rdx, [ rax + 0x8 ]
mulx r15, r10, [ rsi + 0x0 ]
test al, al
adox rbp, r10
adox r15, r9
adcx rbp, [ rsp + 0x130 ]
adc r15, 0x0
mov rdx, [ rax + 0x28 ]
mulx r10, r9, [ rsi + 0x0 ]
test al, al
adox r11, r9
adox r10, r13
adcx r11, rbx
adc r10, 0x0
mov rdx, [ rsi + 0x20 ]
mulx rbx, r13, [ rax + 0x10 ]
mov rdx, r11
shrd rdx, r10, 56
add r8, r13
adcx rbx, r14
add r8, [ rsp - 0x40 ]
adcx rbx, [ rsp - 0x48 ]
mov r14, rdx
mov rdx, [ rax + 0x20 ]
mulx r10, r9, [ rsi + 0x10 ]
xor rdx, rdx
adox r8, r9
adox r10, rbx
mov rdx, [ rsi + 0x8 ]
mulx rbx, r13, [ rax + 0x28 ]
adcx r8, r13
adcx rbx, r10
mov rdx, 0x38 
bzhi r9, rbp, rdx
shrd rbp, r15, 56
mov rdx, [ rsi + 0x10 ]
mulx r10, r15, [ rax + 0x0 ]
mov rdx, r15
test al, al
adox rdx, [ rsp + 0xc0 ]
adox r10, [ rsp + 0xb8 ]
adcx rdx, [ rsp - 0x30 ]
adcx r10, [ rsp - 0x38 ]
test al, al
adox rdx, [ rsp + 0x90 ]
adox r10, [ rsp + 0x88 ]
adcx rdx, rbp
adc r10, 0x0
mov r13, rdx
mov rdx, [ rsi + 0x0 ]
mulx r15, rbp, [ rax + 0x30 ]
test al, al
adox r8, rbp
adox r15, rbx
mov rdx, r13
shrd rdx, r10, 56
add rdx, [ rsp + 0x110 ]
mov rbx, 0xffffffffffffff 
mov r10, rdx
and r10, rbx
adox r8, r14
mov rbp, 0x0 
adox r15, rbp
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x18 ], r10
and r12, rbx
mov r10, r8
shrd r10, r15, 56
shr rdx, 56
lea r10, [ r10 + r12 ]
mov r15, r10
and r15, rbx
and rdi, rbx
shr r10, 56
lea rdi, [ rdi + r10 ]
mov r12, rdi
shr r12, 56
and r11, rbx
and rcx, rbx
lea rcx, [ rcx + r10 ]
and r13, rbx
mov [ r14 + 0x10 ], r13
lea rdx, [ rdx + rcx ]
mov r10, rdx
shr r10, 56
lea r12, [ r12 + r9 ]
lea r10, [ r10 + r11 ]
mov [ r14 + 0x28 ], r10
mov [ r14 + 0x8 ], r12
and rdx, rbx
and rdi, rbx
and r8, rbx
mov [ r14 + 0x0 ], rdi
mov [ r14 + 0x20 ], rdx
mov [ r14 + 0x30 ], r8
mov [ r14 + 0x38 ], r15
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 440
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.2522
; seed 2767509975065951 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 6346868 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=41, initial num_batches=31): 153529 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.024189726334311663
; number reverted permutation / tried permutation: 69150 / 94898 =72.868%
; number reverted decision / tried decision: 53770 / 95101 =56.540%
; validated in 5.586s
