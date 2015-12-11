	.file	"tea8.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	encrypt
	.type	encrypt,@function
/***********************
 * Function `encrypt' 
 ***********************/
encrypt:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	push	r6
	push	r5
	mov	@r15, r12
	mov	2(r15), r13
	mov	@r14, r5
	mov	2(r14), r6
	mov	4(r14), r7
	mov	6(r14), r8
	mov	#0, r11
.L2:
	add	#2560, r11
	mov	r13, r14
	rla	r14
	rla	r14
	rla	r14
	rla	r14
	mov	r14, r9
	add	r5, r9
	mov	r13, r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r14, r10
	add	r6, r10
	mov	r9, r14
	xor	r10, r14
	mov	r13, r10
	add	r11, r10
	xor	r10, r14
	add	r14, r12
	mov	r12, r14
	rla	r14
	rla	r14
	rla	r14
	rla	r14
	mov	r14, r9
	add	r7, r9
	mov	r12, r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r14, r10
	add	r8, r10
	mov	r9, r14
	xor	r10, r14
	mov	r12, r10
	add	r11, r10
	xor	r10, r14
	add	r14, r13
	cmp	#20480, r11
	jne	.L2
	mov	r12, @r15
	mov	r13, 2(r15)
	pop	r5
	pop	r6
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe1:
	.size	encrypt,.Lfe1-encrypt
;; End of function 

	.p2align 1,0
.global	decrypt
	.type	decrypt,@function
/***********************
 * Function `decrypt' 
 ***********************/
decrypt:
	push	r11
	push	r10
	push	r9
	push	r8
	push	r7
	push	r6
	push	r5
	mov	@r15, r12
	mov	2(r15), r13
	mov	@r14, r5
	mov	2(r14), r6
	mov	4(r14), r7
	mov	6(r14), r8
	mov	#20480, r11
.L5:
	mov	r12, r14
	rla	r14
	rla	r14
	rla	r14
	rla	r14
	mov	r14, r9
	add	r7, r9
	mov	r12, r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r14, r10
	add	r8, r10
	mov	r9, r14
	xor	r10, r14
	mov	r12, r10
	add	r11, r10
	xor	r10, r14
	sub	r14, r13
	mov	r13, r14
	rla	r14
	rla	r14
	rla	r14
	rla	r14
	mov	r14, r9
	add	r5, r9
	mov	r13, r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r14, r10
	add	r6, r10
	mov	r9, r14
	xor	r10, r14
	mov	r13, r10
	add	r11, r10
	xor	r10, r14
	sub	r14, r12
	add	#llo(-2560), r11
	jne	.L5
	mov	r12, @r15
	mov	r13, 2(r15)
	pop	r5
	pop	r6
	pop	r7
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	ret
.Lfe2:
	.size	decrypt,.Lfe2-decrypt
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
	mov	#4, r15
	call	#malloc
	mov	r15, r10
	mov	#8, r15
	call	#malloc
	mov	r15, r11
	mov	#0, @r10
	mov	#255, 2(r10)
	mov	#119, @r15
	mov	#140, 2(r15)
	mov	#174, 4(r15)
	mov	#56, 6(r15)
	mov	r15, r14
	mov	r10, r15
	call	#encrypt
	mov	r11, r14
	mov	r10, r15
	call	#decrypt
	pop	r10
	pop	r11
	ret
.Lfe3:
	.size	run_bm,.Lfe3-run_bm
;; End of function 

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
	mov.b	#1, &29
.LIRD0:
.Lfe4:
	.size	main,.Lfe4-main
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
