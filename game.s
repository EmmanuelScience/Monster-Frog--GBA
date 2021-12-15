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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L4
	ldr	r2, .L4+4
	ldr	ip, .L4+8
	ldr	r3, [r1, #4]
	ldr	r0, [r2]
	str	lr, [sp, #-4]!
	ldr	r2, [r1]
	ldr	lr, [ip]
	sub	r3, r3, r0
	ldr	ip, [r1, #36]
	ldr	r0, [r1, #28]
	sub	r2, r2, lr
	ldr	r1, .L4+12
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	and	r2, r2, #255
	add	r0, r0, ip, lsl #5
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	sandwich
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrog.part.0, %function
drawFrog.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L8
	ldr	r2, .L8+4
	ldr	ip, .L8+8
	ldr	r0, [r2]
	ldr	r3, [r1, #4]
	str	lr, [sp, #-4]!
	ldr	r2, [r1]
	ldr	lr, [ip]
	ldr	ip, [r1, #36]
	sub	r3, r3, r0
	ldr	r0, [r1, #28]
	sub	r2, r2, lr
	ldr	r1, .L8+12
	lsl	r3, r3, #23
	add	ip, ip, #6
	lsr	r3, r3, #23
	and	r2, r2, #255
	add	r0, r0, ip, lsl #5
	strh	r3, [r1, #98]	@ movhi
	strh	r2, [r1, #96]	@ movhi
	strh	r0, [r1, #100]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	frog
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawFrog.part.0, .-drawFrog.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L19
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L16
	cmp	r3, #2
	beq	.L17
	cmp	r3, #3
	beq	.L18
.L12:
	ldr	r3, [r4, #4]
	cmp	r3, #3
	movgt	r2, #2
	mov	r0, #96
	ldrgt	r3, .L19+4
	mov	lr, #9
	mov	ip, #1
	strgt	r2, [r3, #12]
	strgt	r2, [r3, #8]
	mov	r3, #0
	mov	r1, #5
	ldr	r2, .L19+8
	str	r0, [r2]
	ldr	r2, .L19+12
	ldr	r0, .L19+16
	str	lr, [r2]
	ldr	r2, .L19+20
	str	ip, [r0]
	ldr	lr, .L19+24
	str	r3, [r2]
	ldr	ip, .L19+28
	ldr	r0, .L19+32
	ldr	r2, .L19+36
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L16:
	ldr	r2, .L19+40
	ldr	r1, .L19+44
	ldr	r3, .L19+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+64
	mov	lr, pc
	bx	r3
	b	.L12
.L17:
	ldr	r2, .L19+40
	ldr	r1, .L19+68
	ldr	r3, .L19+72
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+88
	mov	lr, pc
	bx	r3
	b	.L12
.L18:
	ldr	r2, .L19+40
	ldr	r1, .L19+92
	ldr	r3, .L19+96
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+100
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+104
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+108
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+112
	mov	lr, pc
	bx	r3
	b	.L12
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	frog
	.word	vOff
	.word	hOff
	.word	animate
	.word	frame_count
	.word	stolen_meatballs
	.word	meatballs
	.word	num_portal
	.word	remaining_meatballs
	.word	collisionMap
	.word	collisionmap1Bitmap
	.word	initPlayer1
	.word	initCollectibles1
	.word	initMeatballs1
	.word	initFrog1
	.word	initObstacles1
	.word	collisionmap2Bitmap
	.word	initPlayer2
	.word	initCollectibles2
	.word	initMeatballs2
	.word	initFrog2
	.word	initObstacles2
	.word	collisionmap3Bitmap
	.word	initPlayer3
	.word	initCollectibles3
	.word	initMeatballs3
	.word	initFrog3
	.word	initObstacles3
	.size	initGame, .-initGame
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #5
	push	{r4, r5, r6, lr}
	ldr	r4, .L34
	ldr	r3, .L34+4
	ldr	r5, [r4, #24]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #28]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #32]
	str	r1, [r4, #28]
	bne	.L22
	ldr	r0, [r4, #36]
	ldr	r3, .L34+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L22:
	ldr	r3, .L34+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	streq	r3, [r4, #28]
	ldr	r3, .L34+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	moveq	r3, #3
	streq	r3, [r4, #28]
	ldr	r3, .L34+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L25
	mov	r2, #2
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #28]
	bne	.L27
.L28:
	mov	r3, #1
	str	r3, [r4, #28]
.L27:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L28
	ldr	r3, [r4, #28]
	cmp	r3, #5
	bne	.L27
	mov	r3, #0
	str	r6, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	sandwich
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L111
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, r7, lr}
	bne	.L38
	ldr	ip, .L111+4
	ldr	r3, .L111+8
	ldr	r2, [ip]
	ldr	r1, [ip, #8]
	ldr	r3, [r3]
	ldr	r0, [ip, #4]
	sub	r1, r2, r1
	add	r3, r3, r1, lsl #8
	ldrb	lr, [r3, r0]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r0
	bne	.L107
.L38:
	ldr	r3, .L111
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L41
	ldr	r2, .L111+4
	ldr	ip, [r2]
	ldr	r0, [r2, #8]
	ldr	r4, [r2, #20]
	ldr	r1, .L111+8
	add	lr, ip, r0
	ldr	r1, [r1]
	add	r3, lr, r4
	ldr	r5, [r2, #4]
	sub	r3, r3, #1
	add	r3, r1, r3, lsl #8
	ldrb	r3, [r3, r5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L108
.L41:
	ldr	r3, .L111
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L44
	ldr	r3, .L111+8
	ldr	lr, .L111+4
	ldr	r0, [r3]
	ldm	lr, {r1, r2}
	ldr	r3, [lr, #12]
	add	ip, r0, r1, lsl #8
	sub	r3, r2, r3
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L109
.L44:
	ldr	r3, .L111
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L47
	ldr	ip, .L111+4
	ldr	r1, .L111+8
	ldr	lr, [ip, #4]
	ldr	r3, [ip, #16]
	ldr	r2, [ip]
	ldr	r1, [r1]
	add	r3, lr, r3
	sub	r3, r3, #1
	add	r0, r1, r2, lsl #8
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L110
.L47:
	ldr	r3, .L111+12
	ldrh	r3, [r3]
	tst	r3, #1
	and	r3, r3, #2
	beq	.L49
	ldr	r2, .L111+16
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L49
	cmp	r3, #0
	beq	.L51
	tst	r2, #2
	bne	.L51
	mov	r2, #1
	ldr	r3, .L111+20
	str	r2, [r3]
.L53:
	ldr	r3, .L111+24
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L51
	mov	r0, #0
	ldr	r7, .L111+28
	mov	r1, r0
	mov	ip, r0
	mov	r2, r7
	ldr	r6, .L111+4
	str	r0, [r3]
	ldr	r4, [r6, #4]
	ldr	lr, [r6]
	ldr	r5, .L111+32
.L55:
	ldr	r3, [r2, #20]
	cmp	r3, #0
	beq	.L54
	ldm	r2, {r0, r3}
	sub	r3, r3, r4
	sub	r0, r0, lr
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, #0
	rsblt	r0, r0, #0
	add	r3, r3, r0
	cmp	r3, r5
	movle	ip, r1
	movle	r5, r3
.L54:
	add	r1, r1, #1
	cmp	r1, #5
	add	r2, r2, #44
	bne	.L55
	add	r3, ip, ip, lsl #2
	add	r3, ip, r3, lsl #1
	ldr	r2, [r7, r3, lsl #2]
	ldr	r0, .L111+36
	cmp	lr, r2
	ldr	r1, [r0]
	lsl	r3, ip, #2
	ble	.L56
	sub	lr, lr, r2
	sub	lr, r1, lr
	cmp	lr, #0
	movle	r1, #1
	strle	r1, [r0]
	ble	.L58
.L104:
	str	lr, [r0]
.L58:
	add	r3, r3, ip
	add	ip, ip, r3, lsl #1
	add	r7, r7, ip, lsl #2
	ldr	r3, [r7, #4]
	ldr	r0, .L111+40
	cmp	r4, r3
	ldr	r1, [r0]
	ble	.L59
	sub	r4, r4, r3
	sub	r1, r1, r4
	cmp	r1, #0
	movle	r1, #1
	strle	r1, [r0]
	ble	.L61
.L105:
	str	r1, [r0]
.L61:
	stm	r6, {r2, r3}
.L51:
	pop	{r4, r5, r6, r7, lr}
	b	animatePlayer
.L49:
	cmp	r3, #0
	beq	.L51
	ldr	r3, .L111+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L53
	pop	{r4, r5, r6, r7, lr}
	b	animatePlayer
.L110:
	ldr	r0, [ip, #20]
	add	r2, r2, r0
	sub	r2, r2, #1
	add	r2, r1, r2, lsl #8
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	add	r0, lr, r0
	cmp	r0, #256
	bgt	.L47
	ldr	r1, .L111+40
	ldr	r3, [ip, #12]
	ldr	r2, [r1]
	add	r3, lr, r3
	cmp	r2, #16
	str	r3, [ip, #4]
	bgt	.L47
	sub	r3, r3, r2
	cmp	r3, #119
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L47
.L109:
	mvn	r2, r2
	ldr	ip, [lr, #20]
	add	r1, r1, ip
	sub	r1, r1, #1
	add	r1, r0, r1, lsl #8
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	lsr	r2, r2, #31
	moveq	r2, #0
	cmp	r2, #0
	beq	.L44
	ldr	r1, .L111+40
	ldr	r2, [r1]
	cmp	r2, #0
	str	r3, [lr, #4]
	ble	.L44
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L44
.L108:
	add	ip, ip, r4
	add	r0, r0, ip
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #8
	ldr	r0, [r2, #16]
	add	r1, r1, r5
	add	r1, r1, r0
	ldrb	r1, [r1, #-1]	@ zero_extendqisi2
	cmp	ip, #256
	movgt	r3, #0
	movle	r3, #1
	cmp	r1, #0
	moveq	r3, #0
	cmp	r3, #0
	beq	.L41
	ldr	r1, .L111+36
	ldr	r3, [r1]
	cmp	r3, #96
	str	lr, [r2]
	bgt	.L41
	sub	lr, lr, r3
	cmp	lr, #79
	addgt	r3, r3, #1
	strgt	r3, [r1]
	b	.L41
.L107:
	mvn	r2, r2
	ldr	r0, [ip, #16]
	add	r3, r3, r0
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	lsr	r2, r2, #31
	moveq	r2, #0
	cmp	r2, #0
	beq	.L38
	ldr	r2, .L111+36
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [ip]
	ble	.L38
	sub	r1, r1, r3
	cmp	r1, #80
	suble	r3, r3, #1
	strle	r3, [r2]
	b	.L38
.L59:
	sub	r4, r3, r4
	add	r1, r4, r1
	cmp	r1, #15
	movgt	r1, #16
	b	.L105
.L56:
	sub	lr, r2, lr
	add	lr, lr, r1
	cmp	lr, #95
	movgt	r1, #96
	strgt	r1, [r0]
	bgt	.L58
	b	.L104
.L112:
	.align	2
.L111:
	.word	67109120
	.word	sandwich
	.word	collisionMap
	.word	oldButtons
	.word	buttons
	.word	active_invisible
	.word	num_portal
	.word	meatBalls
	.word	100000
	.word	vOff
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	distance
	.syntax unified
	.arm
	.fpu softvfp
	.type	distance, %function
distance:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, r2
	sub	r1, r1, r3
	cmp	r0, #0
	rsblt	r0, r0, #0
	cmp	r1, #0
	rsblt	r1, r1, #0
	add	r0, r0, r1
	bx	lr
	.size	distance, .-distance
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L118
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L115
	ldr	r2, .L118+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L115:
	b	drawPlayer.part.0
.L119:
	.align	2
.L118:
	.word	sandwich
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	updateCollectibles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCollectibles, %function
updateCollectibles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L150
	mov	r6, r4
	mov	r5, r4
	ldr	r8, .L150+4
	ldr	r9, .L150+8
	ldr	fp, .L150+12
	ldr	r10, .L150+16
	sub	sp, sp, #20
	add	r7, r4, #132
.L124:
	ldr	r3, [r5, #20]
	cmp	r3, #0
	bne	.L147
.L122:
	add	r5, r5, #44
	cmp	r5, r7
	bne	.L124
	ldr	r8, .L150+20
	ldr	r3, [r8, #20]
	cmp	r3, #0
	bne	.L148
.L126:
	ldr	r5, .L150+24
	ldr	r3, [r5, #20]
	cmp	r3, #0
	bne	.L149
.L129:
	ldr	fp, .L150+28
	ldr	r10, .L150+32
	ldr	r9, .L150+36
.L132:
	ldr	r3, [r4, #24]
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, fp, r3
	cmp	r3, r10
	bcs	.L131
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #36]
.L131:
	add	r4, r4, #44
	cmp	r4, r7
	bne	.L132
	ldr	r4, [r8, #24]
	add	r3, r4, r4, lsl #4
	ldr	r2, .L150+28
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	ldr	r0, .L150+32
	sub	r2, r2, r3
	ldr	r1, [r6, #24]
	ldr	r3, [r6, #112]
	cmp	r2, r0
	ldr	r2, [r6, #68]
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r1, [r6, #24]
	str	r2, [r6, #68]
	str	r3, [r6, #112]
	bcs	.L133
	ldr	r0, [r8, #36]
	ldr	r3, .L150+36
	ldr	r1, [r8, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r8, #36]
.L133:
	ldr	r6, [r5, #24]
	add	r3, r6, r6, lsl #4
	ldr	r2, .L150+28
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	ldr	r3, .L150+32
	add	r4, r4, #1
	cmp	r2, r3
	str	r4, [r8, #24]
	bcs	.L134
	ldr	r0, [r5, #36]
	ldr	r3, .L150+36
	ldr	r1, [r5, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L134:
	add	r6, r6, #1
	str	r6, [r5, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L147:
	ldm	r8, {r2, r3}
	ldr	r0, [r8, #20]
	ldr	r1, [r8, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L122
	mov	r3, #1
	mov	r2, #0
	ldr	r1, .L150+40
	str	r3, [r5, #16]
	str	r3, [fp]
	mov	r0, r10
	ldr	r1, [r1]
	str	r2, [r5, #20]
	ldr	r3, .L150+44
	mov	lr, pc
	bx	r3
	b	.L122
.L149:
	ldr	r3, .L150+4
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r9, .L150+8
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L129
	mov	r3, #1
	mov	r2, #0
	ldr	ip, .L150+48
	ldr	r1, .L150+40
	str	r3, [r5, #16]
	str	r3, [ip]
	ldr	r1, [r1]
	ldr	r3, .L150+44
	ldr	r0, .L150+16
	str	r2, [r5, #20]
	mov	lr, pc
	bx	r3
	b	.L129
.L148:
	ldr	r5, .L150+4
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r8, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	r9, .L150+8
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L126
	mov	ip, #1
	mov	r2, #0
	ldr	r0, [r5, #12]
	ldr	r3, [r5, #8]
	ldr	r1, .L150+40
	add	r0, r0, ip
	add	r3, r3, ip
	str	r0, [r5, #12]
	str	r3, [r5, #8]
	ldr	r1, [r1]
	ldr	r3, .L150+44
	ldr	r0, .L150+16
	str	r2, [r8, #20]
	str	ip, [r8, #16]
	mov	lr, pc
	bx	r3
	b	.L126
.L151:
	.align	2
.L150:
	.word	invisble
	.word	sandwich
	.word	collision
	.word	active_invisible
	.word	collectSong_data
	.word	speed
	.word	portal
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	collectSong_length
	.word	playSoundB
	.word	num_portal
	.size	updateCollectibles, .-updateCollectibles
	.align	2
	.global	drawCollectibles
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCollectibles, %function
drawCollectibles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L162
	mov	r2, ip
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L162+4
	ldr	r5, .L162+8
	ldr	r3, .L162+12
	ldrh	r8, [r4]
	ldrh	r7, [r5]
	ldr	r6, .L162+16
	add	lr, r3, #132
.L155:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L153
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L154:
	add	r3, r3, #44
	cmp	r3, lr
	add	r2, r2, #8
	bne	.L155
	ldr	r2, .L162+20
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L156
	ldrh	r3, [ip, #40]
	orr	r3, r3, #512
	strh	r3, [ip, #40]	@ movhi
.L157:
	ldr	r2, .L162+24
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L158
	ldrh	r3, [ip, #120]
	orr	r3, r3, #512
	strh	r3, [ip, #120]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L153:
	ldr	r9, [r3]
	ldr	r0, [r3, #4]
	ldr	r10, [r3, #36]
	ldr	r1, [r3, #28]
	sub	r9, r9, r8
	sub	r0, r0, r7
	add	r1, r1, r10, lsl #5
	and	r9, r9, #255
	and	r0, r0, r6
	add	r1, r1, #98
	strh	r9, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	b	.L154
.L158:
	ldr	r0, [r5]
	ldr	r3, [r2, #4]
	ldr	lr, [r2, #36]
	ldr	r4, [r4]
	ldr	r1, [r2]
	sub	r3, r3, r0
	ldr	r0, [r2, #28]
	lsl	r3, r3, #23
	sub	r2, r1, r4
	add	r1, lr, #3
	lsr	r3, r3, #23
	and	r2, r2, #255
	add	r1, r0, r1, lsl #5
	strh	r3, [ip, #122]	@ movhi
	strh	r2, [ip, #120]	@ movhi
	strh	r1, [ip, #124]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L156:
	ldr	r3, [r2, #4]
	ldr	r0, [r5]
	ldr	r1, [r2]
	sub	r3, r3, r0
	ldr	r0, [r4]
	sub	r1, r1, r0
	ldr	r0, [r2, #36]
	ldr	r2, [r2, #28]
	lsl	r3, r3, #23
	add	r2, r2, r0, lsl #5
	lsr	r3, r3, #23
	and	r1, r1, #255
	add	r2, r2, #97
	strh	r3, [ip, #42]	@ movhi
	strh	r1, [ip, #40]	@ movhi
	strh	r2, [ip, #44]	@ movhi
	b	.L157
.L163:
	.align	2
.L162:
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	invisble
	.word	511
	.word	speed
	.word	portal
	.size	drawCollectibles, .-drawCollectibles
	.align	2
	.global	updateMeatballs
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMeatballs, %function
updateMeatballs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L178
	mov	r8, r4
	mov	r5, r4
	ldr	r7, .L178+4
	ldr	r9, .L178+8
	ldr	fp, .L178+12
	ldr	r10, .L178+16
	sub	sp, sp, #20
	add	r6, r4, #220
.L168:
	ldr	r3, [r5, #20]
	cmp	r3, #0
	bne	.L177
.L166:
	add	r5, r5, #44
	cmp	r5, r6
	bne	.L168
	ldr	r9, .L178+20
	ldr	r7, .L178+24
	ldr	r5, .L178+28
.L170:
	ldr	r3, [r4, #24]
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r9, r3
	cmp	r3, r7
	bcs	.L169
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r5
	str	r1, [r4, #36]
.L169:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L170
	ldr	r1, [r8, #24]
	ldr	r2, [r8, #68]
	ldr	r3, [r8, #112]
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r1, [r8, #24]
	str	r2, [r8, #68]
	str	r3, [r8, #112]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L177:
	ldm	r7, {r2, r3}
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L166
	mov	ip, #1
	mov	r2, #0
	ldr	r1, [fp]
	ldr	r3, [r10]
	add	r1, r1, ip
	str	r1, [fp]
	ldr	r1, .L178+32
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r1, [r1]
	str	r2, [r5, #20]
	ldr	r3, .L178+36
	str	ip, [r5, #16]
	ldr	r0, .L178+40
	mov	lr, pc
	bx	r3
	b	.L166
.L179:
	.align	2
.L178:
	.word	meatBalls
	.word	sandwich
	.word	collision
	.word	meatballs
	.word	remaining_meatballs
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	eatSong_length
	.word	playSoundB
	.word	eatSong_data
	.size	updateMeatballs, .-updateMeatballs
	.align	2
	.global	drawMeatballs
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMeatballs, %function
drawMeatballs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L186
	ldr	r1, .L186+4
	ldr	r3, .L186+8
	push	{r4, r5, r6, r7, lr}
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L186+12
	ldr	r4, .L186+16
	add	lr, r3, #220
.L183:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L181
	ldrh	r1, [r2, #48]
	orr	r1, r1, #512
	strh	r1, [r2, #48]	@ movhi
.L182:
	add	r3, r3, #44
	cmp	r3, lr
	add	r2, r2, #8
	bne	.L183
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L181:
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r7, [r3, #36]
	ldr	r1, [r3, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r7, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #99
	strh	ip, [r2, #48]	@ movhi
	strh	r0, [r2, #50]	@ movhi
	strh	r1, [r2, #52]	@ movhi
	b	.L182
.L187:
	.align	2
.L186:
	.word	hOff
	.word	vOff
	.word	meatBalls
	.word	shadowOAM
	.word	511
	.size	drawMeatballs, .-drawMeatballs
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L194
	ldr	r3, [r3, #44]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L189
	ldr	r2, .L194+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L190:
	bl	drawCollectibles
	ldr	r3, .L194+8
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L191
	ldr	r2, .L194+4
	ldrh	r3, [r2, #96]
	orr	r3, r3, #512
	strh	r3, [r2, #96]	@ movhi
.L192:
	bl	drawMeatballs
	ldr	r3, .L194+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L194+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L194+20
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L194+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L194+24
	strh	r2, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	ldr	r2, .L194+28
	ldrh	r1, [r1]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L189:
	bl	drawPlayer.part.0
	b	.L190
.L191:
	bl	drawFrog.part.0
	b	.L192
.L195:
	.align	2
.L194:
	.word	sandwich
	.word	shadowOAM
	.word	frog
	.word	drawScore
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	initFrog
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFrog, %function
initFrog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #1
	mov	r0, #8
	mov	lr, #248
	mov	ip, #3
	ldr	r3, .L198
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
.L199:
	.align	2
.L198:
	.word	frog
	.size	initFrog, .-initFrog
	.align	2
	.global	animateFrog
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateFrog, %function
animateFrog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L214
	ldr	r3, .L214+4
	ldr	r5, [r4, #24]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #28]
	cmp	r5, r3, lsl #1
	str	r2, [r4, #32]
	bne	.L201
	ldr	r0, [r4, #36]
	ldr	r3, .L214+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L201:
	ldr	r3, .L214+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L209
	cmp	r3, #3
	bne	.L213
.L209:
	add	r5, r5, #1
	str	r3, [r4, #28]
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L213:
	cmp	r3, #2
	beq	.L209
	cmp	r3, #1
	beq	.L209
	mov	r3, #0
	ldr	r2, .L214+16
	ldr	r2, [r2, #32]
	str	r3, [r4, #36]
	str	r2, [r4, #28]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L215:
	.align	2
.L214:
	.word	frog
	.word	1717986919
	.word	__aeabi_idivmod
	.word	frog_dir
	.word	sandwich
	.size	animateFrog, .-animateFrog
	.align	2
	.global	updateFrog
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFrog, %function
updateFrog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L270
	ldr	r3, [r4, #48]
	ldr	r5, .L270+4
	cmp	r3, #0
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldm	r5, {ip, lr}
	sub	sp, sp, #20
	beq	.L217
	ldr	r3, .L270+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L268
.L217:
	ldr	r6, .L270+12
	ldr	r3, [r6]
	add	r2, r4, #16
	cmp	r3, #0
	add	r8, r5, #16
	ldm	r2, {r2, r3}
	ldm	r8, {r8, r9}
	ble	.L265
	ldr	r7, .L270+16
	ldr	r7, [r7]
	cmp	r7, #0
	beq	.L262
.L265:
	ldr	r7, .L270+20
.L237:
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	str	ip, [sp, #4]
	str	lr, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L239
	mov	r2, #0
	ldr	r3, .L270+24
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L239:
	ldr	r3, .L270+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L269
.L241:
	mov	r2, #1
	ldr	r3, .L270+24
	str	r2, [r3]
.L243:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	animateFrog
.L268:
	sub	r3, ip, r1
	ldr	r7, .L270+28
	sub	r2, lr, r0
	cmp	r3, #0
	ldr	r6, [r7]
	rsblt	r3, r3, #0
	cmp	r2, #0
	rsblt	r2, r2, #0
	cmp	ip, r1
	and	r6, r6, #1
	ble	.L260
	ldr	r8, .L270+32
.L218:
	cmp	r6, #0
	ldreq	r9, [r4, #8]
	addeq	r1, r9, r1
	streq	r1, [r4]
	cmp	r3, r2
	bgt	.L226
	cmp	lr, r0
	bgt	.L227
	mov	r1, #1
	cmp	r6, #0
	str	r1, [r8]
	ldr	r1, [r4]
	bne	.L229
.L228:
	ldr	r6, [r4, #12]
	sub	r0, r0, r6
	str	r0, [r4, #4]
.L230:
	cmp	r3, r2
	ble	.L229
	cmp	ip, r1
	movle	r0, #0
	movgt	r0, #3
	str	r0, [r8]
.L232:
	ldr	r0, [r4, #4]
	cmp	r0, lr
	blt	.L233
.L264:
	ldm	r5, {ip, lr}
	b	.L217
.L269:
	ldr	r3, .L270+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L241
	ldr	r3, .L270+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L243
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L262:
	str	ip, [sp, #4]
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	str	lr, [sp]
	ldr	r7, .L270+20
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	ip, #1
	ldrne	r1, .L270+36
	ldrne	r2, [r1]
	ldrne	r3, [r6]
	addne	r2, r2, ip
	ldrne	r0, .L270+8
	strne	r2, [r1]
	subne	r3, r3, #1
	add	r2, r4, #16
	add	r8, r5, #16
	strne	ip, [r0]
	strne	r3, [r6]
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldm	r5, {ip, lr}
	ldm	r8, {r8, r9}
	b	.L237
.L260:
	cmp	r6, #0
	ldreq	r8, [r4, #8]
	subeq	r1, r1, r8
	streq	r1, [r4]
	cmp	r3, r2
	bgt	.L220
	cmp	lr, r0
	bgt	.L221
	mov	r9, #1
	ldr	r1, [r4]
	ldr	r8, .L270+32
	cmp	r1, ip
	str	r9, [r8]
	blt	.L218
.L222:
	cmp	r6, #0
	bne	.L230
	b	.L228
.L226:
	mov	r1, #3
	str	r1, [r8]
	ldr	r1, [r4]
.L224:
	cmp	lr, r0
	ble	.L222
.L223:
	ldr	r0, [r4, #4]
.L244:
	cmp	r6, #0
	ldreq	lr, [r4, #12]
	addeq	r0, lr, r0
	streq	r0, [r4, #4]
	cmp	r3, r2
	ble	.L235
	cmp	ip, r1
	movle	r3, #0
	movgt	r3, #3
	ldr	r0, [r4, #4]
	str	r3, [r8]
	ldm	r5, {ip, lr}
	b	.L217
.L229:
	mov	r0, #1
	str	r0, [r8]
	b	.L232
.L220:
	mov	r9, #0
	ldr	r1, [r4]
	ldr	r8, .L270+32
	cmp	r1, ip
	str	r9, [r8]
	bge	.L224
	b	.L218
.L235:
	mov	r3, #2
	ldr	r0, [r4, #4]
	str	r3, [r8]
	b	.L264
.L227:
	ldr	r1, [r4]
	b	.L223
.L221:
	mov	r9, #2
	ldr	r1, [r4]
	ldr	r8, .L270+32
	cmp	r1, ip
	str	r9, [r8]
	bge	.L223
	b	.L218
.L233:
	ldr	r6, [r7]
	and	r6, r6, #1
	b	.L244
.L271:
	.align	2
.L270:
	.word	frog
	.word	sandwich
	.word	active_invisible
	.word	meatballs
	.word	eating
	.word	collision
	.word	animate
	.word	frame_count
	.word	frog_dir
	.word	stolen_meatballs
	.size	updateFrog, .-updateFrog
	.align	2
	.global	drawFrog
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrog, %function
drawFrog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L276
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L273
	ldr	r2, .L276+4
	ldrh	r3, [r2, #96]
	orr	r3, r3, #512
	strh	r3, [r2, #96]	@ movhi
	bx	lr
.L273:
	b	drawFrog.part.0
.L277:
	.align	2
.L276:
	.word	frog
	.word	shadowOAM
	.size	drawFrog, .-drawFrog
	.align	2
	.global	updateObstacles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObstacles, %function
updateObstacles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L298
	ldr	r5, .L298+4
	ldr	r7, .L298+8
	ldr	r8, .L298+12
	ldr	r9, .L298+16
	sub	sp, sp, #20
	add	r6, r4, #260
	b	.L283
.L280:
	add	r4, r4, #20
	cmp	r4, r6
	beq	.L296
.L283:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L280
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L280
	ldr	r3, [r5]
	ldr	r1, [r4]
	ldrh	r2, [r8]
	cmp	r1, r3
	add	r0, r3, #1
	sub	r1, r3, #1
	and	r2, r2, #1
	bgt	.L282
	cmp	r2, #0
	str	r0, [r5]
	beq	.L280
	ldrh	r2, [r9]
	tst	r2, #1
	sub	r3, r3, #9
	bne	.L280
	str	r3, [r5]
.L297:
	add	r4, r4, #20
	cmp	r4, r6
	bne	.L283
.L296:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L282:
	cmp	r2, #0
	str	r1, [r5]
	beq	.L280
	ldrh	r2, [r9]
	tst	r2, #1
	bne	.L280
	add	r3, r3, #9
	str	r3, [r5]
	b	.L297
.L299:
	.align	2
.L298:
	.word	obstacles
	.word	sandwich
	.word	collision
	.word	oldButtons
	.word	buttons
	.size	updateObstacles, .-updateObstacles
	.align	2
	.global	updatePower
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePower, %function
updatePower:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L307
	ldr	r3, [r1]
	ldr	r2, .L307+4
	cmp	r3, #0
	str	lr, [sp, #-4]!
	ldr	r3, [r2]
	beq	.L301
	mov	lr, #1
	mov	ip, #0
	ldr	r0, .L307+8
	str	lr, [r0]
	ldr	r0, .L307+12
	add	r3, r3, lr
	str	r3, [r2]
	str	ip, [r0]
.L301:
	cmp	r3, #500
	ble	.L300
	mov	r3, #0
	mov	ip, #1
	ldr	lr, .L307+8
	ldr	r0, .L307+12
	str	r3, [r1]
	str	r3, [r2]
	str	r3, [lr]
	str	ip, [r0]
.L300:
	ldr	lr, [sp], #4
	bx	lr
.L308:
	.align	2
.L307:
	.word	active_invisible
	.word	invisible_time
	.word	eating
	.word	animate
	.size	updatePower, .-updatePower
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L312
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	bne	.L310
	ldr	r2, .L312+4
	ldr	r3, .L312+8
	ldr	r0, [r2]
	ldr	r1, .L312+12
	ldr	r2, [r3]
	ldr	r3, .L312+16
	str	r0, [r1]
	str	r2, [r3]
.L310:
	ldr	r2, .L312+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bl	updatePlayer
	bl	updateFrog
	bl	updateMeatballs
	bl	updateCollectibles
	bl	updatePower
	pop	{r4, lr}
	b	updateObstacles
.L313:
	.align	2
.L312:
	.word	game_paused
	.word	hOff
	.word	vOff
	.word	thOff
	.word	tvOff
	.word	frame_count
	.size	updateGame, .-updateGame
	.comm	eating,4,4
	.comm	stolen_meatballs,4,4
	.comm	remaining_meatballs,4,4
	.comm	invisible_time,4,4
	.comm	active_invisible,4,4
	.comm	meatballs,4,4
	.global	aux_level
	.comm	animate,4,4
	.global	level
	.comm	frame_count,4,4
	.comm	collisionMap,4,4
	.comm	obstacles,260,4
	.comm	portal,44,4
	.comm	speed,44,4
	.comm	invisble,132,4
	.comm	meatBalls,220,4
	.comm	frog,56,4
	.comm	sandwich,56,4
	.comm	shadowOAM,1024,4
	.comm	frog_dir,4,4
	.comm	num_portal,4,4
	.comm	game_paused,4,4
	.comm	tvOff,4,4
	.comm	vOff,4,4
	.comm	thOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	level, %object
	.size	level, 4
level:
	.word	1
	.type	aux_level, %object
	.size	aux_level, 4
aux_level:
	.word	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
