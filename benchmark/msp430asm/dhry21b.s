	.file	"dhry21b.c"
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
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	-4(r4), r15
	mov	-6(r4), @r15
	mov	-6(r4), r15
	call	#Func_3
	cmp	#0, r15
	jne	.L2
	mov	-4(r4), r15
	mov	#3, @r15
.L2:
	cmp	#5, -6(r4)
	jhs	.L1
	mov	-6(r4), r15
	rla	r15
	add	#.L9, r15
	mov	@r15, r15
	br	r15	; .L9
	.section	.rodata
	.p2align 1,0
.L9:
	.word	.L4
	.word	.L5
	.word	.L6
	.word	.L12
	.word	.L8
	.text
.L4:
	mov	-4(r4), r15
	mov	#0, @r15
	jmp	.L1
.L5:
	mov	&Int_Glob, r15
	cmp	#101, r15
	jl	.L10
	mov	-4(r4), r15
	mov	#0, @r15
	jmp	.L1
.L10:
	mov	-4(r4), r15
	mov	#3, @r15
	jmp	.L1
.L6:
	mov	-4(r4), r15
	mov	#1, @r15
	jmp	.L1
.L8:
	mov	-4(r4), r15
	mov	#2, @r15
	nop
	jmp	.L1
.L12:
	nop
.L1:
	add	#4, r1
	pop	r4
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
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#8, r1
	mov	r15, -8(r4)
	mov	r14, -6(r4)
	mov	r13, -4(r4)
	mov	-8(r4), r15
	add	#2, r15
	mov	r15, -10(r4)
	mov	-6(r4), r14
	add	-10(r4), r14
	mov	-4(r4), r15
	mov	r14, @r15
	add	#8, r1
	pop	r4
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
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-12), r1
	mov	r15, -10(r4)
	mov	r14, -8(r4)
	mov	r13, -6(r4)
	mov	r12, -4(r4)
	mov	-6(r4), r15
	add	#5, r15
	mov	r15, -12(r4)
	mov	-12(r4), r15
	rla	r15
	add	-10(r4), r15
	mov	-4(r4), @r15
	mov	-12(r4), r15
	add	#1, r15
	rla	r15
	mov	-10(r4), r14
	add	r15, r14
	mov	-12(r4), r15
	rla	r15
	add	-10(r4), r15
	mov	@r15, r15
	mov	r15, @r14
	mov	-12(r4), r15
	add	#15, r15
	rla	r15
	add	-10(r4), r15
	mov	-12(r4), @r15
	mov	-12(r4), -14(r4)
	jmp	.L15
.L16:
	mov	-12(r4), r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r14, r15
	mov	-8(r4), r14
	add	r15, r14
	mov	-14(r4), r15
	rla	r15
	add	r14, r15
	mov	-12(r4), @r15
	add	#1, -14(r4)
.L15:
	mov	-12(r4), r15
	add	#1, r15
	cmp	-14(r4), r15
	jge	.L16
	mov	-12(r4), r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r14, r15
	mov	-8(r4), r13
	add	r15, r13
	mov	-12(r4), r12
	add	#llo(-1), r12
	mov	-12(r4), r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r14, r15
	mov	-8(r4), r14
	add	r15, r14
	mov	-12(r4), r15
	add	#llo(-1), r15
	rla	r15
	add	r14, r15
	mov	@r15, r15
	mov	r15, r14
	add	#1, r14
	mov	r12, r15
	rla	r15
	add	r13, r15
	mov	r14, @r15
	mov	-12(r4), r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	mov	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r15, r14
	mov	r14, r15
	rla	r15
	rla	r15
	add	r14, r15
	add	#500, r15
	mov	-8(r4), r13
	add	r15, r13
	mov	-12(r4), r15
	rla	r15
	add	-10(r4), r15
	mov	@r15, r14
	mov	-12(r4), r15
	rla	r15
	add	r13, r15
	mov	r14, @r15
	mov	#5, &Int_Glob
	add	#12, r1
	pop	r4
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
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov.b	r15, -4(r4)
	mov.b	r14, -3(r4)
	mov.b	-4(r4), -6(r4)
	mov.b	-6(r4), -5(r4)
	cmp.b	-3(r4), -5(r4)
	jeq	.L18
	mov	#0, r15
	jmp	.L19
.L18:
	mov.b	-6(r4), &Ch_1_Glob
	mov	#1, r15
.L19:
	add	#4, r1
	pop	r4
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
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#8, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	#2, -10(r4)
	jmp	.L21
.L22:
	mov	-10(r4), r15
	add	#1, r15
	add	-4(r4), r15
	mov.b	@r15, r14
	mov	-10(r4), r15
	add	-6(r4), r15
	mov.b	@r15, r15
	call	#Func_1
	cmp	#0, r15
	jne	.L21
	mov.b	#65, -8(r4)
	add	#1, -10(r4)
.L21:
	cmp	#3, -10(r4)
	jl	.L22
	cmp.b	#87, -8(r4)
	jl	.L23
	cmp.b	#90, -8(r4)
	jge	.L23
	mov	#7, -10(r4)
.L23:
	cmp.b	#82, -8(r4)
	jne	.L24
	mov	#1, r15
	jmp	.L25
.L24:
	mov	-4(r4), r14
	mov	-6(r4), r15
	call	#strcmp
	cmp	#1, r15
	jl	.L26
	add	#7, -10(r4)
	mov	-10(r4), &Int_Glob
	mov	#1, r15
	jmp	.L25
.L26:
	mov	#0, r15
.L25:
	add	#8, r1
	pop	r4
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
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -4(r4)
	mov	-4(r4), -6(r4)
	cmp	#2, -6(r4)
	jne	.L28
	mov	#1, r15
	jmp	.L29
.L28:
	mov	#0, r15
.L29:
	add	#4, r1
	pop	r4
	ret
.Lfe6:
	.size	Func_3,.Lfe6-Func_3
;; End of function 

