	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	li	r5, 12
	lis	r4, helloworld@ha
	la	r4, helloworld@l(r4)	# Equivalent to addi r4, r4, helloworld@l
	li	r3, 1
	li	r0, 4
	sc
	li	r3, 0
	li	r0, 1
	sc
