	.file	"dhry_2.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	Proc_6
	.type	Proc_6,@function
/***********************
 * Function `Proc_6' 
 ***********************/
Proc_6:
	mov	r15, @r14
	cmp	#2, r15
	jeq	.L2
	mov	#3, @r14
	cmp	#1, r15
	jeq	.L6
	jhs	.L11
	mov	#0, @r14
	ret
.L11:
	cmp	#2, r15
	jeq	.L2
	cmp	#4, r15
	jne	.L5
	mov	#2, @r14
.L5:
	ret
.L2:
	mov	#1, @r14
	ret
.L6:
	cmp	#101, &Int_Glob
	jl	.L5
	mov	#0, @r14
	ret
.Lfe1:
	.size	Proc_6,.Lfe1-Proc_6
;; End of function 

	.p2align 1,0
.global	Proc_7
	.type	Proc_7,@function
/***********************
 * Function `Proc_7' 
 ***********************/
Proc_7:
	add	#2, r15
	add	r15, r14
	mov	r14, @r13
	ret
.Lfe2:
	.size	Proc_7,.Lfe2-Proc_7
;; End of function 

	.p2align 1,0
.global	Proc_8
	.type	Proc_8,@function
/***********************
 * Function `Proc_8' 
 ***********************/
Proc_8:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	mov	r13, r9
	add	#5, r9
	mov	r9, r11
	rla	r11
	mov	r15, r8
	add	r11, r8
	mov	r12, @r8
	mov	r13, r10
	add	#6, r10
	rla	r10
	mov	r15, r7
	add	r10, r7
	mov	r12, @r7
	mov	r13, r12
	add	#35, r12
	rla	r12
	add	r15, r12
	mov	r9, @r12
	mov	r11, r15
	rla	r15
	mov	r15, r12
	rla	r12
	rla	r12
	add	r15, r12
	mov	r12, r15
	rla	r15
	rla	r15
	add	r12, r15
	add	r14, r15
	mov	r15, r14
	add	r11, r14
	mov	r9, @r14
	add	r15, r10
	mov	r9, @r10
	add	#4, r13
	rla	r13
	add	r15, r13
	add	#1, @r13
	mov	@r8, 2000(r14)
	mov	#5, &Int_Glob
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe3:
	.size	Proc_8,.Lfe3-Proc_8
;; End of function 

	.p2align 1,0
.global	Func_1
	.type	Func_1,@function
/***********************
 * Function `Func_1' 
 ***********************/
Func_1:
	cmp.b	r15, r14
	jeq	.L17
	mov	#0, r15
	ret
.L17:
	mov.b	r15, &Ch_1_Glob
	mov	#1, r15
	ret
.Lfe4:
	.size	Func_1,.Lfe4-Func_1
;; End of function 

	.p2align 1,0
.global	Func_2
	.type	Func_2,@function
/***********************
 * Function `Func_2' 
 ***********************/
Func_2:
	cmp.b	3(r14), 2(r15)
	jeq	.L23
	call	#strcmp
	cmp	#0, r15
	jeq	.L22
	jl	.L22
	mov	#10, &Int_Glob
	mov	#1, r15
	ret
.L23:
	jmp	.L23
.L22:
	mov	#0, r15
	ret
.Lfe5:
	.size	Func_2,.Lfe5-Func_2
;; End of function 

	.p2align 1,0
.global	Func_3
	.type	Func_3,@function
/***********************
 * Function `Func_3' 
 ***********************/
Func_3:
	mov	#1, r14
	cmp	#2, r15
	jeq	.L25
	mov	#0, r14
.L25:
	mov	r14, r15
	ret
.Lfe6:
	.size	Func_3,.Lfe6-Func_3
;; End of function 

