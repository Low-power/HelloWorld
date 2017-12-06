# Linux on AMD64 have a totally different syscall numbers that other kernels

	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	movq	$12, %rdx
	movq	$helloworld, %rsi
	movl	$1, %edi
	movl	$1, %eax
	syscall
	movl	$0, %edi
	movl	$60, %eax
	syscall
