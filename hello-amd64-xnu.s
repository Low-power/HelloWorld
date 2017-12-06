	.data
helloworld:
	.ascii	"Hello world\n"

	.text
	.globl	start
start:
	movq	$12, %rdx
	leaq	helloworld(%rip), %rsi
	movl	$1, %edi
	movq	$0x2000004, %rax
	syscall
	movl	$0, %edi
	movq	$0x2000001, %rax
	syscall
