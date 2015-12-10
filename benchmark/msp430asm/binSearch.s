	.file	"binSearch.c"
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
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#2, r1
	mov	r15, -4(r4)
	cmp	#0, -4(r4)
	jne	.L1
	mov	#.LC0, r15
	call	#puts
	mov	#0, r15
	call	#exit
.L1:
	add	#2, r1
	pop	r4
	ret
.Lfe1:
	.size	assert,.Lfe1-assert
;; End of function 

	.p2align 1,0
.global	cmpObject
	.type	cmpObject,@function
/***********************
 * Function `cmpObject' 
 ***********************/
cmpObject:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#8, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	-6(r4), r15
	mov	@r15, -10(r4)
	mov	-4(r4), r15
	mov	@r15, -8(r4)
	cmp	-8(r4), -10(r4)
	jge	.L4
	mov	#llo(-1), r15
	jmp	.L5
.L4:
	cmp	-10(r4), -8(r4)
	jne	.L6
	mov	#0, r15
	jmp	.L5
.L6:
	cmp	-10(r4), -8(r4)
	jge	.L7
	mov	#1, r15
	jmp	.L5
.L7:
	jmp	.L3
.L5:
.L3:
	add	#8, r1
	pop	r4
	ret
.Lfe2:
	.size	cmpObject,.Lfe2-cmpObject
;; End of function 

	.p2align 1,0
.global	bsearch
	.type	bsearch,@function
/***********************
 * Function `bsearch' 
 ***********************/
bsearch:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-14), r1
	mov	r15, -10(r4)
	mov	r14, -8(r4)
	mov	r13, -6(r4)
	mov	r12, -4(r4)
	mov	#1, -16(r4)
	mov	-8(r4), -14(r4)
	cmp	#0, -10(r4)
	jeq	.L9
	cmp	#1, -8(r4)
	jl	.L9
	cmp	#0, -6(r4)
	jeq	.L9
	cmp	#0, -4(r4)
	jne	.L12
.L9:
	mov	2(r4), r15
	jmp	.L11
.L15:
	mov	-16(r4), r15
	add	-14(r4), r15
	mov	r15, -12(r4)
	clrc
	rrc	-12(r4)
	mov	-12(r4), r15
	rla	r15
	add	-10(r4), r15
	mov	-4(r4), r13
	mov	-6(r4), r14
	call	r13
	cmp	#0, r15
	jge	.L13
	mov	-12(r4), r15
	add	#1, r15
	mov	r15, -16(r4)
	jmp	.L12
.L13:
	mov	#1, r15
	cmp	-12(r4), -14(r4)
	jne	.L14
	mov	#0, r15
.L14:
	call	#assert
	mov	-12(r4), -14(r4)
.L12:
	cmp	-14(r4), -16(r4)
	jlo	.L15
	mov	-14(r4), r15
	rla	r15
	add	-10(r4), r15
	mov	-4(r4), r13
	mov	-6(r4), r14
	call	r13
	cmp	#0, r15
	jne	.L16
	mov	-14(r4), r15
	jmp	.L17
.L16:
	mov	2(r4), r15
.L17:
.L11:
	add	#14, r1
	pop	r4
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
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-14), r1
	mov	#16, -16(r4)
	mov	#llo(-1), -14(r4)
	mov	#0, -4(r4)
	mov	r4, r15
	sub	#4, r15
	push	-14(r4)
	mov	#cmpObject, r12
	mov	r15, r13
	mov	-16(r4), r14
	mov	#a, r15
	call	#bsearch
	add	#2, r1
	mov	r15, -12(r4)
	mov	#llo(-1), -4(r4)
	mov	r4, r15
	sub	#4, r15
	push	-14(r4)
	mov	#cmpObject, r12
	mov	r15, r13
	mov	-16(r4), r14
	mov	#a, r15
	call	#bsearch
	add	#2, r1
	mov	r15, -12(r4)
	mov	#255, -4(r4)
	mov	r4, r15
	sub	#4, r15
	push	-14(r4)
	mov	#cmpObject, r12
	mov	r15, r13
	mov	-16(r4), r14
	mov	#a, r15
	call	#bsearch
	add	#2, r1
	mov	r15, -12(r4)
	push	-14(r4)
	mov	#cmpObject, r12
	mov	#0, r13
	mov	-16(r4), r14
	mov	#a, r15
	call	#bsearch
	add	#2, r1
	mov	r15, -12(r4)
	mov	#1, -10(r4)
	mov	#32767, -8(r4)
	mov	-10(r4), r15
	add	-8(r4), r15
	mov	r15, -6(r4)
	add	#14, r1
	pop	r4
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
	mov	r1, r4
	add	#2, r4
	mov	#288, r15
	mov	#23168, @r15
	push	#.LC1
	call	#printf
	add	#2, r1
	mov	#25, r15
	mov.b	#1, @r15
	call	#run_bm
	mov	#25, r15
	mov.b	#0, @r15
	mov	#.LC2, r15
	call	#puts
	mov	#29, r15
	mov.b	#1, @r15
.LIRD0:
.Lfe5:
	.size	main,.Lfe5-main
;; End of function 

