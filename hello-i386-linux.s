	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	movl	$12, %edx
	movl	$helloworld, %ecx
	movl	$1, %ebx
	movl	$4, %eax
	int	$0x80
	movl	$0, %ebx
	movl	$1, %eax
	int	$0x80
