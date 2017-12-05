	.section	.rodata
helloworld_w:
	.string	"H\0e\0l\0l\0o\0 \0w\0o\0r\0l\0d\n\0\0"
	.align	0

helloworld_nt_string:
	.short	24
	.short	26
	.long	

	.text
	.global	_NtProcessStartup
_NtProcessStartup:
	pushl	$helloworld_nt_string
	movl	$57, %eax	# NtDisplayString in NT 5.0
#	movl	$109, %eax	# NtDisplayString in NT 6.1
#	movl	$199, %eax	# NtDisplayString in NT 6.2
	movl	%esp, %edx
	int	$0x2e
	addl	$4, %esp
	pushl	$0
	pushl	$-1
	movl	$224, %eax	# NtTerminateProcess in NT 5.0
#	movl	$370, %eax	# NtTerminateProcess in NT 6.1
#	movl	$42, %eax	# NtTerminateProcess in NT 6.2
	movl	%esp, %edx
	int	$0x2e
