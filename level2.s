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
	.file	"level2.c"
	.text
	.align	2
	.global	initPlayer2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer2, %function
initPlayer2:
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
	.size	initPlayer2, .-initPlayer2
	.align	2
	.global	initCollectibles2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCollectibles2, %function
initCollectibles2:
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
	mov	r2, #72
	cmp	r6, #0
	mov	r3, #3
	strne	r7, [lr, #4]
	strne	ip, [lr]
	cmp	r8, #0
	mov	r1, #0
	mov	r0, #8
	mov	ip, #1
	mov	r8, #5
	mov	r7, #118
	mov	r6, #228
	mov	r5, #121
	mov	r4, #2
	strne	r9, [lr, #44]
	mov	r9, #129
	str	r2, [lr, #88]
	ldr	r2, .L23+4
	str	r3, [r2, #40]
	ldr	r3, .L23+8
	stm	r2, {r7, r8}
	stm	r3, {r5, r6}
	strne	r10, [lr, #48]
	str	r9, [lr, #92]
	str	ip, [r2, #20]
	str	r0, [r2, #12]
	str	ip, [r3, #20]
	str	r4, [r3, #40]
	str	r0, [r2, #8]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r2, #16]
	str	r1, [r2, #24]
	str	r1, [r2, #36]
	str	r1, [r2, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r1, [r3, #28]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L13:
	mov	ip, #162
	mov	r6, #1
	mov	r7, #9
.L12:
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L9
.L14:
	mov	r8, r2
	mov	r9, #176
	mov	r10, #227
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L9
.L24:
	.align	2
.L23:
	.word	invisble
	.word	speed
	.word	portal
	.size	initCollectibles2, .-initCollectibles2
	.align	2
	.global	initMeatballs2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMeatballs2, %function
initMeatballs2:
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
	mov	r3, #236
	str	r2, [lr, #180]
	str	r3, [lr, #176]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	mov	fp, #58
	str	fp, [sp, #8]
	mov	fp, #1
	str	fp, [sp]
	mov	fp, #37
	str	fp, [sp, #4]
.L33:
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L28
.L34:
	mov	ip, #140
	mov	r6, #1
	mov	r7, #46
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L28
.L35:
	mov	r8, r2
	mov	r9, #143
	mov	r10, #193
	add	r2, r2, #1
	add	r3, r3, #44
	b	.L28
.L37:
	mov	fp, #56
	str	fp, [sp, #20]
	mov	fp, #1
	str	fp, [sp, #12]
	mov	fp, #214
	add	r2, r2, #1
	str	fp, [sp, #16]
	add	r3, r3, #44
	b	.L28
.L53:
	.align	2
.L52:
	.word	meatBalls
	.size	initMeatballs2, .-initMeatballs2
	.align	2
	.global	initFrog2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFrog2, %function
initFrog2:
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
	.size	initFrog2, .-initFrog2
	.align	2
	.global	initObstacles2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObstacles2, %function
initObstacles2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r2, #0
	mov	ip, #7
	mov	r0, #43
	mov	r1, #1
	mov	lr, #54
	mov	r9, #82
	mov	r8, #134
	mov	r7, #108
	mov	r6, #88
	mov	r5, #109
	mov	r4, #135
	ldr	r3, .L60
	str	ip, [r3, #12]
	str	ip, [r3, #32]
	str	ip, [r3, #52]
	str	ip, [r3, #72]
	str	r9, [r3, #4]
	str	r8, [r3, #24]
	str	r7, [r3, #44]
	str	r6, [r3, #40]
	str	r5, [r3, #64]
	str	r4, [r3, #60]
	str	r0, [r3, #8]
	str	r0, [r3, #28]
	str	r0, [r3, #48]
	str	r0, [r3, #68]
	str	lr, [r3]
	str	lr, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #56]
	str	r1, [r3, #76]
	str	r2, [r3, #96]
	str	r2, [r3, #116]
	str	r2, [r3, #136]
	str	r2, [r3, #156]
	str	r2, [r3, #176]
	str	r2, [r3, #196]
	str	r2, [r3, #216]
	str	r2, [r3, #236]
	str	r2, [r3, #256]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	obstacles
	.size	initObstacles2, .-initObstacles2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
