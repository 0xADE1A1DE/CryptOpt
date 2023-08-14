SECTION .text
	GLOBAL fiat_p256_square
fiat_p256_square:
mov rdx, [ rsi + 0x0 ]
mulx r10, rax, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x18 ]
mulx rcx, r11, rdx
mov rdx, [ rsi + 0x0 ]
mulx r9, r8, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x80 ], rbx
mov [ rsp - 0x78 ], rbp
mulx rbp, rbx, [ rsi + 0x18 ]
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x70 ], r12
mov [ rsp - 0x68 ], r13
mulx r13, r12, [ rsi + 0x0 ]
xor rdx, rdx
adox rbx, r9
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x60 ], r14
mulx r14, r9, rdx
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x58 ], r15
mov [ rsp - 0x50 ], rdi
mulx rdi, r15, [ rsi + 0x8 ]
adcx r9, r13
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x48 ], rbx
mulx rbx, r13, [ rsi + 0x10 ]
adcx r13, r14
mov rdx, [ rsi + 0x8 ]
mov [ rsp - 0x40 ], r8
mulx r8, r14, [ rsi + 0x18 ]
adcx r14, rbx
mov rdx, [ rsi + 0x18 ]
mov [ rsp - 0x38 ], r14
mulx r14, rbx, [ rsi + 0x10 ]
adox rbx, rbp
mov rdx, [ rsi + 0x0 ]
mov [ rsp - 0x30 ], rbx
mulx rbx, rbp, rdx
mov rdx, 0x0 
adcx r8, rdx
adox r11, r14
clc
adcx r15, rbx
mov rdx, [ rsi + 0x10 ]
mulx rbx, r14, [ rsi + 0x0 ]
adcx r14, rdi
adcx rax, rbx
mov rdx, 0x0 
adox rcx, rdx
adc r10, 0x0
mov rdi, 0xffffffffffffffff 
mov rdx, rbp
mulx rbx, rbp, rdi
mov rdi, 0xffffffff 
mov [ rsp - 0x28 ], rcx
mov [ rsp - 0x20 ], r11
mulx r11, rcx, rdi
add rcx, rbx
adc r11, 0x0
xor rbx, rbx
adox rbp, rdx
adox rcx, r15
adcx r12, rcx
mov rbp, 0xffffffff00000001 
mulx rcx, r15, rbp
adox r11, r14
adox r15, rax
adcx r9, r11
adox rcx, r10
mov rdx, 0xffffffffffffffff 
mulx rax, r14, r12
mov rdx, rdi
mulx r10, rdi, r12
seto r11b
mov rbp, -0x3 
inc rbp
adox rdi, rax
adox r10, rbx
adcx r13, r15
mov r15, -0x3 
inc r15
adox r14, r12
adox rdi, r9
adcx rcx, [ rsp - 0x38 ]
mov rdx, [ rsi + 0x0 ]
mulx r15, r14, [ rsi + 0x10 ]
adox r10, r13
mov rdx, [ rsi + 0x8 ]
mulx rax, r9, [ rsi + 0x10 ]
mov rdx, 0xffffffff00000001 
mulx rbx, r13, r12
movzx r12, r11b
adcx r12, r8
mov rdx, [ rsi + 0x18 ]
mulx r11, r8, [ rsi + 0x10 ]
adox r13, rcx
setc dl
clc
adcx r9, r15
mov cl, dl
mov rdx, [ rsi + 0x10 ]
mulx rbp, r15, rdx
adcx r15, rax
adcx r8, rbp
mov rdx, 0x0 
adcx r11, rdx
clc
adcx r14, rdi
adcx r9, r10
mov rdi, 0xffffffff00000001 
mov rdx, rdi
mulx r10, rdi, r14
adox rbx, r12
adcx r15, r13
adcx r8, rbx
mov rax, 0xffffffff 
mov rdx, rax
mulx r12, rax, r14
movzx r13, cl
mov rbp, 0x0 
adox r13, rbp
mov rcx, 0xffffffffffffffff 
mov rdx, rcx
mulx rbx, rcx, r14
mov rdx, -0x3 
inc rdx
adox rax, rbx
adox r12, rbp
mov rbx, -0x3 
inc rbx
adox rcx, r14
adox rax, r9
adox r12, r15
adcx r11, r13
adox rdi, r8
setc cl
clc
adcx rax, [ rsp - 0x40 ]
adox r10, r11
movzx rbx, cl
adox rbx, rbp
mov r14, 0xffffffff 
mov rdx, rax
mulx r9, rax, r14
mov r15, 0xffffffffffffffff 
mulx r13, r8, r15
mov rcx, -0x3 
inc rcx
adox rax, r13
adox r9, rbp
adcx r12, [ rsp - 0x48 ]
mov r11, -0x3 
inc r11
adox r8, rdx
adcx rdi, [ rsp - 0x30 ]
adox rax, r12
adox r9, rdi
adcx r10, [ rsp - 0x20 ]
adcx rbx, [ rsp - 0x28 ]
mov r11, 0xffffffff00000001 
mulx r13, r8, r11
adox r8, r10
adox r13, rbx
seto dl
adc dl, 0x0
movzx rdx, dl
mov r12, rax
sub r12, r15
mov rdi, r9
sbb rdi, r14
mov r10, r8
sbb r10, rbp
mov rbx, r13
sbb rbx, r11
movzx rdx, dl
sbb rdx, rbp
cmovc rbx, r13
mov rdx, [ rsp - 0x50 ]
mov [ rdx + 0x18 ], rbx
cmovc rdi, r9
mov [ rdx + 0x8 ], rdi
cmovc r10, r8
mov [ rdx + 0x10 ], r10
cmovc r12, rax
mov [ rdx + 0x0 ], r12
mov rbx, [ rsp - 0x80 ]
mov rbp, [ rsp - 0x78 ]
mov r12, [ rsp - 0x70 ]
mov r13, [ rsp - 0x68 ]
mov r14, [ rsp - 0x60 ]
mov r15, [ rsp - 0x58 ]
ret
; cpu Intel(R) Core(TM) i7-6770HQ CPU @ 2.60GHz
; ratio 1.5221
; seed 3897426416116395 
; CC / CFLAGS clang / -march=native -mtune=native -O3 
; cyclegoal; 10000
; using counter; PMC
; framePointer omit
; memoryConstraints none
; time needed: 1812530 ms on 190000 evaluations.
; Time spent for assembling and measuring (initial batch_size=83, initial num_batches=31): 126893 ms
; number of used evaluations: 190000
; Ratio (time for assembling + measure)/(total runtime for 190000 evals): 0.07000877226859693
; number reverted permutation / tried permutation: 76551 / 95201 =80.410%
; number reverted decision / tried decision: 60830 / 94798 =64.168%
; validated in 1.992s
