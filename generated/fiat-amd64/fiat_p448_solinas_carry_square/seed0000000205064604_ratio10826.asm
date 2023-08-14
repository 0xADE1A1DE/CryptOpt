SECTION .text
	GLOBAL fiat_p448_solinas_carry_square
fiat_p448_solinas_carry_square:
sub rsp, 424
mov rax, 0x1 
shlx r10, [ rsi + 0x10 ], rax
shlx r11, [ rsi + 0x28 ], rax
shlx rdx, [ rsi + 0x20 ], rax
shlx rcx, [ rsi + 0x30 ], rax
mov r8, rdx
mov rdx, [ rsi + 0x30 ]
mulx rax, r9, rdx
mov rdx, r11
mov [ rsp - 0x80 ], rbx
mulx rbx, r11, [ rsi + 0x20 ]
mov [ rsp - 0x78 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x60 ], r14
mov [ rsp - 0x58 ], r15
mulx r15, r14, rcx
mov rdx, rcx
mov [ rsp - 0x50 ], rdi
mulx rdi, rcx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], r13
mov r13, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r12
lea r12, [r13 + r13]
mov [ rsp - 0x38 ], r12
mulx r12, r13, [ rsi + 0x18 ]
mov [ rsp - 0x30 ], rdi
mov rdi, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], r10
mulx r10, rcx, rdx
mov rdx, 0x1 
mov [ rsp - 0x18 ], r12
shlx r12, [ rsi + 0x18 ], rdx
mov rdx, r12
mov [ rsp - 0x10 ], r13
mulx r13, r12, [ rsi + 0x10 ]
mov [ rsp - 0x8 ], r13
mov [ rsp + 0x0 ], r12
mulx r12, r13, [ rsi + 0x8 ]
mov [ rsp + 0x8 ], r12
imul r12, [ rsi + 0x38 ], 0x2
mov [ rsp + 0x10 ], r13
mov [ rsp + 0x18 ], rbx
mulx rbx, r13, [ rsi + 0x0 ]
mov rdx, r12
mov [ rsp + 0x20 ], rbx
mulx rbx, r12, [ rsi + 0x28 ]
mov [ rsp + 0x28 ], r13
mov r13, r9
mov [ rsp + 0x30 ], r11
xor r11, r11
adox r13, r12
mov [ rsp + 0x38 ], r15
mov r15, rbx
adox r15, rax
mov [ rsp + 0x40 ], r8
mulx r8, r11, [ rsi + 0x10 ]
mov [ rsp + 0x48 ], r8
mov [ rsp + 0x50 ], r11
mulx r11, r8, [ rsi + 0x30 ]
mov [ rsp + 0x58 ], r11
mov [ rsp + 0x60 ], r8
mulx r8, r11, [ rsi + 0x20 ]
mov [ rsp + 0x68 ], r8
mov r8, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x70 ], r11
mov [ rsp + 0x78 ], r14
mulx r14, r11, rdi
mov rdx, rdi
mov [ rsp + 0x80 ], r14
mulx r14, rdi, [ rsi + 0x0 ]
mov [ rsp + 0x88 ], r14
mov r14, r13
adcx r14, r9
adcx rax, r15
test al, al
adox r14, r12
adox rbx, rax
mov r9, rdx
mov rdx, [ rsi + 0x18 ]
mulx rax, r12, rbp
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0x90 ], rdi
mov [ rsp + 0x98 ], r11
mulx r11, rdi, rdx
adcx r14, rcx
mov rdx, r10
adcx rdx, rbx
xor rbx, rbx
adox r13, rcx
adox r10, r15
adcx r14, r12
mov rcx, rax
adcx rcx, rdx
xor r15, r15
adox r14, [ rsp + 0x78 ]
adox rcx, [ rsp + 0x38 ]
adcx r14, rdi
adcx r11, rcx
mov rdx, [ rsi + 0x8 ]
mulx rdi, rbx, [ rsp + 0x40 ]
add r13, r12
adcx rax, r10
xor rdx, rdx
adox r13, [ rsp + 0x78 ]
adox rax, [ rsp + 0x38 ]
mov rdx, r8
mulx r15, r8, [ rsi + 0x8 ]
mov r12, [ rsp + 0x60 ]
mov r10, r12
adcx r10, r12
mov rcx, [ rsp + 0x58 ]
mov [ rsp + 0xa0 ], rdi
mov rdi, rcx
adcx rdi, rcx
add r10, [ rsp + 0x30 ]
adcx rdi, [ rsp + 0x18 ]
mov [ rsp + 0xa8 ], rbx
mov rbx, rdx
mov rdx, [ rsi + 0x10 ]
mov [ rsp + 0xb0 ], r11
mov [ rsp + 0xb8 ], r14
mulx r14, r11, [ rsp + 0x40 ]
mov rdx, r9
mov [ rsp + 0xc0 ], r14
mulx r14, r9, [ rsi + 0x28 ]
xor rdx, rdx
adox r9, [ rsp + 0x70 ]
adox r14, [ rsp + 0x68 ]
adcx r13, r8
mov [ rsp + 0xc8 ], r11
mov r11, r15
adcx r11, rax
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0xd0 ], r11
mulx r11, rax, [ rsp + 0x40 ]
add r10, [ rsp - 0x10 ]
adcx rdi, [ rsp - 0x18 ]
mov rdx, r9
mov [ rsp + 0xd8 ], rdi
xor rdi, rdi
adox rdx, rax
adox r11, r14
mov rax, rdx
mov rdx, [ rsi + 0x8 ]
mov [ rsp + 0xe0 ], r10
mulx r10, rdi, [ rsp - 0x20 ]
adcx r9, rdi
adcx r10, r14
mov rdx, [ rsi + 0x10 ]
mulx rdi, r14, rbp
test al, al
adox r12, [ rsp + 0x30 ]
adox rcx, [ rsp + 0x18 ]
adcx r9, [ rsp + 0x28 ]
adcx r10, [ rsp + 0x20 ]
mov rdx, r9
shrd rdx, r10, 56
xor r10, r10
adox r12, [ rsp - 0x10 ]
adox rcx, [ rsp - 0x18 ]
adcx r12, [ rsp + 0x50 ]
adcx rcx, [ rsp + 0x48 ]
mov r10, rdx
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0xe8 ], rcx
mov [ rsp + 0xf0 ], r12
mulx r12, rcx, rdx
test al, al
adox rax, r14
adox rdi, r11
mov rdx, [ rsi + 0x0 ]
mulx r14, r11, rbx
mov rdx, [ rsi + 0x38 ]
mov [ rsp + 0xf8 ], r13
mov [ rsp + 0x100 ], r12
mulx r12, r13, rdx
adcx rax, [ rsp - 0x28 ]
adcx rdi, [ rsp - 0x30 ]
mov rdx, r8
test al, al
adox rdx, [ rsp + 0xb8 ]
adox r15, [ rsp + 0xb0 ]
adcx rax, r11
adcx r14, rdi
add rdx, [ rsp + 0x10 ]
adcx r15, [ rsp + 0x8 ]
mov r8, 0x38 
bzhi r11, rax, r8
mov rdi, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x108 ], r11
mulx r11, r8, [ rsp + 0x40 ]
adox rdi, r8
adox r11, r15
shrd rax, r14, 56
xor rdx, rdx
adox rdi, r10
adox r11, rdx
mov r10, rax
adcx r10, rdi
adc r11, 0x0
mov rdx, [ rsi + 0x18 ]
mulx r15, r14, rbx
mov rdx, r13
xor rbx, rbx
adox rdx, r13
mov r8, r12
adox r8, r12
adcx rdx, rcx
adcx r8, [ rsp + 0x100 ]
xor rdi, rdi
adox r13, rcx
adox r12, [ rsp + 0x100 ]
adcx rdx, [ rsp + 0x98 ]
adcx r8, [ rsp + 0x80 ]
add r13, [ rsp + 0x98 ]
adcx r12, [ rsp + 0x80 ]
xor rbx, rbx
adox r13, r14
mov rdi, r15
adox rdi, r12
adcx rdx, r14
adcx r15, r8
mov rcx, rdx
mov rdx, [ rsi + 0x0 ]
mulx r8, r14, rdx
mov rdx, [ rsp - 0x38 ]
mulx rbx, r12, [ rsi + 0x0 ]
mov rdx, r14
mov [ rsp + 0x110 ], rdi
xor rdi, rdi
adox rdx, [ rsp + 0xf8 ]
adox r8, [ rsp + 0xd0 ]
adcx rax, rdx
adc r8, 0x0
mov rdx, [ rsi + 0x18 ]
mulx rdi, r14, rdx
mov rdx, 0xffffffffffffff 
mov [ rsp + 0x118 ], r13
mov r13, rax
and r13, rdx
mov rdx, rbp
mov [ rsp + 0x120 ], r13
mulx r13, rbp, [ rsi + 0x8 ]
shrd rax, r8, 56
mov r8, r12
add r8, [ rsp + 0xf0 ]
adcx rbx, [ rsp + 0xe8 ]
xor r12, r12
adox r8, rax
adox rbx, r12
adcx rcx, r14
adcx rdi, r15
mov r15, [ rsp + 0xe0 ]
xor r14, r14
adox r15, [ rsp + 0x50 ]
mov r12, [ rsp + 0xd8 ]
adox r12, [ rsp + 0x48 ]
adcx rcx, [ rsp + 0xc8 ]
adcx rdi, [ rsp + 0xc0 ]
xor rax, rax
adox r15, [ rsp + 0x0 ]
adox r12, [ rsp - 0x8 ]
mov r14, r8
shrd r14, rbx, 56
mov rbx, r10
shrd rbx, r11, 56
test al, al
adox rcx, rbp
adox r13, rdi
adcx rcx, [ rsp + 0x90 ]
adcx r13, [ rsp + 0x88 ]
xor r11, r11
adox r15, [ rsp + 0xa8 ]
adox r12, [ rsp + 0xa0 ]
mulx rbp, rax, [ rsi + 0x0 ]
adcx r15, rax
adcx rbp, r12
add r15, rbx
adc rbp, 0x0
mov rdx, r15
shrd rdx, rbp, 56
xor rdi, rdi
adox rcx, rdx
adox r13, rdi
mov r11, [ rsp - 0x40 ]
mov rbx, r11
adcx rbx, [ rsp + 0x118 ]
mov r12, [ rsp - 0x48 ]
adcx r12, [ rsp + 0x110 ]
mov r11, rcx
shrd r11, r13, 56
mov rax, 0xffffffffffffff 
and rcx, rax
mov rdx, [ rsi + 0x0 ]
mulx r13, rbp, [ rsp - 0x20 ]
add r11, [ rsp + 0x108 ]
test al, al
adox rbx, rbp
adox r13, r12
adcx rbx, r14
adc r13, 0x0
mov rdx, rbx
shrd rdx, r13, 56
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x30 ], rcx
and r10, rax
and rbx, rax
mov r12, r11
shr r12, 56
lea r10, [ r10 + r12 ]
and r9, rax
lea rdx, [ rdx + r9 ]
add r12, [ rsp + 0x120 ]
mov rcx, rdx
shr rcx, 56
lea rcx, [ rcx + r10 ]
and rdx, rax
mov [ r14 + 0x18 ], rdx
mov rbp, rcx
and rbp, rax
shr rcx, 56
mov r13, r12
and r13, rax
mov [ r14 + 0x0 ], r13
mov [ r14 + 0x20 ], rbp
and r15, rax
lea rcx, [ rcx + r15 ]
and r8, rax
mov [ r14 + 0x28 ], rcx
and r11, rax
mov [ r14 + 0x38 ], r11
shr r12, 56
mov [ r14 + 0x10 ], rbx
lea r12, [ r12 + r8 ]
mov [ r14 + 0x8 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 424
ret
; cpu 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
; ratio 1.0826
; seed 0457084506990814 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 3415080 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=97, initial num_batches=31): 117621 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.03444165290417794
; number reverted permutation / tried permutation: 66686 / 95018 =70.182%
; number reverted decision / tried decision: 61771 / 94981 =65.035%
; validated in 2.44s
