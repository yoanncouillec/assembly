	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	movl	$0, -4(%rbp)
	popq	%rbp
	retq


.subsections_via_symbols
