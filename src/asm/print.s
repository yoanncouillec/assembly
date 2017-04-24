.data
format:
	.asciz	"hello\n"
.text
	.globl	_main
_main:
	pushq	%rbp
	leaq	format(%rip), %rdi
	callq	_printf
	popq	%rbp
	retq
