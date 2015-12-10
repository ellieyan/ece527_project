	.file	"copydata.c"
	.cpu 430
	.mpy none

	.section	.rodata
	.p2align 1,0
	.type	datastart,@object
	.size	datastart,2
datastart:
	.word	__datastart
	.p2align 1,0
	.type	romdatastart,@object
	.size	romdatastart,2
romdatastart:
	.word	__romdatastart
	.p2align 1,0
	.type	romdatacopysize,@object
	.size	romdatacopysize,2
romdatacopysize:
	.word	__romdatacopysize
	.text
	.p2align 1,0
.global	__data_move
	.type	__data_move,@function
/***********************
 * Function `__data_move' 
 ***********************/
__data_move:
	push	r4
	mov	r1, r4
	add	#2, r4
	mov	&datastart, r14
	mov	&romdatastart, r15
	cmp	r15, r14
	jeq	.L1
	mov	&romdatacopysize, r13
	mov	&romdatastart, r14
	mov	&datastart, r15
	call	#memmove
.L1:
	pop	r4
	ret
.Lfe1:
	.size	__data_move,.Lfe1-__data_move
;; End of function 

	.global	__do_global_ctors
	.section	.ctors
	.p2align 1,0
	.word	__data_move
