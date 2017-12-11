	.data
helloworld:
	.ascii	"Hello world\n"

	.globl	start
start:
	li	r5, 12
	lis	r4, ha16(helloworld)
	la	r4, lo16(helloworld)(r4)	; Equivalent to addi r4, r4, lo16(helloworld)
	li	r3, 1
	li	r0, 4
	sc
	b	exit_fail	; System call failed
	li	r3, 0		; System call succeed
exit:
	li	r0, 1
	sc
exit_fail:
	li	r3, 1
	b	exit
