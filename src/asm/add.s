.data
format:
	.asciz	"hello\n"
.text
	.globl	_main
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
	movq	$13, %rsi
	callq	_add
	popq	%rbp
	retq
