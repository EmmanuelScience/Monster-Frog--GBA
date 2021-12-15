	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"level1.c"
	.text
	.align	2
	.global	initPlayer1
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer1, %function
initPlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #120
	mov	lr, #3
	mov	ip, #8
	mov	r0, #1
	ldr	r3, .L4
	ldr	r1, [r3]
	ldr	r3, .L4+4
	add	r1, r1, #116
	str	r4, [r3]
	str	lr, [r3, #40]
	str	r1, [r3, #4]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	sandwich
	.size	initPlayer1, .-initPlayer1
	.align	2
	.global	initCollectibles1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCollectibles1, %function
initCollectibles1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r1, r2
	mov	r8, r2
	mov	r6, r2
	mov	r5, #1
	mov	r0, #8
	mov	r4, #3
	ldr	ip, .L23
	add	r9, ip, #44
	mov	lr, ip
	mov	r3, ip
	ldr	r7, [ip, #4]
	ldm	r9, {r9, r10}
	ldr	ip, [ip]
.L9:
	cmp	r2, #0
	str	r5, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r4, [r3, #40]
	str	r1, [r3, #28]
	beq	.L13
	cmp	r2, #1
	beq	.L14
	cmp	r2, #2
	bne	.L12
	mov	r2, #160
	mov	r3, #248
	cmp	r6, #0
	mov	r1, #0
	mov	r0, #8
	mov	r5, #1
	mov	r4, #129
	strne	r7, [lr, #4]
	strne	ip, [lr]
	mov	r7, #224
	mov	r6, #100
	mov	ip, #3
	str	r2, [lr, #88]
	ldr	r2, .L23+4
	str	r3, [r2, #4]
	ldr	r3, .L23+8
	cmp	r8, #0
	strne	r10, [lr, #48]
	strne	r9, [lr, #44]
	str	r7, [lr, #92]
	str	r5, [r2, #20]
	str	r0, [r2, #12]
	str	r5, [r3, #20]
	str	r6, [r3, #4]
	str	r0, [r2, #8]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r4, [r2]
	str	r4, [r3]
	str	r1, [r2, #16]
	str	r1, [r2, #24]
	str	r1, [r2, #36]
	str	r1, [r2, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r1, [r3, #28]
	str	ip, [r2, #40]
	str	ip, [r3, #40]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L13:
	mov	ip, #209
	mov	r6, #1
	mov	r7, r2
.L12:
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L9
.L14:
	mov	r8, r2
	mov	r9, #88
	mov	r10, #40
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L9
.L24:
	.align	2
.L23:
	.word	invisble
	.word	speed
	.word	portal
	.size	initCollectibles1, .-initCollectibles1
	.align	2
	.global	initMeatballs1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMeatballs1, %function
initMeatballs1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, r2
	mov	r8, r2
	mov	r6, r2
	mov	r5, #1
	mov	r0, #8
	mov	r4, #3
	ldr	ip, .L52
	ldr	r7, [ip, #136]
	sub	sp, sp, #28
	str	r7, [sp, #16]
	ldr	r7, [ip, #132]
	str	r7, [sp, #20]
	ldr	r7, [ip, #92]
	str	r7, [sp, #4]
	ldr	r7, [ip, #88]
	add	r9, ip, #44
	mov	lr, ip
	mov	r3, ip
	str	r7, [sp, #8]
	str	r2, [sp, #12]
	ldr	r7, [ip, #4]
	ldm	r9, {r9, r10}
	ldr	ip, [ip]
	str	r2, [sp]
.L28:
	cmp	r2, #0
	str	r5, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r4, [r3, #40]
	str	r1, [r3, #28]
	beq	.L34
	cmp	r2, #1
	beq	.L35
	cmp	r2, #2
	beq	.L36
	cmp	r2, #3
	beq	.L37
	cmp	r2, #4
	bne	.L33
	cmp	r6, #0
	ldr	fp, [sp]
	strne	r7, [lr, #4]
	strne	ip, [lr]
	cmp	r8, #0
	strne	r10, [lr, #48]
	strne	r9, [lr, #44]
	cmp	fp, #0
	ldrne	r3, [sp, #4]
	strne	r3, [lr, #92]
	ldrne	r3, [sp, #8]
	strne	r3, [lr, #88]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ldrne	r3, [sp, #16]
	strne	r3, [lr, #136]
	ldrne	r3, [sp, #20]
	mov	r2, #120
	strne	r3, [lr, #132]
	mov	r3, #17
	str	r2, [lr, #180]
	str	r3, [lr, #176]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	mov	fp, #74
	str	fp, [sp, #8]
	mov	fp, #1
	str	fp, [sp]
	mov	fp, #4
	str	fp, [sp, #4]
.L33:
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L28
.L34:
	mov	ip, #217
	mov	r6, #1
	mov	r7, #120
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L28
.L35:
	mov	r8, r2
	mov	r9, #123
	mov	r10, #89
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L28
.L37:
	mov	fp, #75
	str	fp, [sp, #20]
	mov	fp, #1
	str	fp, [sp, #12]
	mov	fp, #240
	add	r2, r2, #1
	str	fp, [sp, #16]
	add	r3, r3, #44
	b	.L28
.L53:
	.align	2
.L52:
	.word	meatBalls
	.size	initMeatballs1, .-initMeatballs1
	.align	2
	.global	initFrog1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFrog1, %function
initFrog1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #1
	mov	r0, #8
	mov	lr, #248
	mov	ip, #3
	ldr	r3, .L56
	str	lr, [r3]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #48]
	str	r2, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L57:
	.align	2
.L56:
	.word	frog
	.size	initFrog1, .-initFrog1
	.align	2
	.global	initObstacles1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObstacles1, %function
initObstacles1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #7
	ldr	r3, .L60
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0
	mov	r0, #43
	mov	r1, #1
	mov	lr, #54
	mov	fp, #19
	mov	r10, #147
	mov	r9, #113
	mov	r8, #158
	mov	r7, #146
	mov	r6, #109
	mov	r5, #170
	mov	r4, #84
	str	ip, [r3, #12]
	str	ip, [r3, #32]
	str	ip, [r3, #52]
	str	ip, [r3, #72]
	str	ip, [r3, #92]
	str	ip, [r3, #112]
	mov	ip, #134
	stm	r3, {r10, fp}
	str	r9, [r3, #20]
	str	r8, [r3, #44]
	str	r7, [r3, #40]
	str	r6, [r3, #64]
	str	r5, [r3, #60]
	str	r4, [r3, #84]
	str	lr, [r3, #80]
	str	ip, [r3, #104]
	str	r0, [r3, #8]
	str	r0, [r3, #28]
	str	r0, [r3, #48]
	str	r0, [r3, #68]
	str	r0, [r3, #88]
	str	r0, [r3, #108]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #56]
	str	r1, [r3, #76]
	str	r1, [r3, #96]
	str	r1, [r3, #116]
	str	r2, [r3, #24]
	str	r2, [r3, #136]
	str	r2, [r3, #156]
	str	lr, [r3, #100]
	str	r2, [r3, #176]
	str	r2, [r3, #196]
	str	r2, [r3, #216]
	str	r2, [r3, #236]
	str	r2, [r3, #256]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	obstacles
	.size	initObstacles1, .-initObstacles1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
