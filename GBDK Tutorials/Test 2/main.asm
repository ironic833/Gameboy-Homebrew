;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _set_sprite_data
	.globl _waterTile
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
_waterTile::
	.ds 16
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
;main.c:5: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:8: set_sprite_data(0, 1, waterTile);
	ld	de, #_waterTile
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_data
	add	sp, #4
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x38
	ld	(hl+), a
	ld	(hl), #0x58
;main.c:17: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:18: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__waterTile:
	.db #0x00	; 0
	.db #0xb1	; 177
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0xcd	; 205
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0x00	; 0
	.db #0x9a	; 154
	.db #0x00	; 0
	.db #0xc1	; 193
	.area _CABS (ABS)
