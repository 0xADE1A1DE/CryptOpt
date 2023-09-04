	.att_syntax
	.text
	.p2align	5
	.globl	_add_doubl4
	.globl	add_doubl4
_add_doubl4:
add_doubl4:
	movq	%rsp, %rax
	leaq	-288(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 280(%rsp)
	movq	%rbx, 232(%rsp)
	movq	%rbp, 240(%rsp)
	movq	%r12, 248(%rsp)
	movq	%r13, 256(%rsp)
	movq	%r14, 264(%rsp)
	movq	%r15, 272(%rsp)
	movq	%rdi, (%rsp)
	movq	(%rsi), %rax
	movq	%rax, 104(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	(%rcx), %rax
	movq	(%r8), %rdi
	movq	%rdi, 40(%rsp)
	movq	(%r9), %rdi
	movq	%rdi, 8(%rsp)
	movq	8(%rsi), %rdi
	movq	%rdi, 112(%rsp)
	movq	8(%rdx), %rdi
	movq	%rdi, 80(%rsp)
	movq	8(%rcx), %rdi
	movq	8(%r8), %r10
	movq	%r10, 48(%rsp)
	movq	8(%r9), %r10
	movq	%r10, 16(%rsp)
	movq	16(%rsi), %r10
	movq	%r10, 120(%rsp)
	movq	16(%rdx), %r10
	movq	%r10, 88(%rsp)
	movq	16(%rcx), %r10
	movq	16(%r8), %r11
	movq	%r11, 56(%rsp)
	movq	16(%r9), %r11
	movq	%r11, 24(%rsp)
	movq	24(%rsi), %rsi
	movq	%rsi, 128(%rsp)
	movq	24(%rdx), %rdx
	movq	%rdx, 96(%rsp)
	movq	24(%rcx), %rcx
	movq	24(%r8), %rdx
	movq	%rdx, 64(%rsp)
	movq	24(%r9), %rdx
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rdx
	movq	72(%rsp), %rsi
	movq	80(%rsp), %r8
	movq	88(%rsp), %r9
	movq	96(%rsp), %r11
	subq	%rax, %rsi
	sbbq	%rdi, %r8
	sbbq	%r10, %r9
	sbbq	%rcx, %r11
	sbbq	%rdx, %rdx
	andq	$38, %rdx
	subq	%rdx, %rsi
	sbbq	$0, %r8
	sbbq	$0, %r9
	sbbq	$0, %r11
	sbbq	%rdx, %rdx
	andq	$38, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 136(%rsp)
	movq	%r8, 144(%rsp)
	movq	%r9, 152(%rsp)
	movq	%r11, 160(%rsp)
	xorq	%rdx, %rdx
	addq	72(%rsp), %rax
	adcq	80(%rsp), %rdi
	adcq	88(%rsp), %r10
	adcq	96(%rsp), %rcx
	sbbq	%rdx, %rdx
	andq	$38, %rdx
	addq	%rdx, %rax
	adcq	$0, %rdi
	adcq	$0, %r10
	adcq	$0, %rcx
	sbbq	%rdx, %rdx
	andq	$38, %rdx
	addq	%rdx, %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%r10, 88(%rsp)
	movq	%rcx, 96(%rsp)
	movq	40(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rsi
	xorq	%rdi, %rdi
	subq	8(%rsp), %rax
	sbbq	16(%rsp), %rcx
	sbbq	24(%rsp), %rdx
	sbbq	32(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	movq	%rax, 168(%rsp)
	movq	%rcx, 176(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%rsi, 192(%rsp)
	movq	40(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	8(%rsp), %rax
	adcq	16(%rsp), %rcx
	adcq	24(%rsp), %rdx
	adcq	32(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	168(%rsp), %r9
	movq	176(%rsp), %r10
	movq	184(%rsp), %r11
	movq	192(%rsp), %rbx
	xorq	%rax, %rax
	movq	72(%rsp), %rdx
	MULXq	%r9, %rsi, %rcx
	MULXq	%r10, %r8, %rdi
	adcxq	%r8, %rcx
	MULXq	%r11, %rbp, %r8
	adcxq	%rbp, %rdi
	MULXq	%rbx, %rdx, %rbp
	adcxq	%rdx, %r8
	adcxq	%rax, %rbp
	movq	80(%rsp), %rdx
	MULXq	%r9, %r13, %r12
	adoxq	%r13, %rcx
	adcxq	%r12, %rdi
	MULXq	%r10, %r13, %r12
	adoxq	%r13, %rdi
	adcxq	%r12, %r8
	MULXq	%r11, %r13, %r12
	adoxq	%r13, %r8
	adcxq	%r12, %rbp
	MULXq	%rbx, %rdx, %r12
	adoxq	%rdx, %rbp
	adcxq	%rax, %r12
	adoxq	%rax, %r12
	movq	88(%rsp), %rdx
	MULXq	%r9, %r14, %r13
	adoxq	%r14, %rdi
	adcxq	%r13, %r8
	MULXq	%r10, %r14, %r13
	adoxq	%r14, %r8
	adcxq	%r13, %rbp
	MULXq	%r11, %r14, %r13
	adoxq	%r14, %rbp
	adcxq	%r13, %r12
	MULXq	%rbx, %rdx, %r13
	adoxq	%rdx, %r12
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	movq	96(%rsp), %rdx
	MULXq	%r9, %r14, %r9
	adoxq	%r14, %r8
	adcxq	%r9, %rbp
	MULXq	%r10, %r10, %r9
	adoxq	%r10, %rbp
	adcxq	%r9, %r12
	MULXq	%r11, %r10, %r9
	adoxq	%r10, %r12
	adcxq	%r9, %r13
	MULXq	%rbx, %rdx, %r9
	adoxq	%rdx, %r13
	adcxq	%rax, %r9
	adoxq	%rax, %r9
	movq	$38, %rdx
	MULXq	%rbp, %r11, %r10
	adoxq	%r11, %rsi
	adcxq	%r10, %rcx
	MULXq	%r12, %r11, %r10
	adoxq	%r11, %rcx
	adcxq	%r10, %rdi
	MULXq	%r13, %r11, %r10
	adoxq	%r11, %rdi
	adcxq	%r10, %r8
	MULXq	%r9, %r9, %rdx
	adoxq	%r9, %r8
	adcxq	%rax, %rdx
	adoxq	%rax, %rdx
	imulq	$38, %rdx, %rdx
	addq	%rdx, %rsi
	adcq	%rax, %rcx
	adcq	%rax, %rdi
	adcq	%rax, %r8
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	%rsi, 168(%rsp)
	movq	%rcx, 176(%rsp)
	movq	%rdi, 184(%rsp)
	movq	%r8, 192(%rsp)
	movq	136(%rsp), %r9
	movq	144(%rsp), %r10
	movq	152(%rsp), %r11
	movq	160(%rsp), %rbx
	xorq	%rax, %rax
	movq	8(%rsp), %rdx
	MULXq	%r9, %rsi, %rcx
	MULXq	%r10, %r8, %rdi
	adcxq	%r8, %rcx
	MULXq	%r11, %rbp, %r8
	adcxq	%rbp, %rdi
	MULXq	%rbx, %rdx, %rbp
	adcxq	%rdx, %r8
	adcxq	%rax, %rbp
	movq	16(%rsp), %rdx
	MULXq	%r9, %r13, %r12
	adoxq	%r13, %rcx
	adcxq	%r12, %rdi
	MULXq	%r10, %r13, %r12
	adoxq	%r13, %rdi
	adcxq	%r12, %r8
	MULXq	%r11, %r13, %r12
	adoxq	%r13, %r8
	adcxq	%r12, %rbp
	MULXq	%rbx, %rdx, %r12
	adoxq	%rdx, %rbp
	adcxq	%rax, %r12
	adoxq	%rax, %r12
	movq	24(%rsp), %rdx
	MULXq	%r9, %r14, %r13
	adoxq	%r14, %rdi
	adcxq	%r13, %r8
	MULXq	%r10, %r14, %r13
	adoxq	%r14, %r8
	adcxq	%r13, %rbp
	MULXq	%r11, %r14, %r13
	adoxq	%r14, %rbp
	adcxq	%r13, %r12
	MULXq	%rbx, %rdx, %r13
	adoxq	%rdx, %r12
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	movq	32(%rsp), %rdx
	MULXq	%r9, %r14, %r9
	adoxq	%r14, %r8
	adcxq	%r9, %rbp
	MULXq	%r10, %r10, %r9
	adoxq	%r10, %rbp
	adcxq	%r9, %r12
	MULXq	%r11, %r10, %r9
	adoxq	%r10, %r12
	adcxq	%r9, %r13
	MULXq	%rbx, %rdx, %r9
	adoxq	%rdx, %r13
	adcxq	%rax, %r9
	adoxq	%rax, %r9
	movq	$38, %rdx
	MULXq	%rbp, %r11, %r10
	adoxq	%r11, %rsi
	adcxq	%r10, %rcx
	MULXq	%r12, %r11, %r10
	adoxq	%r11, %rcx
	adcxq	%r10, %rdi
	MULXq	%r13, %r11, %r10
	adoxq	%r11, %rdi
	adcxq	%r10, %r8
	MULXq	%r9, %r9, %rdx
	adoxq	%r9, %r8
	adcxq	%rax, %rdx
	adoxq	%rax, %rdx
	imulq	$38, %rdx, %rdx
	addq	%rdx, %rsi
	adcq	%rax, %rcx
	adcq	%rax, %rdi
	adcq	%rax, %r8
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	%rsi, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	72(%rsp), %rdx
	movq	80(%rsp), %r11
	movq	88(%rsp), %r13
	movq	96(%rsp), %rbx
	xorq	%rax, %rax
	MULXq	%rdx, %rsi, %rcx
	MULXq	%r11, %r8, %rdi
	MULXq	%r13, %r10, %r9
	adcxq	%r10, %rdi
	MULXq	%rbx, %rdx, %r10
	adcxq	%rdx, %r9
	movq	%r11, %rdx
	MULXq	%r13, %rbp, %r11
	adoxq	%rbp, %r9
	adcxq	%r11, %r10
	MULXq	%rbx, %rbp, %r11
	adoxq	%rbp, %r10
	MULXq	%rdx, %r12, %rbp
	movq	%r13, %rdx
	MULXq	%rbx, %r14, %r13
	adcxq	%r14, %r11
	adoxq	%rax, %r11
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	MULXq	%rdx, %r15, %r14
	movq	%rbx, %rdx
	MULXq	%rdx, %rdx, %rbx
	adcxq	%r8, %r8
	adoxq	%rcx, %r8
	adcxq	%rdi, %rdi
	adoxq	%r12, %rdi
	adcxq	%r9, %r9
	adoxq	%rbp, %r9
	adcxq	%r10, %r10
	adoxq	%r15, %r10
	adcxq	%r11, %r11
	adoxq	%r14, %r11
	adcxq	%r13, %r13
	adoxq	%rdx, %r13
	adcxq	%rax, %rbx
	adoxq	%rax, %rbx
	movq	$38, %rdx
	MULXq	%r10, %r10, %rcx
	adoxq	%r10, %rsi
	adcxq	%rcx, %r8
	MULXq	%r11, %r10, %rcx
	adoxq	%r10, %r8
	adcxq	%rcx, %rdi
	MULXq	%r13, %r10, %rcx
	adoxq	%r10, %rdi
	adcxq	%rcx, %r9
	MULXq	%rbx, %rdx, %rcx
	adoxq	%rdx, %r9
	adcxq	%rax, %rcx
	adoxq	%rax, %rcx
	imulq	$38, %rcx, %rcx
	addq	%rcx, %rsi
	adcq	%rax, %r8
	adcq	%rax, %rdi
	adcq	%rax, %r9
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	%rsi, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%rdi, 88(%rsp)
	movq	%r9, 96(%rsp)
	movq	136(%rsp), %rdx
	movq	144(%rsp), %r11
	movq	152(%rsp), %r13
	movq	160(%rsp), %rbx
	xorq	%r8, %r8
	MULXq	%rdx, %rax, %r9
	MULXq	%r11, %rsi, %rcx
	MULXq	%r13, %r10, %rdi
	adcxq	%r10, %rcx
	MULXq	%rbx, %rdx, %r10
	adcxq	%rdx, %rdi
	movq	%r11, %rdx
	MULXq	%r13, %rbp, %r11
	adoxq	%rbp, %rdi
	adcxq	%r11, %r10
	MULXq	%rbx, %rbp, %r11
	adoxq	%rbp, %r10
	MULXq	%rdx, %r12, %rbp
	movq	%r13, %rdx
	MULXq	%rbx, %r14, %r13
	adcxq	%r14, %r11
	adoxq	%r8, %r11
	adcxq	%r8, %r13
	adoxq	%r8, %r13
	MULXq	%rdx, %r15, %r14
	movq	%rbx, %rdx
	MULXq	%rdx, %rdx, %rbx
	adcxq	%rsi, %rsi
	adoxq	%r9, %rsi
	adcxq	%rcx, %rcx
	adoxq	%r12, %rcx
	adcxq	%rdi, %rdi
	adoxq	%rbp, %rdi
	adcxq	%r10, %r10
	adoxq	%r15, %r10
	adcxq	%r11, %r11
	adoxq	%r14, %r11
	adcxq	%r13, %r13
	adoxq	%rdx, %r13
	adcxq	%r8, %rbx
	adoxq	%r8, %rbx
	movq	$38, %rdx
	MULXq	%r10, %r10, %r9
	adoxq	%r10, %rax
	adcxq	%r9, %rsi
	MULXq	%r11, %r10, %r9
	adoxq	%r10, %rsi
	adcxq	%r9, %rcx
	MULXq	%r13, %r10, %r9
	adoxq	%r10, %rcx
	adcxq	%r9, %rdi
	MULXq	%rbx, %r9, %rdx
	adoxq	%r9, %rdi
	adcxq	%r8, %rdx
	adoxq	%r8, %rdx
	imulq	$38, %rdx, %rdx
	addq	%rdx, %rax
	adcq	%r8, %rsi
	adcq	%r8, %rcx
	adcq	%r8, %rdi
	sbbq	%r8, %r8
	andq	$38, %r8
	addq	%r8, %rax
	movq	168(%rsp), %rdx
	movq	176(%rsp), %r8
	movq	184(%rsp), %r9
	movq	192(%rsp), %r10
	xorq	%r11, %r11
	addq	8(%rsp), %rdx
	adcq	16(%rsp), %r8
	adcq	24(%rsp), %r9
	adcq	32(%rsp), %r10
	sbbq	%r11, %r11
	andq	$38, %r11
	addq	%r11, %rdx
	adcq	$0, %r8
	adcq	$0, %r9
	adcq	$0, %r10
	sbbq	%r11, %r11
	andq	$38, %r11
	addq	%r11, %rdx
	movq	%rdx, 136(%rsp)
	movq	%r8, 144(%rsp)
	movq	%r9, 152(%rsp)
	movq	%r10, 160(%rsp)
	movq	168(%rsp), %rdx
	movq	176(%rsp), %r8
	movq	184(%rsp), %r9
	movq	192(%rsp), %r10
	xorq	%r11, %r11
	subq	8(%rsp), %rdx
	sbbq	16(%rsp), %r8
	sbbq	24(%rsp), %r9
	sbbq	32(%rsp), %r10
	sbbq	%r11, %r11
	andq	$38, %r11
	subq	%r11, %rdx
	sbbq	$0, %r8
	sbbq	$0, %r9
	sbbq	$0, %r10
	sbbq	%r11, %r11
	andq	$38, %r11
	subq	%r11, %rdx
	movq	%rdx, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	%r10, 32(%rsp)
	xorq	%rdx, %rdx
	movq	72(%rsp), %r8
	movq	80(%rsp), %r9
	movq	88(%rsp), %r10
	movq	96(%rsp), %r11
	subq	%rax, %r8
	sbbq	%rsi, %r9
	sbbq	%rcx, %r10
	sbbq	%rdi, %r11
	sbbq	%rdx, %rdx
	andq	$38, %rdx
	subq	%rdx, %r8
	sbbq	$0, %r9
	sbbq	$0, %r10
	sbbq	$0, %r11
	sbbq	%rdx, %rdx
	andq	$38, %rdx
	subq	%rdx, %r8
	movq	%r8, 168(%rsp)
	movq	%r9, 176(%rsp)
	movq	%r10, 184(%rsp)
	movq	%r11, 192(%rsp)
	xorq	%r8, %r8
	movq	72(%rsp), %rdx
	MULXq	%rax, %r10, %r9
	MULXq	%rsi, %rbx, %r11
	adcxq	%rbx, %r9
	MULXq	%rcx, %rbp, %rbx
	adcxq	%rbp, %r11
	MULXq	%rdi, %rdx, %rbp
	adcxq	%rdx, %rbx
	adcxq	%r8, %rbp
	movq	80(%rsp), %rdx
	MULXq	%rax, %r13, %r12
	adoxq	%r13, %r9
	adcxq	%r12, %r11
	MULXq	%rsi, %r13, %r12
	adoxq	%r13, %r11
	adcxq	%r12, %rbx
	MULXq	%rcx, %r13, %r12
	adoxq	%r13, %rbx
	adcxq	%r12, %rbp
	MULXq	%rdi, %rdx, %r12
	adoxq	%rdx, %rbp
	adcxq	%r8, %r12
	adoxq	%r8, %r12
	movq	88(%rsp), %rdx
	MULXq	%rax, %r14, %r13
	adoxq	%r14, %r11
	adcxq	%r13, %rbx
	MULXq	%rsi, %r14, %r13
	adoxq	%r14, %rbx
	adcxq	%r13, %rbp
	MULXq	%rcx, %r14, %r13
	adoxq	%r14, %rbp
	adcxq	%r13, %r12
	MULXq	%rdi, %rdx, %r13
	adoxq	%rdx, %r12
	adcxq	%r8, %r13
	adoxq	%r8, %r13
	movq	96(%rsp), %rdx
	MULXq	%rax, %r14, %rax
	adoxq	%r14, %rbx
	adcxq	%rax, %rbp
	MULXq	%rsi, %rsi, %rax
	adoxq	%rsi, %rbp
	adcxq	%rax, %r12
	MULXq	%rcx, %rcx, %rax
	adoxq	%rcx, %r12
	adcxq	%rax, %r13
	MULXq	%rdi, %rcx, %rax
	adoxq	%rcx, %r13
	adcxq	%r8, %rax
	adoxq	%r8, %rax
	movq	$38, %rdx
	MULXq	%rbp, %rsi, %rcx
	adoxq	%rsi, %r10
	adcxq	%rcx, %r9
	MULXq	%r12, %rsi, %rcx
	adoxq	%rsi, %r9
	adcxq	%rcx, %r11
	MULXq	%r13, %rsi, %rcx
	adoxq	%rsi, %r11
	adcxq	%rcx, %rbx
	MULXq	%rax, %rcx, %rax
	adoxq	%rcx, %rbx
	adcxq	%r8, %rax
	adoxq	%r8, %rax
	imulq	$38, %rax, %rax
	addq	%rax, %r10
	adcq	%r8, %r9
	adcq	%r8, %r11
	adcq	%r8, %rbx
	sbbq	%r8, %r8
	andq	$38, %r8
	addq	%r8, %r10
	movq	%r10, 40(%rsp)
	movq	%r9, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	%rbx, 64(%rsp)
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r11
	movq	24(%rsp), %r13
	movq	32(%rsp), %rbx
	xorq	%rax, %rax
	MULXq	%rdx, %rsi, %rcx
	MULXq	%r11, %r8, %rdi
	MULXq	%r13, %r10, %r9
	adcxq	%r10, %rdi
	MULXq	%rbx, %rdx, %r10
	adcxq	%rdx, %r9
	movq	%r11, %rdx
	MULXq	%r13, %rbp, %r11
	adoxq	%rbp, %r9
	adcxq	%r11, %r10
	MULXq	%rbx, %rbp, %r11
	adoxq	%rbp, %r10
	MULXq	%rdx, %r12, %rbp
	movq	%r13, %rdx
	MULXq	%rbx, %r14, %r13
	adcxq	%r14, %r11
	adoxq	%rax, %r11
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	MULXq	%rdx, %r15, %r14
	movq	%rbx, %rdx
	MULXq	%rdx, %rdx, %rbx
	adcxq	%r8, %r8
	adoxq	%rcx, %r8
	adcxq	%rdi, %rdi
	adoxq	%r12, %rdi
	adcxq	%r9, %r9
	adoxq	%rbp, %r9
	adcxq	%r10, %r10
	adoxq	%r15, %r10
	adcxq	%r11, %r11
	adoxq	%r14, %r11
	adcxq	%r13, %r13
	adoxq	%rdx, %r13
	adcxq	%rax, %rbx
	adoxq	%rax, %rbx
	movq	$38, %rdx
	MULXq	%r10, %r10, %rcx
	adoxq	%r10, %rsi
	adcxq	%rcx, %r8
	MULXq	%r11, %r10, %rcx
	adoxq	%r10, %r8
	adcxq	%rcx, %rdi
	MULXq	%r13, %r10, %rcx
	adoxq	%r10, %rdi
	adcxq	%rcx, %r9
	MULXq	%rbx, %rdx, %rcx
	adoxq	%rdx, %r9
	adcxq	%rax, %rcx
	adoxq	%rax, %rcx
	imulq	$38, %rcx, %rcx
	addq	%rcx, %rsi
	adcq	%rax, %r8
	adcq	%rax, %rdi
	adcq	%rax, %r9
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	%rsi, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%r9, 32(%rsp)
	movq	$121665, %rdx
	MULXq	168(%rsp), %rcx, %rax
	MULXq	176(%rsp), %rdi, %rsi
	addq	%rdi, %rax
	MULXq	184(%rsp), %r8, %rdi
	adcq	%r8, %rsi
	MULXq	192(%rsp), %r9, %r8
	adcq	%r9, %rdi
	adcq	$0, %r8
	imulq	$38, %r8, %r8
	addq	%r8, %rcx
	adcq	$0, %rax
	adcq	$0, %rsi
	adcq	$0, %rdi
	sbbq	%rdx, %rdx
	andq	$38, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 200(%rsp)
	movq	%rax, 208(%rsp)
	movq	%rsi, 216(%rsp)
	movq	%rdi, 224(%rsp)
	movq	136(%rsp), %rdx
	movq	144(%rsp), %r11
	movq	152(%rsp), %r13
	movq	160(%rsp), %rbx
	xorq	%rax, %rax
	MULXq	%rdx, %rsi, %rcx
	MULXq	%r11, %r8, %rdi
	MULXq	%r13, %r10, %r9
	adcxq	%r10, %rdi
	MULXq	%rbx, %rdx, %r10
	adcxq	%rdx, %r9
	movq	%r11, %rdx
	MULXq	%r13, %rbp, %r11
	adoxq	%rbp, %r9
	adcxq	%r11, %r10
	MULXq	%rbx, %rbp, %r11
	adoxq	%rbp, %r10
	MULXq	%rdx, %r12, %rbp
	movq	%r13, %rdx
	MULXq	%rbx, %r14, %r13
	adcxq	%r14, %r11
	adoxq	%rax, %r11
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	MULXq	%rdx, %r15, %r14
	movq	%rbx, %rdx
	MULXq	%rdx, %rdx, %rbx
	adcxq	%r8, %r8
	adoxq	%rcx, %r8
	adcxq	%rdi, %rdi
	adoxq	%r12, %rdi
	adcxq	%r9, %r9
	adoxq	%rbp, %r9
	adcxq	%r10, %r10
	adoxq	%r15, %r10
	adcxq	%r11, %r11
	adoxq	%r14, %r11
	adcxq	%r13, %r13
	adoxq	%rdx, %r13
	adcxq	%rax, %rbx
	adoxq	%rax, %rbx
	movq	$38, %rdx
	MULXq	%r10, %r10, %rcx
	adoxq	%r10, %rsi
	adcxq	%rcx, %r8
	MULXq	%r11, %r10, %rcx
	adoxq	%r10, %r8
	adcxq	%rcx, %rdi
	MULXq	%r13, %r10, %rcx
	adoxq	%r10, %rdi
	adcxq	%rcx, %r9
	MULXq	%rbx, %rdx, %rcx
	adoxq	%rdx, %r9
	adcxq	%rax, %rcx
	adoxq	%rax, %rcx
	imulq	$38, %rcx, %rcx
	addq	%rcx, %rsi
	adcq	%rax, %r8
	adcq	%rax, %rdi
	adcq	%rax, %r9
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	%rsi, 136(%rsp)
	movq	%r8, 144(%rsp)
	movq	%rdi, 152(%rsp)
	movq	%r9, 160(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	88(%rsp), %rdx
	movq	96(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	200(%rsp), %rax
	adcq	208(%rsp), %rcx
	adcq	216(%rsp), %rdx
	adcq	224(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 200(%rsp)
	movq	%rcx, 208(%rsp)
	movq	%rdx, 216(%rsp)
	movq	%rsi, 224(%rsp)
	movq	8(%rsp), %r9
	movq	16(%rsp), %r10
	movq	24(%rsp), %r11
	movq	32(%rsp), %rbx
	xorq	%rax, %rax
	movq	104(%rsp), %rdx
	MULXq	%r9, %rsi, %rcx
	MULXq	%r10, %r8, %rdi
	adcxq	%r8, %rcx
	MULXq	%r11, %rbp, %r8
	adcxq	%rbp, %rdi
	MULXq	%rbx, %rdx, %rbp
	adcxq	%rdx, %r8
	adcxq	%rax, %rbp
	movq	112(%rsp), %rdx
	MULXq	%r9, %r13, %r12
	adoxq	%r13, %rcx
	adcxq	%r12, %rdi
	MULXq	%r10, %r13, %r12
	adoxq	%r13, %rdi
	adcxq	%r12, %r8
	MULXq	%r11, %r13, %r12
	adoxq	%r13, %r8
	adcxq	%r12, %rbp
	MULXq	%rbx, %rdx, %r12
	adoxq	%rdx, %rbp
	adcxq	%rax, %r12
	adoxq	%rax, %r12
	movq	120(%rsp), %rdx
	MULXq	%r9, %r14, %r13
	adoxq	%r14, %rdi
	adcxq	%r13, %r8
	MULXq	%r10, %r14, %r13
	adoxq	%r14, %r8
	adcxq	%r13, %rbp
	MULXq	%r11, %r14, %r13
	adoxq	%r14, %rbp
	adcxq	%r13, %r12
	MULXq	%rbx, %rdx, %r13
	adoxq	%rdx, %r12
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	movq	128(%rsp), %rdx
	MULXq	%r9, %r14, %r9
	adoxq	%r14, %r8
	adcxq	%r9, %rbp
	MULXq	%r10, %r10, %r9
	adoxq	%r10, %rbp
	adcxq	%r9, %r12
	MULXq	%r11, %r10, %r9
	adoxq	%r10, %r12
	adcxq	%r9, %r13
	MULXq	%rbx, %rdx, %r9
	adoxq	%rdx, %r13
	adcxq	%rax, %r9
	adoxq	%rax, %r9
	movq	$38, %rdx
	MULXq	%rbp, %r11, %r10
	adoxq	%r11, %rsi
	adcxq	%r10, %rcx
	MULXq	%r12, %r11, %r10
	adoxq	%r11, %rcx
	adcxq	%r10, %rdi
	MULXq	%r13, %r11, %r10
	adoxq	%r11, %rdi
	adcxq	%r10, %r8
	MULXq	%r9, %r9, %rdx
	adoxq	%r9, %r8
	adcxq	%rax, %rdx
	adoxq	%rax, %rdx
	imulq	$38, %rdx, %rdx
	addq	%rdx, %rsi
	adcq	%rax, %rcx
	adcq	%rax, %rdi
	adcq	%rax, %r8
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	%rsi, 104(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rdi, 120(%rsp)
	movq	%r8, 128(%rsp)
	movq	200(%rsp), %r9
	movq	208(%rsp), %r10
	movq	216(%rsp), %r11
	movq	224(%rsp), %rbx
	xorq	%rax, %rax
	movq	168(%rsp), %rdx
	MULXq	%r9, %rsi, %rcx
	MULXq	%r10, %r8, %rdi
	adcxq	%r8, %rcx
	MULXq	%r11, %rbp, %r8
	adcxq	%rbp, %rdi
	MULXq	%rbx, %rdx, %rbp
	adcxq	%rdx, %r8
	adcxq	%rax, %rbp
	movq	176(%rsp), %rdx
	MULXq	%r9, %r13, %r12
	adoxq	%r13, %rcx
	adcxq	%r12, %rdi
	MULXq	%r10, %r13, %r12
	adoxq	%r13, %rdi
	adcxq	%r12, %r8
	MULXq	%r11, %r13, %r12
	adoxq	%r13, %r8
	adcxq	%r12, %rbp
	MULXq	%rbx, %rdx, %r12
	adoxq	%rdx, %rbp
	adcxq	%rax, %r12
	adoxq	%rax, %r12
	movq	184(%rsp), %rdx
	MULXq	%r9, %r14, %r13
	adoxq	%r14, %rdi
	adcxq	%r13, %r8
	MULXq	%r10, %r14, %r13
	adoxq	%r14, %r8
	adcxq	%r13, %rbp
	MULXq	%r11, %r14, %r13
	adoxq	%r14, %rbp
	adcxq	%r13, %r12
	MULXq	%rbx, %rdx, %r13
	adoxq	%rdx, %r12
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	movq	192(%rsp), %rdx
	MULXq	%r9, %r14, %r9
	adoxq	%r14, %r8
	adcxq	%r9, %rbp
	MULXq	%r10, %r10, %r9
	adoxq	%r10, %rbp
	adcxq	%r9, %r12
	MULXq	%r11, %r10, %r9
	adoxq	%r10, %r12
	adcxq	%r9, %r13
	MULXq	%rbx, %rdx, %r9
	adoxq	%rdx, %r13
	adcxq	%rax, %r9
	adoxq	%rax, %r9
	movq	$38, %rdx
	MULXq	%rbp, %r11, %r10
	adoxq	%r11, %rsi
	adcxq	%r10, %rcx
	MULXq	%r12, %r11, %r10
	adoxq	%r11, %rcx
	adcxq	%r10, %rdi
	MULXq	%r13, %r11, %r10
	adoxq	%r11, %rdi
	adcxq	%r10, %r8
	MULXq	%r9, %r9, %rdx
	adoxq	%r9, %r8
	adcxq	%rax, %rdx
	adoxq	%rax, %rdx
	imulq	$38, %rdx, %rdx
	addq	%rdx, %rsi
	adcq	%rax, %rcx
	adcq	%rax, %rdi
	adcq	%rax, %r8
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	(%rsp), %rax
	movq	40(%rsp), %rdx
	movq	%rdx, (%rax)
	movq	%rsi, 32(%rax)
	movq	136(%rsp), %rdx
	movq	%rdx, 64(%rax)
	movq	104(%rsp), %rdx
	movq	%rdx, 96(%rax)
	movq	48(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, 40(%rax)
	movq	144(%rsp), %rcx
	movq	%rcx, 72(%rax)
	movq	112(%rsp), %rcx
	movq	%rcx, 104(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	%rdi, 48(%rax)
	movq	152(%rsp), %rcx
	movq	%rcx, 80(%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 112(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%r8, 56(%rax)
	movq	160(%rsp), %rcx
	movq	%rcx, 88(%rax)
	movq	128(%rsp), %rcx
	movq	%rcx, 120(%rax)
	movq	232(%rsp), %rbx
	movq	240(%rsp), %rbp
	movq	248(%rsp), %r12
	movq	256(%rsp), %r13
	movq	264(%rsp), %r14
	movq	272(%rsp), %r15
	movq	280(%rsp), %rsp
	ret 
