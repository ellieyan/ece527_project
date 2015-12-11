	.file	"dhry_2.c"
	.cpu 430
	.mpy none

	.text
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
.Lfe1:
	.size	Proc_7,.Lfe1-Proc_7
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
	mov	r13, r11
	add	#5, r11
	mov	r11, r10
	rla	r10
	mov	r15, r8
	add	r10, r8
	mov	r12, @r8
	mov	r13, r10
	add	#6, r10
	mov	r10, r9
	rla	r9
	add	r15, r9
	mov	r12, @r9
	mov	r13, r12
	add	#35, r12
	rla	r12
	add	r15, r12
	mov	r11, @r12
	cmp	r11, r10
	jl	.L3
	mov	r11, r15
	rla	r15
	rla	r15
	mov	r15, r12
	rla	r12
	rla	r12
	add	r12, r15
	mov	r15, r12
	rla	r12
	rla	r12
	add	r15, r12
	add	r14, r12
	mov	r11, r15
	rla	r15
	add	r12, r15
	mov	r11, r12
.L4:
	mov	r11, @r15
	add	#1, r12
	add	#2, r15
	cmp	r12, r10
	jge	.L4
.L3:
	mov	r11, r15
	rla	r15
	rla	r15
	mov	r15, r12
	rla	r12
	rla	r12
	add	r12, r15
	mov	r15, r12
	rla	r12
	rla	r12
	add	r15, r12
	add	r12, r14
	add	#4, r13
	rla	r13
	add	r14, r13
	add	#1, @r13
	rla	r11
	add	r14, r11
	mov	@r8, 2000(r11)
	mov	#5, &Int_Glob
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe2:
	.size	Proc_8,.Lfe2-Proc_8
;; End of function 

	.p2align 1,0
.global	Func_1
	.type	Func_1,@function
/***********************
 * Function `Func_1' 
 ***********************/
Func_1:
	cmp.b	r14, r15
	jne	.L8
	mov.b	r15, &Ch_1_Glob
	mov	#1, r15
	ret
.L8:
	mov	#0, r15
	ret
.Lfe3:
	.size	Func_1,.Lfe3-Func_1
;; End of function 

	.p2align 1,0
.global	Func_2
	.type	Func_2,@function
/***********************
 * Function `Func_2' 
 ***********************/
Func_2:
	push	r11
	push	r10
	push	r9
	mov	r15, r10
	mov	r14, r9
	mov	#2, r11
.L11:
	mov	r9, r13
	add	r11, r13
	mov.b	1(r13), r14
	sxt	r14
	mov	r10, r13
	add	r11, r13
	mov.b	@r13, r15
	sxt	r15
	call	#Func_1
	cmp	#0, r15
	jne	.L10
	add	#1, r11
.L10:
	cmp	#3, r11
	jl	.L11
	mov	r9, r14
	mov	r10, r15
	call	#strcmp
	cmp	#0, r15
	jeq	.L13
	jl	.L13
	add	#7, r11
	mov	r11, &Int_Glob
	mov	#1, r15
	jmp	.L12
.L13:
	mov	#0, r15
.L12:
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe4:
	.size	Func_2,.Lfe4-Func_2
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
	jeq	.L16
	mov	#0, r14
.L16:
	mov	r14, r15
	ret
.Lfe5:
	.size	Func_3,.Lfe5-Func_3
;; End of function 

	.p2align 1,0
.global	Proc_6
	.type	Proc_6,@function
/***********************
 * Function `Proc_6' 
 ***********************/
Proc_6:
	push	r11
	push	r10
	mov	r15, r10
	mov	r14, r11
	mov	r15, @r11
	call	#Func_3
	cmp	#0, r15
	jne	.L18
	mov	#3, @r11
.L18:
	cmp	#1, r10
	jeq	.L21
	jlo	.L20
	cmp	#2, r10
	jeq	.L22
	cmp	#4, r10
	jne	.L25
	jmp	.L26
.L20:
	mov	#0, @r11
	jmp	.L25
.L21:
	cmp	#101, &Int_Glob
	jl	.L24
	mov	#0, @r11
	jmp	.L25
.L24:
	mov	#3, @r11
	jmp	.L25
.L22:
	mov	#1, @r11
	jmp	.L25
.L26:
	mov	#2, @r11
.L25:
	pop	r10
	pop	r11
	ret
.Lfe6:
	.size	Proc_6,.Lfe6-Proc_6
;; End of function 

