	.file	"rle.c"
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

	.p2align 1,0
.global	run_bm
	.type	run_bm,@function
/***********************
 * Function `run_bm' 
 ***********************/
run_bm:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	push	r6
	mov	&o, r14
	mov	r14, r15
	add	#llo(-1), r15
.L29:
	add	#1, r15
	cmp.b	#0, @r15
	jne	.L29
	sub	r14, r15
	rla	r15
	call	#malloc
	mov	r15, r7
	mov	&o, r14
	mov	r14, r15
	add	#llo(-1), r15
.L30:
	add	#1, r15
	cmp.b	#0, @r15
	jne	.L30
	sub	r14, r15
	call	#malloc
	mov	r15, r6
	mov	&o, r13
	mov	r13, r8
	add	#llo(-1), r8
.L31:
	add	#1, r8
	cmp.b	#0, @r8
	jne	.L31
	sub	r13, r8
	mov.b	@r13, r11
	cmp	#1, r8
	jl	.L36
	add	#1, r13
	add	r13, r8
	mov	r7, r14
	mov.b	r11, r10
	mov	#0, r12
	jmp	.L35
.L33:
	mov.b	r12, @r14
	mov.b	r10, 1(r14)
	add	#2, r14
	mov	#1, r12
.L34:
	mov.b	@r13+, r9
	cmp	r8, r13
	jeq	.L41
.L37:
	mov.b	r11, r10
	mov.b	r9, r11
.L35:
	cmp.b	r10, r11
	jne	.L33
	add	#1, r12
	cmp	#256, r12
	jl	.L34
	mov.b	#llo(-1), @r14
	mov.b	r11, 1(r14)
	add	#2, r14
	mov	#1, r12
	mov.b	@r13+, r9
	cmp	r8, r13
	jne	.L37
.L41:
	mov.b	r12, r12
.L32:
	mov.b	r12, @r14
	mov.b	r11, 1(r14)
	mov	r7, r15
	call	#free
	mov	r6, r15
	call	#free
	pop	r6
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.L36:
	mov	r7, r14
	mov.b	#0, r12
	jmp	.L32
.Lfe3:
	.size	run_bm,.Lfe3-run_bm
;; End of function 

	.section	.rodata
.LC0:
	.string	"RLE DONE "
	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	#23168, &288
	mov	#25, r11
	mov.b	#1, @r11
	call	#run_bm
	mov.b	#0, @r11
	mov	#.LC0, r15
	call	#puts
	mov.b	#1, &29
.LIRD0:
.Lfe4:
	.size	main,.Lfe4-main
;; End of function 

.global	o
	.section	.rodata
.LC1:
	.ascii	"WWW"
	.string	"WWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW"
	.data
	.p2align 1,0
	.type	o,@object
	.size	o,2
o:
	.word	.LC1
	.comm Dhrystones_Per_Second,4,2
	.comm Microseconds,4,2
	.comm User_Time,4,2
	.comm End_Time,4,2
	.comm Begin_Time,4,2
.global	Reg
.global	Reg
	.section	.bss
	.type	Reg,@object
	.size	Reg,2
Reg:
	.skip 2,0
	.comm Arr_2_Glob,5000,2
	.comm Arr_1_Glob,100,2
	.comm Ch_2_Glob,1
	.comm Ch_1_Glob,1
	.comm Bool_Glob,2,2
	.comm Int_Glob,2,2
	.comm Next_Ptr_Glob,2,2
	.comm Ptr_Glob,2,2
