;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module util
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lastValue
	.globl _RandomNumber
	.globl _getSquareDistance
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_lastValue::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:7: uint8_t RandomNumber(uint8_t min, uint8_t max){
;	---------------------------------
; Function RandomNumber
; ---------------------------------
_RandomNumber::
	dec	sp
	ldhl	sp,	#0
	ld	(hl), a
	ld	b, e
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:10: uint8_t v = (DIV_REG)+shadow_OAM[0].x+shadow_OAM[2].x+shadow_OAM[4].x+shadow_OAM[6].x+shadow_OAM[8].x+lastValue;
	ld	hl, #(_shadow_OAM + 1)
	ld	c, (hl)
	ldh	a, (_DIV_REG + 0)
	add	a, c
	ld	c, a
	ld	a, (#(_shadow_OAM + 9) + 0)
	add	a, c
	ld	c, a
	ld	a, (#(_shadow_OAM + 17) + 0)
	add	a, c
	ld	c, a
	ld	a, (#(_shadow_OAM + 25) + 0)
	add	a, c
	ld	c, a
	ld	a, (#(_shadow_OAM + 33) + 0)
	add	a, c
	ld	hl, #_lastValue
	add	a, (hl)
	ld	e, a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:14: lastValue= min+(v % (max-min)); 
	ld	a, b
	ld	d, #0x00
	ldhl	sp,	#0
	ld	c, (hl)
	ld	b, #0x00
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
	ld	b, a
	ld	d, #0x00
	call	__modsint
	ldhl	sp,	#0
	ld	a, (hl)
	add	a, c
	ld	hl, #_lastValue
	ld	(hl), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:16: return lastValue;
	ld	a, (hl)
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:17: }
	inc	sp
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:19: uint16_t getSquareDistance(uint8_t columnA, uint8_t rowA, uint8_t columnB, uint8_t rowB){
;	---------------------------------
; Function getSquareDistance
; ---------------------------------
_getSquareDistance::
	dec	sp
	dec	sp
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:21: return ((uint16_t)columnA-(uint16_t)columnB)*((uint16_t)columnA-(uint16_t)columnB)+ ((uint16_t)rowA-(uint16_t)rowB)*((uint16_t)rowA-(uint16_t)rowB);
	ld	d, #0x00
	ldhl	sp,	#4
	ld	c, (hl)
	ld	b, #0x00
	sub	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, b
	ld	d, a
	push	de
	ld	c, l
	ld	b, d
	ld	e, l
	call	__mulint
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	pop	de
	ld	a, e
	ld	c, #0x00
	ldhl	sp,	#5
	ld	e, (hl)
	ld	d, #0x00
	sub	a, e
	ld	e, a
	ld	a, c
	sbc	a, d
	ld	d, a
	ld	c, e
	ld	b, d
	call	__mulint
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\util.c:22: }
	inc	sp
	inc	sp
	pop	hl
	pop	af
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
__xinit__lastValue:
	.db #0x00	; 0
	.area _CABS (ABS)
