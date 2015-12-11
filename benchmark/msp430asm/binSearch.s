	.file	"binSearch.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	cmpObject
	.type	cmpObject,@function
/***********************
 * Function `cmpObject' 
 ***********************/
cmpObject:
	mov	@r15, r15
	mov	@r14, r14
	cmp	r14, r15
	jl	.L3
	jeq	.L4
	cmp	r15, r14
	jl	.L5
	ret
.L3:
	mov	#llo(-1), r15
	ret
.L4:
	mov	#0, r15
	ret
.L5:
	mov	#1, r15
	ret
.Lfe1:
	.size	cmpObject,.Lfe1-cmpObject
;; End of function 

	.section	.rodata
.LC0:
	.string	"Assertion FAILED "
	.text
	.p2align 1,0
.global	assert
	.type	assert,@function
/***********************
 * Function `assert' 
 ***********************/
assert:
	cmp	#0, r15
	jne	.L6
	mov	#.LC0, r15
	call	#puts
	mov	#0, r15
	call	#exit
.L6:
	ret
.Lfe2:
	.size	assert,.Lfe2-assert
;; End of function 

	.p2align 1,0
.global	bsearch
	.type	bsearch,@function
/***********************
 * Function `bsearch' 
 ***********************/
bsearch:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	push	r6
	push	r5
	mov	r15, r8
	mov	r13, r7
	mov	r12, r6
	mov	16(r1), r5
	cmp	#0, r15
	jeq	.L9
	cmp	#1, r14
	jl	.L9
	cmp	#0, r13
	jeq	.L9
	cmp	#0, r12
	jeq	.L9
	mov	r14, r10
	cmp	#2, r14
	jlo	.L10
	mov	#1, r9
.L14:
	mov	r10, r11
	add	r9, r11
	clrc
	rrc	r11
	mov	r11, r15
	rla	r15
	mov	r7, r14
	add	r8, r15
	call	r6
	cmp	#0, r15
	jge	.L11
	mov	r11, r9
	add	#1, r9
	jmp	.L12
.L11:
	mov	#1, r15
	cmp	r11, r10
	jne	.L13
	mov	#0, r15
.L13:
	call	#assert
	mov	r11, r10
.L12:
	cmp	r10, r9
	jlo	.L14
.L10:
	mov	r10, r13
	rla	r13
	mov	r7, r14
	mov	r8, r15
	add	r13, r15
	call	r6
	cmp	#0, r15
	jne	.L9
	mov	r10, r5
.L9:
	mov	r5, r15
	pop	r5
	pop	r6
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe3:
	.size	bsearch,.Lfe3-bsearch
;; End of function 

	.p2align 1,0
.global	run_bm
	.type	run_bm,@function
/***********************
 * Function `run_bm' 
 ***********************/
run_bm:
	sub	#2, r1
	mov	#0, @r1
	push	#llo(-1)
	mov	#cmpObject, r12
	mov	r1, r13
	add	#2, r13
	mov	#16, r14
	mov	#a, r15
	call	#bsearch
	mov	#llo(-1), 2(r1)
	mov	#llo(-1), @r1
	mov	#cmpObject, r12
	mov	r1, r13
	add	#2, r13
	mov	#16, r14
	mov	#a, r15
	call	#bsearch
	mov	#255, 2(r1)
	mov	#llo(-1), @r1
	mov	#cmpObject, r12
	mov	r1, r13
	add	#2, r13
	mov	#16, r14
	mov	#a, r15
	call	#bsearch
	mov	#llo(-1), @r1
	mov	#cmpObject, r12
	mov	#0, r13
	mov	#16, r14
	mov	#a, r15
	call	#bsearch
	add	#4, r1
	ret
.Lfe4:
	.size	run_bm,.Lfe4-run_bm
;; End of function 

	.section	.rodata
.LC1:
	.string	"Execution starts"
.LC2:
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
	push	#.LC1
	call	#printf
	add	#2, r1
	mov	#25, r11
	mov.b	#1, @r11
	call	#run_bm
	mov.b	#0, @r11
	mov	#.LC2, r15
	call	#puts
	mov.b	#1, &29
.LIRD0:
.Lfe5:
	.size	main,.Lfe5-main
;; End of function 

.global	a
	.data
	.p2align 1,0
	.type	a,@object
	.size	a,34
a:
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
