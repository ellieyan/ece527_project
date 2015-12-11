	.file	"test1.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	rle_encode
	.type	rle_encode,@function
/***********************
 * Function `rle_encode' 
 ***********************/
rle_encode:
	push	r11
	push	r10
	push	r9
	push	r8
	mov	r15, r12
	mov.b	@r14, r10
	cmp	#1, r13
	jl	.L6
	add	#1, r14
	add	r14, r13
	mov.b	r10, r9
	mov	#0, r11
	mov	#0, r15
	jmp	.L5
.L3:
	mov.b	r11, @r12
	mov.b	r9, 1(r12)
	add	#2, r12
	add	#2, r15
	mov	#1, r11
.L4:
	mov.b	@r14+, r8
	cmp	r13, r14
	jeq	.L9
.L7:
	mov.b	r10, r9
	mov.b	r8, r10
.L5:
	cmp.b	r9, r10
	jne	.L3
	add	#1, r11
	cmp	#256, r11
	jl	.L4
	mov.b	#llo(-1), @r12
	mov.b	r10, 1(r12)
	add	#2, r12
	add	#2, r15
	mov	#1, r11
	mov.b	@r14+, r8
	cmp	r13, r14
	jne	.L7
.L9:
	mov.b	r11, r11
	add	#2, r15
.L2:
	mov.b	r11, @r12
	mov.b	r10, 1(r12)
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.L6:
	mov	#2, r15
	mov.b	#0, r11
	jmp	.L2
.Lfe1:
	.size	rle_encode,.Lfe1-rle_encode
;; End of function 

	.p2align 1,0
.global	rle_decode
	.type	rle_decode,@function
/***********************
 * Function `rle_decode' 
 ***********************/
rle_decode:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	push	r6
	push	r5
	push	r4
	sub	#4, r1
	mov	r15, r12
	mov	r14, r15
	mov	#0, 2(r1)
	cmp	#1, r13
	jl	.L11
	mov	r12, r4
.L21:
	mov.b	@r15, r8
	sxt	r8
	mov.b	1(r15), r9
	add	#2, r15
	add	r8, 2(r1)
	cmp	#1, r8
	jl	.L12
	mov	r8, r11
	add	#llo(-1), r11
	mov	r4, r10
	and	#1, r10
	cmp	r10, r8
	jhs	.L13
	mov	r8, r10
.L13:
	mov	r4, r14
	cmp	#0, r10
	jeq	.L14
	mov	#0, r12
.L15:
	mov.b	r9, @r14
	add	#1, r14
	add	#llo(-1), r11
	add	#1, r12
	cmp	r10, r12
	jlo	.L15
	cmp	r8, r10
	jeq	.L16
.L14:
	mov	r8, r12
	sub	r10, r12
	mov	r12, @r1
	mov	r12, r7
	clrc
	rrc	r7
	mov	r7, r5
	rla	r5
	jeq	.L17
	mov.b	r9, r12
	mov	r12, r6
	swpb	r6
	bis	r12, r6
	add	r4, r10
	mov	#0, r12
.L18:
	mov	r6, @r10
	add	#1, r12
	add	#2, r10
	cmp	r7, r12
	jlo	.L18
	add	r5, r14
	sub	r5, r11
	cmp	r5, @r1
	jeq	.L16
.L17:
	add	r14, r11
	add	#1, r11
.L20:
	mov.b	r9, @r14
	add	#1, r14
	mov	r11, r12
	sub	r14, r12
	cmp	#1, r12
	jge	.L20
.L16:
	add	r8, r4
.L12:
	sub	#2, r13
	cmp	#1, r13
	jge	.L21
.L11:
	mov	2(r1), r15
	add	#4, r1
	pop	r4
	pop	r5
	pop	r6
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe2:
	.size	rle_decode,.Lfe2-rle_decode
;; End of function 

	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	sub	#8, r1
	mov	&o, r11
	mov	r11, r10
	add	#llo(-1), r10
	mov	r10, r15
.L29:
	add	#1, r15
	cmp.b	#0, @r15
	jne	.L29
	sub	r11, r15
	rla	r15
	call	#malloc
	mov	r15, 6(r1)
	mov	r10, r14
.L30:
	add	#1, r14
	cmp.b	#0, @r14
	jne	.L30
	mov	r14, r15
	sub	r11, r15
	call	#malloc
	mov	r15, 4(r1)
.L31:
	add	#1, r10
	cmp.b	#0, @r10
	jne	.L31
	mov	r10, r13
	sub	r11, r13
	mov	r11, r14
	mov	6(r1), r15
	call	#rle_encode
	mov	r15, r5
	cmp	#1, r15
	jl	.L32
	mov	4(r1), r15
	mov	6(r1), r4
	mov	#0, 2(r1)
.L42:
	mov.b	@r4, r9
	sxt	r9
	mov.b	1(r4), r10
	add	#2, r4
	add	r9, 2(r1)
	cmp	#1, r9
	jl	.L33
	mov	r9, r12
	add	#llo(-1), r12
	mov	r15, r11
	and	#1, r11
	cmp	r11, r9
	jhs	.L34
	mov	r9, r11
.L34:
	cmp	#0, r11
	jeq	.L44
	mov	r15, r14
	mov	#0, r13
.L36:
	mov.b	r10, @r14
	add	#1, r14
	add	#llo(-1), r12
	add	#1, r13
	cmp	r11, r13
	jlo	.L36
	cmp	r11, r9
	jne	.L35
	jmp	.L37
.L44:
	mov	r15, r14
.L35:
	mov	r9, r13
	sub	r11, r13
	mov	r13, @r1
	mov	r13, r7
	clrc
	rrc	r7
	mov	r7, r6
	rla	r6
	jeq	.L38
	mov.b	r10, r13
	mov	r13, r8
	swpb	r8
	bis	r13, r8
	mov	r15, r13
	add	r11, r13
	mov	#0, r11
.L39:
	mov	r8, @r13
	add	#1, r11
	add	#2, r13
	cmp	r7, r11
	jlo	.L39
	add	r6, r14
	sub	r6, r12
	cmp	r6, @r1
	jeq	.L37
.L38:
	add	r14, r12
	add	#1, r12
.L41:
	mov.b	r10, @r14
	add	#1, r14
	mov	r12, r13
	sub	r14, r13
	cmp	#1, r13
	jge	.L41
.L37:
	add	r9, r15
.L33:
	sub	#2, r5
	cmp	#1, r5
	jge	.L42
	cmp	#1, 2(r1)
	jl	.L32
	mov	#0, r11
	mov	4(r1), r10
	mov	2(r1), r9
.L43:
	mov	r10, r15
	add	r11, r15
	mov.b	@r15, r15
	sxt	r15
	call	#putchar
	add	#1, r11
	cmp	r9, r11
	jne	.L43
.L32:
	mov	6(r1), r15
	call	#free
	mov	4(r1), r15
	call	#free
	mov	#0, r15
	add	#8, r1
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

.global	o
	.section	.rodata
.LC0:
	.ascii	"WWW"
	.string	"WWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW"
	.data
	.p2align 1,0
	.type	o,@object
	.size	o,2
o:
	.word	.LC0
