	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	mov	a3, #12
	ldr	a2, =helloworld
	mov	a1, #1
	swi	#0x900004
	mov	a1, #87
	swi	#0x900001
