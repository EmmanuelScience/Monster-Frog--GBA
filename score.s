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
	.file	"score.c"
	.text
	.align	2
	.global	initScore
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScore, %function
initScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	r0, #10
	mov	r1, #0
	ldr	r3, .L3
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r0, [r3, #4]
	str	r1, [r3]
	bx	lr
.L4:
	.align	2
.L3:
	.word	scoreSprite
	.size	initScore, .-initScore
	.align	2
	.global	drawScore1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore1, %function
drawScore1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #36
	ldr	r3, .L7
	ldrh	r2, [r3, #4]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	lr, .L7+4
	ldr	r3, .L7+8
	ldr	r0, .L7+12
	add	ip, r2, #12
	and	ip, ip, lr
	and	r2, r2, lr
	ldr	r0, [r0]
	add	lr, r3, #720
	strh	ip, [lr, #2]	@ movhi
	strh	r1, [lr]	@ movhi
	add	ip, r3, #640
	orr	r1, r1, #16384
	strh	r1, [ip]	@ movhi
	add	r0, r0, #4
	add	r1, r3, #724
	add	r3, r3, #644
	strh	r4, [r3]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	pop	{r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	scoreSprite
	.word	511
	.word	shadowOAM
	.word	remaining_meatballs
	.size	drawScore1, .-drawScore1
	.align	2
	.global	drawScore2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore2, %function
drawScore2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #40
	ldr	r3, .L11
	ldrh	r2, [r3, #4]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	lr, .L11+4
	ldr	r3, .L11+8
	ldr	r0, .L11+12
	add	ip, r2, #50
	add	r2, r2, #62
	and	ip, ip, lr
	and	r2, r2, lr
	ldr	r0, [r0]
	add	lr, r3, #656
	strh	ip, [lr, #2]	@ movhi
	add	ip, r3, #728
	strh	r2, [ip, #2]	@ movhi
	strh	r1, [ip]	@ movhi
	add	r2, r3, #732
	add	r0, r0, #4
	orr	r1, r1, #16384
	add	r3, r3, #660
	strh	r1, [lr]	@ movhi
	strh	r4, [r3]	@ movhi
	strh	r0, [r2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	scoreSprite
	.word	511
	.word	shadowOAM
	.word	meatballs
	.size	drawScore2, .-drawScore2
	.align	2
	.global	drawScore3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore3, %function
drawScore3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #38
	ldr	r3, .L15
	ldrh	r2, [r3, #4]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	lr, .L15+4
	ldr	r3, .L15+8
	ldr	r0, .L15+12
	add	ip, r2, #100
	add	r2, r2, #122
	and	ip, ip, lr
	and	r2, r2, lr
	ldr	r0, [r0]
	add	lr, r3, #672
	strh	ip, [lr, #2]	@ movhi
	add	ip, r3, #736
	strh	r2, [ip, #2]	@ movhi
	strh	r1, [ip]	@ movhi
	add	r2, r3, #740
	add	r0, r0, #4
	orr	r1, r1, #16384
	add	r3, r3, #676
	strh	r1, [lr]	@ movhi
	strh	r4, [r3]	@ movhi
	strh	r0, [r2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	scoreSprite
	.word	511
	.word	shadowOAM
	.word	stolen_meatballs
	.size	drawScore3, .-drawScore3
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawScore1
	bl	drawScore2
	pop	{r4, lr}
	b	drawScore3
	.size	drawScore, .-drawScore
	.comm	scoreSprite,56,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
