	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	pushl	$12
	pushl	$helloworld
	pushl	$1
	subl	$4, %esp
	movl	$4, %eax
	int	$0x80
	addl	$16, %esp
	pushl	$0
	subl	$4, %esp
	movl	$1, %eax
	int	$0x80
