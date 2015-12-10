	.file	"intAVG.c"
	.cpu 430
	.mpy none

	.comm Ptr_Glob,2,2
	.comm Next_Ptr_Glob,2,2
	.comm Int_Glob,2,2
	.comm Bool_Glob,2,2
	.comm Ch_1_Glob,1
	.comm Ch_2_Glob,1
	.comm Arr_1_Glob,100,2
	.comm Arr_2_Glob,5000,2
.global	Reg
.global	Reg
	.section	.bss
	.type	Reg,@object
	.size	Reg,2
Reg:
	.skip 2,0
	.comm Begin_Time,4,2
	.comm End_Time,4,2
	.comm User_Time,4,2
	.comm Microseconds,4,2
	.comm Dhrystones_Per_Second,4,2
	.data
	.p2align 1,0
	.type	input_buf1,@object
	.size	input_buf1,400
input_buf1:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.p2align 1,0
	.type	input_buf2,@object
	.size	input_buf2,34
input_buf2:
	.word	1
	.word	1
	.word	3
	.word	7
	.word	15
	.word	31
	.word	63
	.word	127
	.word	255
	.word	511
	.word	1023
	.word	2047
	.word	4095
	.word	8191
	.word	16383
	.word	32767
	.word	-2
.global	size1
	.p2align 1,0
	.type	size1,@object
	.size	size1,2
size1:
	.word	200
.global	size2
	.p2align 1,0
	.type	size2,@object
	.size	size2,2
size2:
	.word	17
	.text
	.p2align 1,0
.global	run_bm
	.type	run_bm,@function
/***********************
 * Function `run_bm' 
 ***********************/
run_bm:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-12), r1
	mov	#0, -14(r4)
	mov	#0, -12(r4)
	mov	#0, -10(r4)
	mov	#0, -14(r4)
	jmp	.L2
.L3:
	mov	-14(r4), r15
	rla	r15
	add	#input_buf1, r15
	mov	@r15, r15
	add	r15, -12(r4)
	add	#1, -14(r4)
.L2:
	mov	&size1, r15
	cmp	r15, -14(r4)
	jl	.L3
	mov	&size1, r15
	mov	r15, r14
	mov	-12(r4), r15
	call	#__divhi3
	mov	r15, -8(r4)
	mov	#0, -14(r4)
	jmp	.L4
.L5:
	mov	-14(r4), r15
	rla	r15
	add	#input_buf2, r15
	mov	@r15, r15
	add	r15, -10(r4)
	add	#1, -14(r4)
.L4:
	mov	&size2, r15
	cmp	r15, -14(r4)
	jl	.L5
	mov	&size2, r15
	mov	r15, r14
	mov	-10(r4), r15
	call	#__divhi3
	mov	r15, -6(r4)
	mov	-8(r4), r15
	add	-6(r4), r15
	cmp	#0, r15
	jge	.L6
	add	#1, r15
.L6:
	rra	r15
	mov	r15, -4(r4)
	mov	-4(r4), r15
	add	#12, r1
	pop	r4
	ret
.Lfe1:
	.size	run_bm,.Lfe1-run_bm
;; End of function 

	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	r1, r4
	add	#2, r4
	sub	#2, r1
	mov	#288, r15
	mov	#23168, @r15
	mov	#25, r15
	mov.b	#1, @r15
	call	#run_bm
	mov	r15, -4(r4)
	mov	#25, r15
	mov.b	#0, @r15
	mov	#29, r15
	mov.b	#1, @r15
	add	#2, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

