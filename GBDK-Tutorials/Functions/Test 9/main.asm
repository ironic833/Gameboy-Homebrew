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
	.globl _setupPlayer
	.globl _moveGameCharacter
	.globl _performanceDelay
	.globl _set_sprite_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _spritesize
	.globl _TestyTesterson
	.globl _Player
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_Player::
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_TestyTesterson::
	.ds 32
_spritesize::
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
;main.c:10: void performanceDelay(UINT8 numloops){
;	---------------------------------
; Function performanceDelay
; ---------------------------------
_performanceDelay::
	ld	c, a
;main.c:12: for(i = 0; i < numloops; i++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;main.c:13: wait_vbl_done();
	call	_wait_vbl_done
;main.c:12: for(i = 0; i < numloops; i++){
	inc	b
;main.c:15: }
	jr	00103$
;main.c:17: void moveGameCharacter(struct character* characterToMove, UINT8 x, UINT8 y){
;	---------------------------------
; Function moveGameCharacter
; ---------------------------------
_moveGameCharacter::
	dec	sp
	dec	sp
	ldhl	sp,	#1
	ld	(hl), a
;main.c:19: move_sprite(characterToMove->spritids[0], x, y);
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (de)
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
;main.c:20: move_sprite(characterToMove->spritids[1], x, y + spritesize);
	ld	a, (hl-)
	ld	(bc), a
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	c, a
	inc	de
	ld	a, (de)
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	de, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
;main.c:20: move_sprite(characterToMove->spritids[1], x, y + spritesize);
;main.c:22: }
	inc	sp
	inc	sp
	pop	hl
	inc	sp
	jp	(hl)
;main.c:24: void setupPlayer() {
;	---------------------------------
; Function setupPlayer
; ---------------------------------
_setupPlayer::
;main.c:26: Player.x = 10;
	ld	hl, #(_Player + 2)
	ld	(hl), #0x0a
;main.c:27: Player.y = 100;
	ld	bc, #_Player + 3
	ld	a, #0x64
	ld	(bc), a
;main.c:28: Player.width = 8;
	ld	hl, #(_Player + 4)
	ld	(hl), #0x08
;main.c:29: Player.height = 16;
	ld	hl, #(_Player + 5)
	ld	(hl), #0x10
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;main.c:32: Player.spritids[0] = 0;
	ld	hl, #_Player
	ld	(hl), #0x00
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x01
;main.c:35: Player.spritids[1] = 1;
	ld	hl, #(_Player + 1)
	ld	(hl), #0x01
;main.c:37: moveGameCharacter(&Player, Player.x, Player.y);
	ld	a, (bc)
	ld	hl, #(_Player + 2)
	ld	c, (hl)
	push	af
	inc	sp
	ld	a, c
	ld	de, #_Player
	call	_moveGameCharacter
;main.c:38: }
	ret
;main.c:40: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:42: set_sprite_data(0, 2, TestyTesterson);
	ld	de, #_TestyTesterson
	push	de
	ld	hl, #0x200
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:44: setupPlayer();
	call	_setupPlayer
;main.c:46: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:49: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:51: while(1){
00106$:
;main.c:52: if(joypad() & J_LEFT){
	call	_joypad
	bit	1, a
	jr	Z, 00102$
;main.c:53: Player.x -= 2;
	ld	hl, #_Player + 2
	ld	a, (hl)
	dec	a
	dec	a
	ld	(hl), a
;main.c:54: moveGameCharacter(&Player, Player.x, Player.y);
	ld	bc, #_Player + 3
	ld	a, (bc)
	ld	c, (hl)
	push	af
	inc	sp
	ld	a, c
	ld	de, #_Player
	call	_moveGameCharacter
00102$:
;main.c:57: if(joypad() & J_RIGHT){
	call	_joypad
	rrca
	jr	NC, 00104$
;main.c:58: Player.x += 2;
	ld	hl, #_Player + 2
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
;main.c:59: moveGameCharacter(&Player, Player.x, Player.y);
	ld	bc, #_Player + 3
	ld	a, (bc)
	ld	c, (hl)
	push	af
	inc	sp
	ld	a, c
	ld	de, #_Player
	call	_moveGameCharacter
00104$:
;main.c:62: performanceDelay(5);
	ld	a, #0x05
	call	_performanceDelay
;main.c:66: }
	jr	00106$
	.area _CODE
	.area _INITIALIZER
__xinit__TestyTesterson:
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xa5	; 165
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xab	; 171
	.db #0xd5	; 213
	.db #0xab	; 171
	.db #0xd5	; 213
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
__xinit__spritesize:
	.db #0x08	; 8
	.area _CABS (ABS)
