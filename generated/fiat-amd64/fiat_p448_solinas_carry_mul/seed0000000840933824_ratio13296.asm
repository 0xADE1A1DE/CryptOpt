SECTION .text
	GLOBAL fiat_p448_solinas_carry_mul
fiat_p448_solinas_carry_mul:
sub rsp, 264
mov rax, rdx
mov rdx, [ rdx + 0x30 ]
mulx r11, r10, [ rsi + 0x38 ]
mov rdx, [ rax + 0x10 ]
mulx r8, rcx, [ rsi + 0x38 ]
mov rdx, [ rax + 0x30 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rsi + 0x30 ]
mov rdx, [ rax + 0x18 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x38 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rax + 0x38 ]
mov rdx, r10
add rdx, r15
mov [ rsp - 0x48 ], r12
mov r12, rdi
adcx r12, r11
mov [ rsp - 0x40 ], rbp
mov rbp, rdx
mov rdx, [ rsi + 0x30 ]
mov [ rsp - 0x38 ], r14
mov [ rsp - 0x30 ], r13
mulx r13, r14, [ rax + 0x10 ]
mov rdx, [ rax + 0x28 ]
mov [ rsp - 0x28 ], r13
mov [ rsp - 0x20 ], r14
mulx r14, r13, [ rsi + 0x30 ]
mov rdx, rbp
add rdx, r10
adcx r11, r12
test al, al
adox rdx, r15
adox rdi, r11
adcx rdx, rcx
mov r10, r8
adcx r10, rdi
mov r15, rdx
mov rdx, [ rax + 0x18 ]
mulx rdi, r11, [ rsi + 0x30 ]
add r15, r11
mov rdx, rdi
adcx rdx, r10
mov r10, rdx
mov rdx, [ rax + 0x20 ]
mov [ rsp - 0x18 ], r14
mov [ rsp - 0x10 ], r13
mulx r13, r14, [ rsi + 0x28 ]
xor rdx, rdx
adox rbp, rcx
adox r8, r12
adcx rbp, r11
adcx rdi, r8
add rbp, r14
mov rcx, r13
adcx rcx, rdi
add r15, r14
adcx r13, r10
mov rdx, [ rax + 0x18 ]
mulx r11, r12, [ rsi + 0x38 ]
mov rdx, [ rax + 0x30 ]
mulx r14, r10, [ rsi + 0x18 ]
mov rdx, [ rax + 0x28 ]
mulx rdi, r8, [ rsi + 0x20 ]
add r15, r8
mov rdx, rdi
adcx rdx, r13
test al, al
adox rbp, r8
adox rdi, rcx
adcx r15, r10
mov rcx, r14
adcx rcx, rdx
mov rdx, [ rsi + 0x38 ]
mulx r8, r13, [ rax + 0x38 ]
mov rdx, r13
mov [ rsp - 0x8 ], rbx
xor rbx, rbx
adox rdx, r12
mov [ rsp + 0x0 ], r9
mov r9, r11
adox r9, r8
adcx rbp, r10
adcx r14, rdi
mov r10, rdx
mov rdx, [ rax + 0x38 ]
mulx rbx, rdi, [ rsi + 0x10 ]
add rbp, rdi
mov rdx, rbx
adcx rdx, r14
mov r14, r13
test al, al
adox r14, r13
adox r8, r8
adcx r14, r12
adcx r11, r8
test al, al
adox r15, rdi
adox rbx, rcx
mov r12, rdx
mov rdx, [ rsi + 0x20 ]
mulx r13, rcx, [ rax + 0x30 ]
mov rdx, [ rsi + 0x28 ]
mulx r8, rdi, [ rax + 0x28 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x8 ], r12
mov [ rsp + 0x10 ], rbp
mulx rbp, r12, [ rsi + 0x28 ]
mov rdx, [ rsi + 0x30 ]
mov [ rsp + 0x18 ], rbx
mov [ rsp + 0x20 ], r15
mulx r15, rbx, [ rax + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x28 ], rbp
mov [ rsp + 0x30 ], r12
mulx r12, rbp, [ rax + 0x38 ]
adcx r14, rbx
mov rdx, r15
adcx rdx, r11
test al, al
adox r14, rdi
mov r11, r8
adox r11, rdx
adcx r10, rbx
adcx r15, r9
add r14, rcx
mov r9, r13
adcx r9, r11
test al, al
adox r10, rdi
adox r8, r15
mov rdx, [ rax + 0x8 ]
mulx rbx, rdi, [ rsi + 0x38 ]
adcx r14, rbp
mov rdx, r12
adcx rdx, r9
test al, al
adox r10, rcx
adox r13, r8
mov rcx, rdx
mov rdx, [ rsi + 0x38 ]
mulx r15, r11, [ rax + 0x28 ]
mov rdx, r11
adcx rdx, [ rsp + 0x0 ]
mov r9, r15
adcx r9, [ rsp - 0x8 ]
xor r8, r8
adox rdx, [ rsp + 0x30 ]
adox r9, [ rsp + 0x28 ]
mov [ rsp + 0x38 ], rcx
mov rcx, rdx
adcx rcx, r11
adcx r15, r9
test al, al
adox rdx, rdi
mov r11, rbx
adox r11, r9
adcx rcx, [ rsp + 0x0 ]
adcx r15, [ rsp - 0x8 ]
xor r9, r9
adox rcx, [ rsp + 0x30 ]
adox r15, [ rsp + 0x28 ]
adcx rcx, rdi
adcx rbx, r15
test al, al
adox rcx, [ rsp - 0x20 ]
adox rbx, [ rsp - 0x28 ]
adcx r10, rbp
adcx r12, r13
mov r8, rdx
mov rdx, [ rax + 0x0 ]
mulx rdi, rbp, [ rsi + 0x30 ]
mov rdx, [ rsi + 0x20 ]
mulx r15, r13, [ rax + 0x20 ]
mov rdx, [ rsi + 0x28 ]
mov [ rsp + 0x40 ], r12
mulx r12, r9, [ rax + 0x18 ]
xor rdx, rdx
adox r8, [ rsp - 0x20 ]
adox r11, [ rsp - 0x28 ]
adcx r8, r9
mov [ rsp + 0x48 ], r10
mov r10, r12
adcx r10, r11
add rcx, r9
adcx r12, rbx
add r8, r13
mov rbx, r15
adcx rbx, r10
test al, al
adox rcx, r13
adox r15, r12
mov rdx, [ rax + 0x8 ]
mulx r9, r13, [ rsi + 0x28 ]
mov rdx, [ rax + 0x28 ]
mulx r10, r11, [ rsi + 0x18 ]
adcx rcx, r11
mov rdx, r10
adcx rdx, r15
xor r12, r12
adox r8, r11
adox r10, rbx
adcx r14, rbp
adcx rdi, [ rsp + 0x38 ]
mov rbp, rdx
mov rdx, [ rax + 0x30 ]
mulx r15, rbx, [ rsi + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mulx r12, r11, [ rax + 0x38 ]
add r14, r13
adcx r9, rdi
add r8, rbx
mov rdx, r15
adcx rdx, r10
mov r13, rdx
mov rdx, [ rsi + 0x38 ]
mulx rdi, r10, [ rax + 0x20 ]
mov rdx, [ rax + 0x38 ]
mov [ rsp + 0x50 ], r9
mov [ rsp + 0x58 ], r14
mulx r14, r9, [ rsi + 0x20 ]
add rcx, rbx
adcx r15, rbp
add r8, r11
mov rdx, r12
adcx rdx, r13
xor rbp, rbp
adox rcx, r11
adox r12, r15
adcx r10, [ rsp - 0x10 ]
adcx rdi, [ rsp - 0x18 ]
mov rbx, rdx
mov rdx, [ rsi + 0x28 ]
mulx r13, r11, [ rax + 0x30 ]
test al, al
adox r10, r11
adox r13, rdi
mov rdx, [ rax + 0x0 ]
mulx rdi, r15, [ rsi + 0x20 ]
adcx r10, r9
adcx r14, r13
xor rdx, rdx
adox rcx, r15
adox rdi, r12
mov rdx, [ rsi + 0x38 ]
mulx r9, rbp, [ rax + 0x0 ]
mov rdx, r10
adcx rdx, rbp
adcx r9, r14
mov r12, rdx
mov rdx, [ rsi + 0x28 ]
mulx r13, r11, [ rax + 0x10 ]
mov rdx, [ rsi + 0x20 ]
mulx rbp, r15, [ rax + 0x18 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp + 0x60 ], rbx
mov [ rsp + 0x68 ], r8
mulx r8, rbx, [ rsi + 0x30 ]
add r12, rbx
adcx r8, r9
mov rdx, [ rax + 0x0 ]
mulx rbx, r9, [ rsi + 0x18 ]
add r12, r11
adcx r13, r8
add r10, r9
adcx rbx, r14
add r12, r15
adcx rbp, r13
mov rdx, [ rax + 0x20 ]
mulx r11, r14, [ rsi + 0x18 ]
mov rdx, [ rax + 0x8 ]
mulx r8, r15, [ rsi + 0x18 ]
xor rdx, rdx
adox rcx, r15
adox r8, rdi
mov rdx, [ rsi + 0x10 ]
mulx r9, rdi, [ rax + 0x10 ]
adcx rcx, rdi
adcx r9, r8
xor rdx, rdx
adox r12, r14
adox r11, rbp
mov rdx, [ rsi + 0x10 ]
mulx rbp, r13, [ rax + 0x28 ]
mov rdx, [ rsi + 0x8 ]
mulx r15, r14, [ rax + 0x30 ]
adcx r12, r13
adcx rbp, r11
mov rdx, [ rax + 0x8 ]
mulx rdi, r8, [ rsi + 0x20 ]
test al, al
adox r12, r14
adox r15, rbp
mov rdx, [ rsi + 0x28 ]
mulx r13, r11, [ rax + 0x0 ]
mov rdx, r11
adcx rdx, [ rsp + 0x20 ]
adcx r13, [ rsp + 0x18 ]
add r12, [ rsp - 0x30 ]
adcx r15, [ rsp - 0x38 ]
mov r14, rdx
mov rdx, [ rax + 0x8 ]
mulx r11, rbp, [ rsi + 0x10 ]
add r10, rbp
adcx r11, rbx
mov rdx, [ rax + 0x10 ]
mulx rbp, rbx, [ rsi + 0x18 ]
xor rdx, rdx
adox r14, r8
adox rdi, r13
adcx r14, rbx
adcx rbp, rdi
mov rdx, [ rax + 0x10 ]
mulx r13, r8, [ rsi + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mulx rdi, rbx, [ rax + 0x18 ]
add r10, r8
adcx r13, r11
add rcx, [ rsp - 0x40 ]
adcx r9, [ rsp - 0x48 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, r11, [ rax + 0x20 ]
xor rdx, rdx
adox rcx, r11
adox r8, r9
adcx r14, rbx
adcx rdi, rbp
mov rdx, [ rax + 0x18 ]
mulx rbx, rbp, [ rsi + 0x0 ]
add r10, rbp
adcx rbx, r13
mov rdx, [ rsi + 0x8 ]
mulx r9, r13, [ rax + 0x0 ]
mov rdx, r13
xor r11, r11
adox rdx, [ rsp + 0x10 ]
adox r9, [ rsp + 0x8 ]
mov rbp, r12
shrd rbp, r15, 56
mov r15, 0xffffffffffffff 
mov r13, r10
and r13, r15
and r12, r15
shrd r10, rbx, 56
test al, al
adox rcx, r10
adox r8, r11
mov rbx, rbp
adcx rbx, rcx
adc r8, 0x0
mov r10, rdx
mov rdx, [ rax + 0x0 ]
mulx r11, rcx, [ rsi + 0x0 ]
mov rdx, rcx
add rdx, [ rsp + 0x68 ]
adcx r11, [ rsp + 0x60 ]
mov rcx, rbx
and rcx, r15
shrd rbx, r8, 56
mov r8, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp + 0x70 ], rcx
mulx rcx, r15, [ rax + 0x8 ]
add r10, r15
adcx rcx, r9
mov rdx, [ rsi + 0x8 ]
mulx r15, r9, [ rax + 0x20 ]
xor rdx, rdx
adox rbp, r8
adox r11, rdx
mov rdx, [ rsi + 0x20 ]
mov [ rsp + 0x78 ], r13
mulx r13, r8, [ rax + 0x10 ]
mov rdx, rbp
shrd rdx, r11, 56
add r10, rdx
adc rcx, 0x0
mov r11, 0x38 
bzhi rdx, r10, r11
adox r14, r9
adox r15, rdi
shrd r10, rcx, 56
mov rdi, r8
test al, al
adox rdi, [ rsp + 0x58 ]
adox r13, [ rsp + 0x50 ]
mov r9, rdx
mov rdx, [ rsi + 0x10 ]
mulx rcx, r8, [ rax + 0x20 ]
mov rdx, [ rsi + 0x18 ]
mov [ rsp + 0x80 ], r9
mulx r9, r11, [ rax + 0x18 ]
adcx rdi, r11
adcx r9, r13
add rdi, r8
adcx rcx, r9
mov rdx, [ rsi + 0x0 ]
mulx r8, r13, [ rax + 0x28 ]
add r14, r13
adcx r8, r15
mov rdx, [ rax + 0x30 ]
mulx r11, r15, [ rsi + 0x0 ]
test al, al
adox r14, rbx
mov rdx, 0x0 
adox r8, rdx
mov rdx, [ rsi + 0x8 ]
mulx r9, rbx, [ rax + 0x28 ]
adcx rdi, rbx
adcx r9, rcx
add rdi, r15
adcx r11, r9
mov rdx, 0x38 
bzhi rcx, r14, rdx
mov rdx, [ rax + 0x0 ]
mulx r15, r13, [ rsi + 0x10 ]
shrd r14, r8, 56
mov rdx, [ rax + 0x10 ]
mulx rbx, r8, [ rsi + 0x0 ]
xor rdx, rdx
adox rdi, r14
adox r11, rdx
mov r9, rdi
shrd r9, r11, 56
lea r9, [ r9 + r12 ]
mov r12, r13
xor r14, r14
adox r12, [ rsp + 0x48 ]
adox r15, [ rsp + 0x40 ]
mov rdx, 0x38 
bzhi r13, r9, rdx
mov rdx, [ rax + 0x8 ]
mulx r14, r11, [ rsi + 0x8 ]
shr r9, 56
add r12, r11
adcx r14, r15
test al, al
adox r12, r8
adox rbx, r14
adcx r12, r10
adc rbx, 0x0
mov rdx, 0xffffffffffffff 
mov r10, r12
and r10, rdx
shrd r12, rbx, 56
add r12, [ rsp + 0x78 ]
mov r8, [ rsp - 0x50 ]
mov [ r8 + 0x10 ], r10
and rbp, rdx
lea rbp, [ rbp + r9 ]
mov r15, rbp
and r15, rdx
shr rbp, 56
mov r11, r12
shr r11, 56
mov [ r8 + 0x38 ], r13
and r12, rdx
mov [ r8 + 0x0 ], r15
add r9, [ rsp + 0x70 ]
add rbp, [ rsp + 0x80 ]
mov [ r8 + 0x18 ], r12
lea r11, [ r11 + r9 ]
mov [ r8 + 0x8 ], rbp
mov r13, r11
and r13, rdx
shr r11, 56
lea r11, [ r11 + rcx ]
mov [ r8 + 0x28 ], r11
mov [ r8 + 0x20 ], r13
and rdi, rdx
mov [ r8 + 0x30 ], rdi
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
add rsp, 264
ret
; cpu Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz
; ratio 1.3296
; seed 1966948307907257 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 8409214 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=41, initial num_batches=31): 203430 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.024191321567033495
; number reverted permutation / tried permutation: 69912 / 95057 =73.547%
; number reverted decision / tried decision: 54464 / 94942 =57.366%
; validated in 6.689s
