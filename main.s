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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	ldr	r6, .L4+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r0, .L4+12
	ldr	r3, .L4+16
	ldr	r4, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L4+24
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #5056
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+32
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #5056
	mov	r0, #3
	ldr	r2, .L4+36
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r0, #3
	ldr	r2, .L4+40
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+52
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	stopSound
	.word	startSong_length
	.word	start_screenTiles
	.word	startSong_data
	.word	playSoundA
	.word	DMANow
	.word	start_screenMap
	.word	start_screenPal
	.word	100726784
	.word	100696064
	.word	100720640
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #7936
	mov	r2, #4864
	push	{r4, lr}
	ldr	r1, .L8
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	ldr	r2, .L8+4
	strh	r1, [r3, #8]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	7176
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bxne	lr
	ldr	r2, .L12+4
	str	r3, [r2]
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.word	state
	.size	win.part.0, .-win.part.0
	.set	pause.part.0,win.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldrh	r3, [r3]
	ands	r3, r3, #4
	bxne	lr
	ldr	r2, .L16+4
	str	r3, [r2]
	b	goToStart
.L17:
	.align	2
.L16:
	.word	buttons
	.word	state
	.size	lose.part.0, .-lose.part.0
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	ldr	r3, .L28+4
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L28+8
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L28+16
	ldr	r3, [r3]
	cmp	r3, #3
	ldrgt	r3, .L28+20
	ldrle	r3, .L28+24
	ldrgt	r1, [r3]
	ldrle	r1, [r3]
	movgt	r2, #1
	movle	r2, #1
	ldrgt	r0, .L28+28
	ldrle	r0, .L28+32
	ldr	r3, .L28+36
	mov	lr, pc
	bx	r3
	mov	ip, #0
	mov	r3, #67108864
	ldr	r1, .L28+40
	ldr	r2, .L28+44
	ldr	r1, [r1]
	ldr	lr, .L28+48
	ldr	r0, [r2]
	str	r1, [lr]
	ldr	lr, .L28+52
	lsl	r2, r1, #16
	str	r0, [lr]
	lsl	r1, r0, #16
	ldr	r0, .L28+56
	str	ip, [r0]
	ldr	r0, .L28+60
	ldr	r4, [r0]
	lsr	r2, r2, #16
	lsr	r1, r1, #16
	cmp	r4, #1
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	beq	.L25
	cmp	r4, #2
	beq	.L26
	cmp	r4, #3
	beq	.L27
.L22:
	mov	r2, #1
	ldr	r3, .L28+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L25:
	ldr	r4, .L28+68
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+72
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L28+76
	ldr	r1, .L28+80
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L28+84
	ldr	r1, .L28+88
	mov	lr, pc
	bx	r4
	mov	r3, #1952
	mov	r0, #3
	ldr	r2, .L28+92
	ldr	r1, .L28+96
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L28+100
	ldr	r1, .L28+104
	mov	lr, pc
	bx	r4
	b	.L22
.L26:
	ldr	r4, .L28+68
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+108
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L28+76
	ldr	r1, .L28+112
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L28+84
	ldr	r1, .L28+116
	mov	lr, pc
	bx	r4
	mov	r3, #2400
	mov	r0, #3
	ldr	r2, .L28+92
	ldr	r1, .L28+120
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L28+100
	ldr	r1, .L28+124
	mov	lr, pc
	bx	r4
	b	.L22
.L27:
	ldr	r5, .L28+68
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L28+128
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r2, #100663296
	ldr	r3, .L28+132
	ldr	r1, .L28+136
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L28+84
	ldr	r1, .L28+140
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1696
	ldr	r2, .L28+92
	ldr	r1, .L28+144
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L28+100
	ldr	r1, .L28+148
	mov	lr, pc
	bx	r5
	b	.L22
.L29:
	.align	2
.L28:
	.word	stopSound
	.word	gameStartSong_length
	.word	gameStartSong_data
	.word	playSoundB
	.word	aux_level
	.word	fastFrogSong_length
	.word	gameSong_length
	.word	fastFrogSong_data
	.word	gameSong_data
	.word	playSoundA
	.word	thOff
	.word	tvOff
	.word	hOff
	.word	vOff
	.word	game_paused
	.word	level
	.word	state
	.word	DMANow
	.word	bg1v1Pal
	.word	7312
	.word	bg1v1Tiles
	.word	100726784
	.word	bg1v1Map
	.word	100696064
	.word	bg1pTiles
	.word	100720640
	.word	bg1pMap
	.word	bg1v2Pal
	.word	bg1v2Tiles
	.word	bg1v2Map
	.word	bg2pTiles
	.word	bg2pMap
	.word	bg1v3Pal
	.word	10544
	.word	bg1v3Tiles
	.word	bg1v3Map
	.word	bg3pTiles
	.word	bg3pMap
	.size	goToGame, .-goToGame
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L39
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L31
	ldr	r2, .L39+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L38
.L31:
	tst	r3, #8
	popne	{r4, lr}
	bne	win.part.0
.L30:
	pop	{r4, lr}
	bx	lr
.L38:
	ldr	r3, .L39+8
	ldr	r2, [r3]
	cmp	r2, #4
	moveq	r2, #1
	ldreq	r1, .L39+12
	streq	r2, [r3]
	streq	r2, [r1]
	mov	r2, #0
	ldr	r3, .L39+16
	str	r2, [r3]
	bl	goToStart
	ldrh	r3, [r4]
	b	.L31
.L40:
	.align	2
.L39:
	.word	oldButtons
	.word	buttons
	.word	aux_level
	.word	level
	.word	state
	.size	win, .-win
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #67108864
	mov	r4, #0
	mov	r7, #1
	ldr	r8, .L49
	ldr	r6, [r8]
	ldr	r2, .L49+4
	ldr	r0, .L49+8
	ldr	r1, .L49+12
	cmp	r6, #3
	str	r4, [r2]
	str	r7, [r0]
	str	r4, [r1]
	mov	r2, #83886080
	strh	r4, [r3, #20]	@ movhi
	strh	r4, [r3, #22]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	mov	r3, #256
	beq	.L47
	cmp	r6, #6
	beq	.L48
	ldr	r5, .L49+16
	mov	r0, #3
	ldr	r1, .L49+20
	mov	lr, pc
	bx	r5
	mov	r3, #6912
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L49+24
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+28
	ldr	r1, .L49+32
	mov	lr, pc
	bx	r5
	mov	r3, #6912
	mov	r0, #3
	ldr	r2, .L49+36
	ldr	r1, .L49+24
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+40
	ldr	r1, .L49+32
.L46:
	mov	lr, pc
	bx	r5
	ldr	r3, .L49+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+48
	mov	r2, r7
	ldr	r1, [r3]
	ldr	r0, .L49+52
	ldr	r3, .L49+56
	mov	lr, pc
	bx	r3
.L43:
	ldr	r3, .L49+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+64
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L49+68
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L48:
	ldr	r5, .L49+16
	mov	r0, #3
	ldr	r1, .L49+72
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L49+76
	ldr	r1, .L49+80
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+28
	ldr	r1, .L49+84
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r3, .L49+76
	ldr	r2, .L49+36
	ldr	r1, .L49+80
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L49+40
	ldr	r1, .L49+84
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	ldr	r3, .L49+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+88
	mov	r2, r7
	ldr	r1, [r3]
	ldr	r0, .L49+92
	ldr	r3, .L49+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+96
	str	r4, [r8]
	str	r4, [r3]
	b	.L43
.L47:
	ldr	r5, .L49+16
	mov	r0, r6
	ldr	r1, .L49+100
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, r6
	ldr	r3, .L49+104
	ldr	r1, .L49+108
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, r6
	ldr	r2, .L49+28
	ldr	r1, .L49+112
	mov	lr, pc
	bx	r5
	mov	r0, r6
	ldr	r3, .L49+104
	ldr	r2, .L49+36
	ldr	r1, .L49+108
	mov	lr, pc
	bx	r5
	mov	r0, r6
	mov	r3, #1024
	ldr	r2, .L49+40
	ldr	r1, .L49+112
	b	.L46
.L50:
	.align	2
.L49:
	.word	aux_level
	.word	hOff
	.word	game_paused
	.word	vOff
	.word	DMANow
	.word	win_screenPal
	.word	win_screenTiles
	.word	100726784
	.word	win_screenMap
	.word	100696064
	.word	100720640
	.word	stopSound
	.word	levelPassedSong_length
	.word	levelPassedSong_data
	.word	playSoundA
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	game_winPal
	.word	6640
	.word	game_winTiles
	.word	game_winMap
	.word	gameWinSong_length
	.word	gameWinSong_data
	.word	level
	.word	fast_frogPal
	.word	4192
	.word	fast_frogTiles
	.word	fast_frogMap
	.size	goToWin, .-goToWin
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L53
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	lose.part.0
.L54:
	.align	2
.L53:
	.word	oldButtons
	.size	lose, .-lose
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #0
	mov	r1, #67108864
	mov	r4, #1
	ldr	ip, .L57
	ldr	r0, .L57+4
	ldr	r2, .L57+8
	str	r4, [ip]
	str	r3, [r0]
	str	r3, [r2]
	strh	r3, [r1, #20]	@ movhi
	ldr	r2, .L57+12
	strh	r3, [r1, #22]	@ movhi
	strh	r3, [r1, #18]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L57+16
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r6, .L57+20
	ldr	r0, .L57+24
	ldr	r3, .L57+28
	ldr	r4, .L57+32
	mov	lr, pc
	bx	r3
	ldr	r5, .L57+36
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L57+40
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #2848
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+44
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #2848
	mov	r0, #3
	ldr	r2, .L57+48
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r0, #3
	ldr	r2, .L57+52
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L57+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+60
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L57+64
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	game_paused
	.word	vOff
	.word	hOff
	.word	stopSound
	.word	loseSong_length
	.word	lose_screenTiles
	.word	loseSong_data
	.word	playSoundA
	.word	DMANow
	.word	lose_screenMap
	.word	lose_screenPal
	.word	100726784
	.word	100696064
	.word	100720640
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	goToLose, .-goToLose
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L66
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L60
	ldr	r2, .L66+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L65
.L60:
	tst	r3, #8
	bxeq	lr
	b	pause.part.0
.L65:
	mov	r2, #1
	ldr	r3, .L66+8
	str	r2, [r3]
	b	goToGame
.L67:
	.align	2
.L66:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L70+8
	ldr	r3, .L70+12
	mov	lr, pc
	bx	r3
	mov	ip, #0
	mov	lr, #67108864
	mov	r0, #1
	ldr	r1, .L70+16
	ldr	r2, .L70+20
	ldr	r3, .L70+24
	ldr	r7, .L70+28
	ldr	r6, .L70+32
	str	ip, [r2]
	str	ip, [r3]
	str	r0, [r1]
	ldr	r4, .L70+36
	strh	ip, [lr, #20]	@ movhi
	ldr	r5, .L70+40
	strh	ip, [lr, #22]	@ movhi
	mov	r3, #256
	strh	ip, [lr, #18]	@ movhi
	mov	r2, #83886080
	strh	ip, [lr, #16]	@ movhi
	mov	r0, #3
	ldr	r1, .L70+44
	mov	lr, pc
	bx	r4
	mov	r3, r7
	mov	r1, r6
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L70+48
	mov	lr, pc
	bx	r4
	mov	r3, r7
	mov	r1, r6
	mov	r0, #3
	ldr	r2, .L70+52
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r0, #3
	ldr	r2, .L70+56
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+64
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L70+68
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	stopSound
	.word	pauseSong_length
	.word	pauseSong_data
	.word	playSoundA
	.word	game_paused
	.word	vOff
	.word	hOff
	.word	5584
	.word	pause_screenTiles
	.word	DMANow
	.word	pause_screenMap
	.word	pause_screenPal
	.word	100726784
	.word	100696064
	.word	100720640
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	goToPause, .-goToPause
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L73
	ldr	r3, .L85+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L82
.L73:
	ldr	r3, .L85+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L72
	ldr	r2, .L85+20
	ldr	r3, .L85+24
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L83
	bgt	.L84
.L72:
	pop	{r4, lr}
	bx	lr
.L82:
	mov	r2, #2
	ldr	r3, .L85+28
	pop	{r4, lr}
	str	r2, [r3]
	b	goToPause
.L84:
	mov	r2, #4
	ldr	r3, .L85+28
	pop	{r4, lr}
	str	r2, [r3]
	b	goToLose
.L83:
	bl	goToWin
	mov	lr, #3
	ldr	r1, .L85+32
	ldr	r3, [r1]
	add	r3, r3, #1
	cmp	r3, lr
	str	r3, [r1]
	movgt	r3, #1
	ldr	r0, .L85+36
	ldr	r2, [r0]
	ldr	ip, .L85+28
	add	r2, r2, #1
	str	lr, [ip]
	str	r2, [r0]
	strgt	r3, [r1]
	pop	{r4, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	remaining_meatballs
	.word	stolen_meatballs
	.word	meatballs
	.word	state
	.word	level
	.word	aux_level
	.size	game, .-game
	.align	2
	.global	goToInstr
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstr, %function
goToInstr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L89
	ldr	r6, .L89+4
	ldr	r4, .L89+8
	ldr	r5, .L89+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L89+16
	mov	lr, pc
	bx	r4
	mov	r3, r7
	mov	r1, r6
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+20
	mov	lr, pc
	bx	r4
	mov	r3, r7
	mov	r1, r6
	mov	r0, #3
	ldr	r2, .L89+24
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+28
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	11696
	.word	instrTiles
	.word	DMANow
	.word	instrMap
	.word	instrPal
	.word	100726784
	.word	100696064
	.word	100720640
	.size	goToInstr, .-goToInstr
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L103
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L103+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L92
	ldr	r2, .L103+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L101
.L92:
	tst	r3, #8
	beq	.L91
	ldr	r3, .L103+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L102
.L91:
	pop	{r4, lr}
	bx	lr
.L101:
	ldr	r3, .L103+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L103+16
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L103+20
	ldr	r1, .L103+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L103+28
	mov	r0, #3
	ldr	r1, .L103+32
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L103+36
	pop	{r4, lr}
	str	r2, [r3]
	b	goToGame
.L102:
	mov	r2, #5
	ldr	r3, .L103+36
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstr
.L104:
	.align	2
.L103:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame
	.word	DMANow
	.word	100728832
	.word	spsTiles
	.word	83886592
	.word	spsPal
	.word	state
	.size	start, .-start
	.align	2
	.global	instr
	.syntax unified
	.arm
	.fpu softvfp
	.type	instr, %function
instr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L125
	ldrh	r3, [r4]
	tst	r3, #128
	beq	.L106
	ldr	r2, .L125+4
	ldrh	r2, [r2]
	tst	r2, #128
	moveq	r3, #67108864
	moveq	r2, #95
	strheq	r2, [r3, #22]	@ movhi
	strheq	r2, [r3, #18]	@ movhi
	ldrheq	r3, [r4]
.L106:
	tst	r3, #64
	beq	.L107
	ldr	r2, .L125+4
	ldrh	r2, [r2]
	ands	r2, r2, #64
	moveq	r3, #67108864
	strheq	r2, [r3, #22]	@ movhi
	strheq	r2, [r3, #18]	@ movhi
	ldrheq	r3, [r4]
.L107:
	tst	r3, #4
	beq	.L108
	ldr	r2, .L125+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L123
.L108:
	tst	r3, #8
	beq	.L105
	ldr	r3, .L125+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L124
.L105:
	pop	{r4, r5, r6, lr}
	bx	lr
.L124:
	ldr	r2, .L125+8
	pop	{r4, r5, r6, lr}
	str	r3, [r2]
	b	goToStart
.L123:
	ldr	r3, .L125+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L125+16
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L125+20
	ldr	r1, .L125+24
	mov	lr, pc
	bx	r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L125+28
	ldr	r1, .L125+32
	mov	lr, pc
	bx	r5
	mov	r2, #1
	ldr	r3, .L125+8
	str	r2, [r3]
	bl	goToGame
	ldrh	r3, [r4]
	b	.L108
.L126:
	.align	2
.L125:
	.word	oldButtons
	.word	buttons
	.word	state
	.word	initGame
	.word	DMANow
	.word	100728832
	.word	spsTiles
	.word	83886592
	.word	spsPal
	.size	instr, .-instr
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r6, .L141
	ldr	r7, .L141+4
	ldr	r3, .L141+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L141+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L141+16
	ldr	r10, .L141+20
	ldr	r9, .L141+24
	ldr	r8, .L141+28
	ldr	r4, .L141+32
.L129:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L138
.L131:
	.word	.L136
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L132
	.word	.L130
.L130:
	ldr	r3, .L141+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L129
.L132:
	tst	r0, #4
	beq	.L138
	ldr	r3, .L141+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L129
.L133:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L129
.L134:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L129
.L135:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L129
.L136:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L129
.L138:
	mov	r0, r3
	b	.L129
.L142:
	.align	2
.L141:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	instr
	.word	lose.part.0
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
