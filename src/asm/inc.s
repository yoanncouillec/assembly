	.globl	_main
_inc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$1, %rsi
	callq	_add
	popq	%rbp
	retq
_add:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	addq	%rsi, %rax
	popq	%rbp
	retq
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$12, %rdi
	callq	_inc
	popq	%rbp
	retq
