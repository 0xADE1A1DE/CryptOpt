SECTION .text
	GLOBAL fiat_secp256k1_montgomery_mul
fiat_secp256k1_montgomery_mul:
mov rax, rdx
mov rdx, [ rdx + 0x0 ]
mulx r11, r10, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x0 ]
mulx r8, rcx, [ rax + 0x10 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mulx rbx, r9, [ rax + 0x8 ]
mov rdx, [ rax + 0x8 ]
mov [ rsp - 0x78 ], rbp
mov [ rsp - 0x70 ], r12
mulx r12, rbp, [ rsi + 0x0 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x68 ], r13
mov [ rsp - 0x60 ], r14
mulx r14, r13, [ rax + 0x0 ]
mov rdx, [ rax + 0x10 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
test al, al
adox r9, r14
adox r15, rbx
adcx rbp, r11
mov rdx, 0xd838091dd2253531 
mulx rbx, r11, r10
adcx rcx, r12
mov rdx, [ rsi + 0x0 ]
mulx r12, rbx, [ rax + 0x18 ]
adcx rbx, r8
mov rdx, 0x0 
adcx r12, rdx
mov rdx, [ rsi + 0x18 ]
mulx r14, r8, [ rax + 0x8 ]
mov rdx, [ rsi + 0x10 ]
mov [ rsp - 0x48 ], r14
mov [ rsp - 0x40 ], r8
mulx r8, r14, [ rax + 0x8 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x38 ], r8
mov [ rsp - 0x30 ], r14
mulx r14, r8, [ rax + 0x18 ]
adox r8, rdi
mov rdx, 0xfffffffefffffc2f 
mov [ rsp - 0x28 ], r8
mulx r8, rdi, r11
clc
adcx rdi, r10
mov rdi, 0x0 
adox r14, rdi
mov r10, 0xffffffffffffffff 
mov rdx, r10
mulx rdi, r10, r11
mov r11, r10
mov rdx, -0x2 
inc rdx
adox r11, r8
adcx r11, rbp
mov rbp, r10
adox rbp, rdi
adcx rbp, rcx
adox r10, rdi
adcx r10, rbx
seto cl
inc rdx
adox r13, r11
adox r9, rbp
mov rbx, 0xd838091dd2253531 
mov rdx, rbx
mulx r8, rbx, r13
adox r15, r10
mov r8, 0xfffffffefffffc2f 
mov rdx, rbx
mulx r11, rbx, r8
movzx rbp, cl
lea rbp, [ rbp + rdi ]
mov rdi, 0xffffffffffffffff 
mulx r10, rcx, rdi
adcx rbp, r12
mov r12, rcx
setc dl
clc
adcx r12, r11
mov r11, rcx
adcx r11, r10
adcx rcx, r10
mov rdi, 0x0 
adcx r10, rdi
clc
adcx rbx, r13
adcx r12, r9
adox rbp, [ rsp - 0x28 ]
adcx r11, r15
movzx rbx, dl
adox rbx, r14
adcx rcx, rbp
adcx r10, rbx
mov rdx, [ rax + 0x0 ]
mulx r13, r14, [ rsi + 0x10 ]
setc dl
clc
adcx r14, r12
movzx r9, dl
adox r9, rdi
mov r15, -0x3 
inc r15
adox r13, [ rsp - 0x30 ]
adcx r13, r11
mov rdx, [ rsi + 0x10 ]
mulx rbp, r12, [ rax + 0x10 ]
adox r12, [ rsp - 0x38 ]
adcx r12, rcx
mov rdx, [ rax + 0x18 ]
mulx rbx, r11, [ rsi + 0x10 ]
adox r11, rbp
mov rdx, 0xd838091dd2253531 
mulx rbp, rcx, r14
adcx r11, r10
mov rbp, 0xffffffffffffffff 
mov rdx, rbp
mulx r10, rbp, rcx
adox rbx, rdi
mov rdx, r8
mulx rdi, r8, rcx
mov rcx, rbp
inc r15
adox rcx, rdi
mov rdi, rbp
adox rdi, r10
adox rbp, r10
adcx rbx, r9
setc r9b
clc
adcx r8, r14
adcx rcx, r13
adcx rdi, r12
mov rdx, [ rax + 0x0 ]
mulx r14, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx r12, r13, [ rax + 0x10 ]
mov rdx, [ rax + 0x18 ]
mov byte [ rsp - 0x20 ], r9b
mulx r9, r15, [ rsi + 0x18 ]
setc dl
clc
adcx r14, [ rsp - 0x40 ]
adcx r13, [ rsp - 0x48 ]
adcx r15, r12
mov r12, 0x0 
adcx r9, r12
adox r10, r12
add dl, 0x7F
adox r11, rbp
adcx r8, rcx
adcx r14, rdi
mov rbp, 0xd838091dd2253531 
mov rdx, rbp
mulx rcx, rbp, r8
adcx r13, r11
adox r10, rbx
adcx r15, r10
mov rcx, 0xfffffffefffffc2f 
mov rdx, rbp
mulx rbx, rbp, rcx
movzx rdi, byte [ rsp - 0x20 ]
adox rdi, r12
adcx r9, rdi
mov r11, -0x3 
inc r11
adox rbp, r8
mov rbp, 0xffffffffffffffff 
mulx r10, r8, rbp
mov rdx, r8
setc dil
clc
adcx rdx, rbx
mov rbx, r8
adcx rbx, r10
adox rdx, r14
adox rbx, r13
adcx r8, r10
adcx r10, r12
adox r8, r15
adox r10, r9
movzx r14, dil
adox r14, r12
mov r13, rdx
sub r13, rcx
mov r15, rbx
sbb r15, rbp
mov rdi, r8
sbb rdi, rbp
mov r9, r10
sbb r9, rbp
sbb r14, r12
cmovc r13, rdx
cmovc r15, rbx
mov r14, [ rsp - 0x50 ]
mov [ r14 + 0x8 ], r15
cmovc rdi, r8
mov [ r14 + 0x10 ], rdi
cmovc r9, r10
mov [ r14 + 0x18 ], r9
mov [ r14 + 0x0 ], r13
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
; ratio 1.7812
; seed 2467354888397691 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1488806 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=62, initial num_batches=31): 94342 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.06336755762671564
; number reverted permutation / tried permutation: 72277 / 94899 =76.162%
; number reverted decision / tried decision: 63089 / 95100 =66.340%
; validated in 4.037s
