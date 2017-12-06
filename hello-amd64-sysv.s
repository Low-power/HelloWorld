	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	movq	$12, %rdx
	movq	$helloworld, %rsi
	movl	$1, %edi
	movl	$4, %eax
	syscall
	movl	$0, %edi
	movl	$1, %eax
	syscall
