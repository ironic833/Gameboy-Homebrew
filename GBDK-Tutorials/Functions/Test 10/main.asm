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
	.globl _setupBaddie
	.globl _setupPlayer
	.globl _moveBaddieCharacter
	.globl _moveGameCharacter
	.globl _checkCollisions
	.globl _performanceDelay
	.globl _printf
	.globl _set_sprite_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _spritesize
	.globl _TestyTesterson
	.globl _JYSprite
	.globl _Baddie
	.globl _Player
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_Player::
	.ds 8
_Baddie::
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_JYSprite::
	.ds 448
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
;main.c:13: void performanceDelay(UINT8 numloops){
;	---------------------------------
; Function performanceDelay
; ---------------------------------
_performanceDelay::
	ld	c, a
;main.c:15: for(i = 0; i < numloops; i++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;main.c:16: wait_vbl_done();
	call	_wait_vbl_done
;main.c:15: for(i = 0; i < numloops; i++){
	inc	b
;main.c:18: }
	jr	00103$
;main.c:20: UBYTE checkCollisions(struct PlayerCharacter* Player, struct BaddieCharacter* Baddie){
;	---------------------------------
; Function checkCollisions
; ---------------------------------
_checkCollisions::
	add	sp, #-16
	ldhl	sp,	#14
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#12
	ld	a, c
	ld	(hl+), a
;main.c:21: return (Player->x >= Baddie->x && Player->x <= Baddie->x + Baddie->width) && (Player->y >= Baddie->y && Player->y <= Baddie->y + Baddie->height) || (Baddie->x >= Player->x && Baddie->x <= Player->x + Player->width) && (Baddie->y >= Player->y && Baddie->y <= Player->y + Player->height);
	ld	a, b
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	ldhl	sp,	#1
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,#14
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0003
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
	ldhl	sp,	#0
	ld	a, (hl+)
	sub	a, (hl)
	jr	C, 00108$
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	d, #0x00
	ld	e, a
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#4
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00152$
	bit	7, d
	jr	NZ, 00153$
	cp	a, a
	jr	00153$
00152$:
	bit	7, d
	jr	Z, 00153$
	scf
00153$:
	jr	C, 00108$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	ld	a, (hl)
	sub	a, c
	jr	C, 00108$
	inc	hl
	ld	b, #0x00
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#11
	ld	a, (hl-)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00154$
	bit	7, d
	jr	NZ, 00155$
	cp	a, a
	jr	00155$
00154$:
	bit	7, d
	jr	Z, 00155$
	scf
00155$:
	jp	NC, 00104$
00108$:
	ldhl	sp,	#1
	ld	a, (hl-)
	sub	a, (hl)
	jp	C, 00103$
	ldhl	sp,#14
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	d, #0x00
	ld	e, a
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#2
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00156$
	bit	7, d
	jr	NZ, 00157$
	cp	a, a
	jr	00157$
00156$:
	bit	7, d
	jr	Z, 00157$
	scf
00157$:
	jr	C, 00103$
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ldhl	sp,	#11
	ld	a, (hl)
	sub	a, c
	jr	C, 00103$
	ldhl	sp,	#5
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,#14
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#7
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#5
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#9
	ld	e, l
	ld	d, h
	ldhl	sp,	#7
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00158$
	bit	7, d
	jr	NZ, 00159$
	cp	a, a
	jr	00159$
00158$:
	bit	7, d
	jr	Z, 00159$
	scf
00159$:
	jr	NC, 00104$
00103$:
	ldhl	sp,	#11
	ld	(hl), #0x00
	jr	00105$
00104$:
	ldhl	sp,	#11
	ld	(hl), #0x01
00105$:
	ldhl	sp,	#11
	ld	a, (hl)
;main.c:22: }
	add	sp, #16
	ret
;main.c:24: void moveGameCharacter(struct PlayerCharacter* characterToMove, UINT8 x, UINT8 y){
;	---------------------------------
; Function moveGameCharacter
; ---------------------------------
_moveGameCharacter::
	add	sp, #-3
	ldhl	sp,	#2
	ld	(hl), a
;main.c:26: move_sprite(characterToMove->spritids[0], x, y);
	ldhl	sp,	#5
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
	inc	hl
	ld	(bc), a
	inc	bc
;main.c:27: move_sprite(characterToMove->spritids[1], x, y + spritesize);
	ld	a, (hl-)
	dec	hl
	ld	(bc), a
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	c, a
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	c, l
	ld	b, h
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
;main.c:28: move_sprite(characterToMove->spritids[2], x + spritesize, y );
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, c
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
;main.c:29: move_sprite(characterToMove->spritids[3], x + spritesize , y + spritesize);
	ld	a, (hl-)
	ld	(bc), a
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	b, a
	ldhl	sp,	#2
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	c, a
	inc	de
	inc	de
	inc	de
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
	ld	de, #_shadow_OAM
	add	hl, de
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), b
	inc	hl
	ld	(hl), c
;main.c:29: move_sprite(characterToMove->spritids[3], x + spritesize , y + spritesize);
;main.c:31: }
	add	sp, #3
	pop	hl
	inc	sp
	jp	(hl)
;main.c:33: void moveBaddieCharacter(struct BaddieCharacter* characterToMove, UINT8 x, UINT8 y){
;	---------------------------------
; Function moveBaddieCharacter
; ---------------------------------
_moveBaddieCharacter::
	dec	sp
	dec	sp
	ldhl	sp,	#1
	ld	(hl), a
;main.c:35: move_sprite(characterToMove->spritids[0], x, y);
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
;main.c:36: move_sprite(characterToMove->spritids[1], x, y + spritesize);
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
;main.c:36: move_sprite(characterToMove->spritids[1], x, y + spritesize);
;main.c:38: }
	inc	sp
	inc	sp
	pop	hl
	inc	sp
	jp	(hl)
;main.c:40: void setupPlayer() {
;	---------------------------------
; Function setupPlayer
; ---------------------------------
_setupPlayer::
;main.c:42: Player.x = 10;
	ld	hl, #(_Player + 4)
	ld	(hl), #0x0a
;main.c:43: Player.y = 100;
	ld	bc, #_Player + 5
	ld	a, #0x64
	ld	(bc), a
;main.c:44: Player.width = 16;
	ld	hl, #(_Player + 6)
	ld	(hl), #0x10
;main.c:45: Player.height = 16;
	ld	hl, #(_Player + 7)
	ld	(hl), #0x10
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;main.c:48: Player.spritids[0] = 0;
	ld	hl, #_Player
	ld	(hl), #0x00
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x01
;main.c:51: Player.spritids[1] = 1;
	ld	hl, #(_Player + 1)
	ld	(hl), #0x01
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), #0x02
;main.c:54: Player.spritids[2] = 2;
	ld	hl, #(_Player + 2)
	ld	(hl), #0x02
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x03
;main.c:57: Player.spritids[3] = 3;
	ld	hl, #(_Player + 3)
	ld	(hl), #0x03
;main.c:60: moveGameCharacter(&Player, Player.x, Player.y);
	ld	a, (bc)
	ld	hl, #(_Player + 4)
	ld	c, (hl)
	push	af
	inc	sp
	ld	a, c
	ld	de, #_Player
	call	_moveGameCharacter
;main.c:61: }
	ret
;main.c:63: void setupBaddie() {
;	---------------------------------
; Function setupBaddie
; ---------------------------------
_setupBaddie::
;main.c:65: Baddie.x = 30;
	ld	hl, #(_Baddie + 2)
	ld	(hl), #0x1e
;main.c:66: Baddie.y = 0;
	ld	bc, #_Baddie + 3
	xor	a, a
	ld	(bc), a
;main.c:67: Baddie.width = 8;
	ld	hl, #(_Baddie + 4)
	ld	(hl), #0x08
;main.c:68: Baddie.height = 16;
	ld	hl, #(_Baddie + 5)
	ld	(hl), #0x10
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 18)
	ld	(hl), #0x0c
;main.c:71: Baddie.spritids[0] = 4;
	ld	hl, #_Baddie
	ld	(hl), #0x04
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 22)
	ld	(hl), #0x0d
;main.c:74: Baddie.spritids[1] = 5;
	ld	hl, #(_Baddie + 1)
	ld	(hl), #0x05
;main.c:76: moveBaddieCharacter(&Baddie, Baddie.x, Baddie.y);
	ld	a, (bc)
	ld	hl, #(_Baddie + 2)
	ld	c, (hl)
	push	af
	inc	sp
	ld	a, c
	ld	de, #_Baddie
	call	_moveBaddieCharacter
;main.c:77: }
	ret
;main.c:79: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:81: set_sprite_data(0, 12, JYSprite);
	ld	de, #_JYSprite
	push	de
	ld	hl, #0xc00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:82: set_sprite_data(12, 2, TestyTesterson);
	ld	de, #_TestyTesterson
	push	de
	ld	hl, #0x20c
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:83: setupPlayer();
	call	_setupPlayer
;main.c:84: setupBaddie();
	call	_setupBaddie
;main.c:86: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:89: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:91: while(!checkCollisions(&Player, &Baddie)){
00107$:
	ld	bc, #_Baddie
	ld	de, #_Player
	call	_checkCollisions
	or	a, a
	jr	NZ, 00109$
;main.c:92: if(joypad() & J_LEFT){
	call	_joypad
	ld	e, a
;main.c:93: Player.x -= 2;
	ld	bc, #_Player + 4
;main.c:94: moveGameCharacter(&Player, Player.x, Player.y);
;main.c:92: if(joypad() & J_LEFT){
	bit	1, e
	jr	Z, 00102$
;main.c:93: Player.x -= 2;
	ld	a, (bc)
	dec	a
	dec	a
	ld	(bc), a
;main.c:94: moveGameCharacter(&Player, Player.x, Player.y);
	ld	hl, #(_Player + 5)
	ld	h, (hl)
;	spillPairReg hl
	ld	a, (bc)
	ld	e, a
	push	bc
	push	hl
	inc	sp
	ld	a, e
	ld	de, #_Player
	call	_moveGameCharacter
	pop	bc
00102$:
;main.c:97: if(joypad() & J_RIGHT){
	call	_joypad
	rrca
	jr	NC, 00104$
;main.c:98: Player.x += 2;
	ld	a, (bc)
	add	a, #0x02
	ld	(bc), a
;main.c:99: moveGameCharacter(&Player, Player.x, Player.y);
	ld	hl, #(_Player + 5)
	ld	h, (hl)
;	spillPairReg hl
	ld	a, (bc)
	ld	e, a
	push	bc
	push	hl
	inc	sp
	ld	a, e
	ld	de, #_Player
	call	_moveGameCharacter
	pop	bc
00104$:
;main.c:102: Baddie.y += 5;
	ld	a, (#(_Baddie + 3) + 0)
	add	a, #0x05
	ld	(#(_Baddie + 3)),a
;main.c:104: if(Baddie.y >= 144){
;	spillPairReg hl
;main.c:106: Baddie.x = Player.x;
;main.c:104: if(Baddie.y >= 144){
	ld	a, (#(_Baddie + 3) + 0)
	sub	a, #0x90
	jr	C, 00106$
;main.c:105: Baddie.y = 0;
	ld	hl, #(_Baddie + 3)
	ld	(hl), #0x00
;main.c:106: Baddie.x = Player.x;
	ld	a, (bc)
	ld	(#(_Baddie + 2)),a
00106$:
;main.c:109: moveBaddieCharacter(&Baddie, Baddie.x, Baddie.y);
	ld	a, (#(_Baddie + 3) + 0)
	ld	hl, #(_Baddie + 2)
	ld	c, (hl)
	push	af
	inc	sp
	ld	a, c
	ld	de, #_Baddie
	call	_moveBaddieCharacter
;main.c:112: performanceDelay(5);
	ld	a, #0x05
	call	_performanceDelay
	jr	00107$
00109$:
;main.c:116: printf("\n \n \n \n \n \n \n === GAME OVER ===");
	ld	de, #___str_0
	push	de
	call	_printf
	pop	hl
;main.c:118: }
	ret
___str_0:
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " === GAME OVER ==="
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__JYSprite:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x58	; 88	'X'
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0x1c	; 28
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x58	; 88	'X'
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xd8	; 216
	.db #0xc0	; 192
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x58	; 88	'X'
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x38	; 56	'8'
	.db #0x07	; 7
	.db #0x30	; 48	'0'
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x58	; 88	'X'
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xe0	; 224
	.db #0x08	; 8
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xb8	; 184
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x12	; 18
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x37	; 55	'7'
	.db #0x3c	; 60
	.db #0x23	; 35
	.db #0x1c	; 28
	.db #0x07	; 7
	.db #0x66	; 102	'f'
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x7f	; 127
	.db #0x60	; 96
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0xe4	; 228
	.db #0xf7	; 247
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x2f	; 47
	.db #0xff	; 255
	.db #0x5f	; 95
	.db #0xfe	; 254
	.db #0x26	; 38
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0xf9	; 249
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x1f	; 31
	.db #0x05	; 5
	.db #0x1f	; 31
	.db #0x02	; 2
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x70	; 112	'p'
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xe2	; 226
	.db #0x02	; 2
	.db #0x9e	; 158
	.db #0x7e	; 126
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x0a	; 10
	.db #0x3f	; 63
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x1a	; 26
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe8	; 232
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0x50	; 80	'P'
	.db #0xfc	; 252
	.db #0xb8	; 184
	.db #0xf8	; 248
	.db #0x58	; 88	'X'
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
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
