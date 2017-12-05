	.section	.rodata
helloworld:
	.string	"Hello world\n"

	.text
	.global	_start
_start:
	mov	r2, #12
	ldr	r1, =helloworld
	mov	r0, #1
	mov	r7, #4
	swi	#0
	mov	r0, #0
	mov	r7, #1
	swi	#0
