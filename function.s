	.section	__TEXT,__text,regular,pure_instructions
	.globl	_inc
	.align	4, 0x90
_inc:                                   ## @inc
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	addl	$1, %edi
	movl	%edi, %eax
	popq	%rbp
	retq

	.globl	_sub
	.align	4, 0x90
_sub:                                   ## @sub
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	_inc
	subl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$99, %edi
	movl	$1, %esi
	movl	$0, -4(%rbp)
	callq	_sub
	addq	$16, %rsp
	popq	%rbp
	retq


.subsections_via_symbols
