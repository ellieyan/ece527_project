	.file	"inSort.c"
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
	.text
	.p2align 1,0
	.type	insertion_sort,@function
/***********************
 * Function `insertion_sort' 
 ***********************/
insertion_sort:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-10), r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	#1, -12(r4)
	jmp	.L2
.L6:
	mov	-12(r4), r15
	rla	r15
	add	-6(r4), r15
	mov	@r15, -8(r4)
	mov	-12(r4), -10(r4)
	jmp	.L3
.L5:
	mov	-10(r4), r15
	rla	r15
	mov	-6(r4), r14
	add	r15, r14
	mov	-10(r4), r15
	add	#llo(-1), r15
	rla	r15
	add	-6(r4), r15
	mov	@r15, r15
	mov	r15, @r14
	add	#llo(-1), -10(r4)
.L3:
	cmp	#0, -10(r4)
	jeq	.L4
	mov	-10(r4), r15
	add	#llo(-1), r15
	rla	r15
	add	-6(r4), r15
	mov	@r15, r15
	cmp	r15, -8(r4)
	jl	.L5
.L4:
	mov	-10(r4), r15
	rla	r15
	add	-6(r4), r15
	mov	-8(r4), @r15
	add	#1, -12(r4)
.L2:
	cmp	-4(r4), -12(r4)
	jlo	.L6
	add	#10, r1
	pop	r4
	ret
.Lfe1:
	.size	insertion_sort,.Lfe1-insertion_sort
;; End of function 

	.data
	.p2align 1,0
.LC0:
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
	.p2align 1,0
.LC1:
	.word	-2
	.word	32767
	.word	16383
	.word	8191
	.word	4095
	.word	2047
	.word	1023
	.word	511
	.word	255
	.word	127
	.word	63
	.word	31
	.word	15
	.word	7
	.word	3
	.word	1
	.word	1
	.p2align 1,0
.LC2:
	.word	127
	.word	63
	.word	511
	.word	8191
	.word	1023
	.word	-2
	.word	3
	.word	7
	.word	32767
	.word	2047
	.word	31
	.word	4095
	.word	15
	.word	16383
	.word	1
	.word	255
	.word	1
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
	add	#llo(-102), r1
	mov	r4, r15
	add	#llo(-104), r15
	mov	#.LC0, r14
	mov	#34, r13
	call	#memcpy
	mov	r4, r15
	add	#llo(-70), r15
	mov	#.LC1, r14
	mov	#34, r13
	call	#memcpy
	mov	r4, r15
	add	#llo(-36), r15
	mov	#.LC2, r14
	mov	#34, r13
	call	#memcpy
	mov	#17, r14
	mov	r4, r15
	add	#llo(-104), r15
	call	#insertion_sort
	mov	r4, r15
	add	#llo(-70), r15
	mov	#17, r14
	call	#insertion_sort
	mov	r4, r15
	add	#llo(-36), r15
	mov	#17, r14
	call	#insertion_sort
	add	#102, r1
	pop	r4
	ret
.Lfe2:
	.size	run_bm,.Lfe2-run_bm
;; End of function 

	.section	.rodata
.LC3:
	.string	"Execution starts"
.LC4:
	.string	"Execution ends"
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
	mov	#288, r15
	mov	#23168, @r15
	push	#.LC3
	call	#printf
	add	#2, r1
	mov	#25, r15
	mov.b	#1, @r15
	call	#run_bm
	mov	#25, r15
	mov.b	#0, @r15
	mov	#.LC4, r15
	call	#puts
	mov	#29, r15
	mov.b	#1, @r15
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

