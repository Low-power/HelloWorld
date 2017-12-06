	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.section	.opd, "aw"
	.align	3
	.global	_start
_start:
	.quad	start,.TOC.@tocbase,0
	.previous
start:
	li	r5, 12
	addis	r4, r2, helloworld@toc@ha
	addi	r4, r4, helloworld@toc@l
	li	r3, 1
	li	r0, 4
	sc
	li	r3, 0
	li	r0, 1
	sc
