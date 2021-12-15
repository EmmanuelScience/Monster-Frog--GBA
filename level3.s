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
	.file	"level3.c"
	.text
	.align	2
	.global	initPlayer3
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer3, %function
initPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #120
	mov	lr, #2
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
	.size	initPlayer3, .-initPlayer3
	.align	2
	.global	initCollectibles3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCollectibles3, %function
initCollectibles3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #8
	mov	r0, #1
	mov	r1, #0
	mov	fp, #196
	mov	r10, #227
	mov	r9, #59
	mov	r8, #128
	mov	r7, #139
	mov	r6, #76
	mov	r5, #102
	mov	r4, #175
	mov	lr, #125
	mov	ip, #71
	ldr	r3, .L8
	stm	r3, {r10, fp}
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #16]
	str	r0, [r3, #64]
	str	r0, [r3, #108]
	str	r9, [r3, #48]
	str	r8, [r3, #44]
	str	r7, [r3, #92]
	str	r6, [r3, #88]
	str	r2, [r3, #56]
	str	r2, [r3, #52]
	str	r2, [r3, #100]
	str	r2, [r3, #96]
	str	r1, [r3, #60]
	str	r1, [r3, #104]
	ldr	r3, .L8+4
	stm	r3, {r4, r5}
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #16]
	ldr	r3, .L8+8
	stm	r3, {ip, lr}
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #16]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	invisble
	.word	speed
	.word	portal
	.size	initCollectibles3, .-initCollectibles3
	.align	2
	.global	initMeatballs3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMeatballs3, %function
initMeatballs3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #8
	mov	ip, #1
	mov	r0, #0
	mov	r1, #100
	mov	r7, #230
	mov	r6, #194
	mov	r5, #164
	mov	r4, #88
	mov	lr, #15
	ldr	r3, .L12
	str	ip, [r3, #20]
	str	ip, [r3, #64]
	str	ip, [r3, #108]
	str	ip, [r3, #152]
	str	ip, [r3, #196]
	str	r7, [r3]
	str	r6, [r3, #44]
	str	r5, [r3, #88]
	str	r4, [r3, #132]
	str	lr, [r3, #176]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #56]
	str	r2, [r3, #52]
	str	r2, [r3, #100]
	str	r2, [r3, #96]
	str	r2, [r3, #144]
	str	r2, [r3, #140]
	str	r2, [r3, #188]
	str	r2, [r3, #184]
	str	r0, [r3, #16]
	str	r0, [r3, #60]
	str	r0, [r3, #104]
	str	r0, [r3, #148]
	str	r0, [r3, #192]
	str	r1, [r3, #4]
	str	r1, [r3, #48]
	str	r1, [r3, #92]
	str	r1, [r3, #136]
	str	r1, [r3, #180]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	meatBalls
	.size	initMeatballs3, .-initMeatballs3
	.align	2
	.global	initFrog3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFrog3, %function
initFrog3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #1
	mov	r0, #8
	mov	lr, #248
	mov	ip, #3
	ldr	r3, .L16
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
.L17:
	.align	2
.L16:
	.word	frog
	.size	initFrog3, .-initFrog3
	.align	2
	.global	initObstacles3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObstacles3, %function
initObstacles3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #70
	ldr	r3, .L20
	str	r5, [r3, #80]
	mov	r5, #36
	mov	r2, #1
	mov	r0, #7
	mov	r1, #43
	mov	ip, #31
	mov	fp, #21
	mov	r10, #61
	mov	r9, #22
	mov	r8, #193
	mov	r7, #62
	mov	r6, #211
	str	r5, [r3, #104]
	mov	r5, #107
	str	fp, [r3]
	str	r10, [r3, #24]
	str	r9, [r3, #20]
	str	r8, [r3, #64]
	str	r7, [r3, #60]
	str	r6, [r3, #84]
	str	r5, [r3, #100]
	str	r2, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #76]
	str	r2, [r3, #96]
	str	r2, [r3, #116]
	str	ip, [r3, #44]
	str	r0, [r3, #12]
	str	r0, [r3, #32]
	str	r0, [r3, #52]
	str	r0, [r3, #72]
	str	r0, [r3, #92]
	str	r0, [r3, #112]
	str	r0, [r3, #132]
	str	r1, [r3, #8]
	str	r1, [r3, #28]
	str	r1, [r3, #48]
	str	r1, [r3, #68]
	str	r1, [r3, #88]
	str	r1, [r3, #108]
	str	r1, [r3, #128]
	str	ip, [r3, #40]
	str	r2, [r3, #136]
	str	r2, [r3, #156]
	str	r2, [r3, #176]
	str	r2, [r3, #196]
	str	r2, [r3, #216]
	str	r2, [r3, #236]
	str	r2, [r3, #256]
	mov	r2, #116
	str	r2, [r3, #120]
	mov	r2, #152
	str	r2, [r3, #144]
	mov	r2, #204
	str	r2, [r3, #164]
	mov	r2, #0
	str	r2, [r3, #184]
	mov	r2, #46
	str	r2, [r3, #204]
	mov	r2, #168
	str	r2, [r3, #224]
	mov	r2, #210
	str	r2, [r3, #220]
	mov	r2, #212
	mov	r4, #145
	mov	lr, #182
	str	r2, [r3, #244]
	mov	ip, #2
	mov	r2, #209
	str	r4, [r3, #140]
	str	r4, [r3, #160]
	str	lr, [r3, #180]
	str	ip, [r3, #124]
	str	r0, [r3, #152]
	str	r1, [r3, #148]
	str	r0, [r3, #172]
	str	r1, [r3, #168]
	str	r0, [r3, #192]
	str	r1, [r3, #188]
	str	r0, [r3, #212]
	str	r1, [r3, #208]
	str	r0, [r3, #232]
	str	r1, [r3, #228]
	str	r0, [r3, #252]
	str	r1, [r3, #248]
	str	r2, [r3, #240]
	str	lr, [r3, #200]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	obstacles
	.size	initObstacles3, .-initObstacles3
	.ident	"GCC: (devkitARM release 53) 9.1.0"
