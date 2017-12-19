	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	pushl	$12
	pushl	$helloworld
	pushl	$0
	pushl	$0
	pushl	$1
	movl	$140, %eax
	call	*0xffff000c
	addl	$20, %esp
	pushl	$0
	movl	$54, %eax
	call	*0xffff000c
