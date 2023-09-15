;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13511 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _printf
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
;main.c:8: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:9: ENABLE_RAM;
	ld	hl, #0x0000
	ld	(hl), #0x0a
;main.c:11: if (save_blob.magic != SAVE_MAGIC_VALUE) {
	ld	hl, #_save_blob
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	inc	hl
	ld	b, a
	ld	a, (hl-)
	ld	l, (hl)
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, #0x53
	jr	NZ, 00110$
	ld	a, b
	sub	a, #0x41
	jr	NZ, 00110$
	ld	a, l
	sub	a, #0x56
	jr	NZ, 00110$
	ld	a, h
	sub	a, #0x45
	jr	Z, 00102$
00110$:
;main.c:12: save_blob.magic = SAVE_MAGIC_VALUE;
	ld	hl, #_save_blob
	ld	a, #0x53
	ld	(hl+), a
	ld	a, #0x41
	ld	(hl+), a
	ld	a, #0x56
	ld	(hl+), a
	ld	(hl), #0x45
;main.c:13: save_blob.value = 0;
	ld	hl, #(_save_blob + 4)
	ld	(hl), #0x00
00102$:
;main.c:16: save_blob.value++;
	ld	bc, #_save_blob+4
	ld	a, (bc)
	inc	a
	ld	(bc), a
;main.c:18: printf("each reboot will\nincrement value\nby 1\n\nsaved value %hu", save_blob.value);
	ld	c, a
	ld	b, #0x00
	push	bc
	ld	de, #___str_0
	push	de
	call	_printf
	add	sp, #4
;main.c:19: }
	ret
___str_0:
	.ascii "each reboot will"
	.db 0x0a
	.ascii "increment value"
	.db 0x0a
	.ascii "by 1"
	.db 0x0a
	.db 0x0a
	.ascii "saved value %hu"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
