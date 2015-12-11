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
	mov.b	@r14, r11
	cmp	#1, r13
	jl	.L6
	add	#1, r14
	add	r14, r13
	mov.b	r11, r10
	mov	#0, r12
	mov	#0, r9
	jmp	.L5
.L7:
	mov.b	r11, r10
	mov.b	r8, r11
.L5:
	cmp.b	r10, r11
	jne	.L3
	add	#1, r12
	cmp	#256, r12
	jl	.L4
	mov.b	#llo(-1), @r15
	mov.b	r11, 1(r15)
	add	#2, r15
	add	#2, r9
	mov	#1, r12
	jmp	.L4
.L3:
	mov.b	r12, @r15
	mov.b	r10, 1(r15)
	add	#2, r15
	add	#2, r9
	mov	#1, r12
.L4:
	mov.b	@r14+, r8
	cmp	r13, r14
	jne	.L7
	jmp	.L2
.L6:
	mov	#0, r12
	mov	#0, r9
.L2:
	mov.b	r12, @r15
	mov.b	r11, 1(r15)
	mov	r9, r15
	add	#2, r15
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
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
	cmp	#1, r13
	jl	.L13
	mov	#0, r8
.L12:
	mov.b	@r14, r11
	mov.b	r11, r12
	sxt	r12
	mov.b	1(r14), r10
	add	#2, r14
	add	r12, r8
	cmp	#1, r12
	jl	.L10
	sxt	r11
	mov	r15, r9
	add	r11, r9
	mov	r15, r12
.L11:
	mov.b	r10, @r12
	add	#1, r12
	cmp	r9, r12
	jne	.L11
	add	r11, r15
.L10:
	sub	#2, r13
	cmp	#1, r13
	jge	.L12
	jmp	.L9
.L13:
	mov	#0, r8
.L9:
	mov	r8, r15
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
	mov	&o, r14
	mov	r14, r15
	add	#llo(-1), r15
.L17:
	add	#1, r15
	cmp.b	#0, @r15
	jne	.L17
	sub	r14, r15
	rla	r15
	call	#malloc
	mov	r15, r11
	mov	&o, r13
	mov	r13, r14
	add	#llo(-1), r14
.L18:
	add	#1, r14
	cmp.b	#0, @r14
	jne	.L18
	mov	r14, r15
	sub	r13, r15
	call	#malloc
	mov	r15, r10
	mov	&o, r14
	mov	r14, r13
	add	#llo(-1), r13
.L19:
	add	#1, r13
	cmp.b	#0, @r13
	jne	.L19
	sub	r14, r13
	mov	r11, r15
	call	#rle_encode
	mov	r11, r15
	call	#free
	mov	r10, r15
	call	#free
	pop	r10
	pop	r11
	ret
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
