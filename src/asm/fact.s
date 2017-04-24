	.globl	_main
_fact:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, %rdi
	jne	_fact_rec
	movq	$1, %rax
	jmp	_fact_end
_fact_rec:
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	subq	$1, %rdi	
	callq	_fact
	imulq	-8(%rbp), %rax
	addq	$8, %rsp
_fact_end:	
	popq	%rbp
	retq
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	_fact
	popq	%rbp
	retq
