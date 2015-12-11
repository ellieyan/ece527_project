	.file	"inSort.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
	.type	insertion_sort,@function
/***********************
 * Function `insertion_sort' 
 ***********************/
insertion_sort:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	cmp	#2, r14
	jlo	.L1
	mov	r15, r9
	add	#2, r9
	mov	#2, r7
	mov	#1, r8
	jmp	.L3
.L7:
	add	#2, r9
	add	#1, r8
	add	#1, r7
.L3:
	mov	@r9, r10
	cmp	#0, r8
	jeq	.L4
	mov	-2(r9), r11
	cmp	r11, r10
	jge	.L8
	mov	r9, r13
	mov	r8, r12
.L6:
	mov	r11, @r13
	add	#llo(-1), r12
	jeq	.L5
	sub	#2, r13
	mov	-2(r13), r11
	cmp	r11, r10
	jl	.L6
	jmp	.L5
.L8:
	mov	r8, r12
.L5:
	rla	r12
	add	r15, r12
	mov	r10, @r12
	cmp	r14, r7
	jlo	.L7
	jmp	.L1
.L4:
	mov	r10, @r9
	jmp	.L7
.L1:
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
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
	add	#llo(-102), r1
	mov	#34, r13
	mov	#.LC0, r14
	mov	r1, r15
	call	#memcpy
	mov	#34, r13
	mov	#.LC1, r14
	mov	r1, r15
	add	#34, r15
	call	#memcpy
	mov	#34, r13
	mov	#.LC2, r14
	mov	r1, r15
	add	#68, r15
	call	#memcpy
	mov	#17, r14
	mov	r1, r15
	call	#insertion_sort
	mov	#17, r14
	mov	r1, r15
	add	#34, r15
	call	#insertion_sort
	mov	#17, r14
	mov	r1, r15
	add	#68, r15
	call	#insertion_sort
	add	#102, r1
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
	mov	#23168, &288
	push	#.LC3
	call	#printf
	add	#2, r1
	mov	#25, r11
	mov.b	#1, @r11
	call	#run_bm
	mov.b	#0, @r11
	mov	#.LC4, r15
	call	#puts
	mov.b	#1, &29
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

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
