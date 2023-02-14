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
	.globl _jump
	.globl _wouldHitSurface
	.globl _performanceDelay
	.globl _set_sprite_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _floorYPosition
	.globl _gravity
	.globl _TestyTesterson
	.globl _currentSpeedY
	.globl _jumping
	.globl _playerlocation
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_playerlocation::
	.ds 2
_jumping::
	.ds 1
_currentSpeedY::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_TestyTesterson::
	.ds 32
_gravity::
	.ds 1
_floorYPosition::
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
;main.c:20: INT8 wouldHitSurface(UINT8 projectedYPositon){
;	---------------------------------
; Function wouldHitSurface
; ---------------------------------
_wouldHitSurface::
;main.c:21: if(projectedYPositon >= floorYPosition){
	ld	hl, #_floorYPosition
	sub	a, (hl)
	jr	C, 00102$
;main.c:22: return floorYPosition;
	ld	a, (hl)
	ret
00102$:
;main.c:24: return -1;
	ld	a, #0xff
;main.c:25: }
	ret
;main.c:27: void jump(UINT8 spriteId, UINT8 spriteLocation[2]) {
;	---------------------------------
; Function jump
; ---------------------------------
_jump::
	add	sp, #-9
	ldhl	sp,	#8
	ld	(hl-), a
	dec	hl
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;main.c:32: if(jumping == 0){
	ld	hl, #_jumping
	ld	a, (hl)
	or	a, a
	jr	NZ, 00102$
;main.c:33: jumping = 1;
	ld	(hl), #0x01
;main.c:34: currentSpeedY = 10;
	ld	hl, #_currentSpeedY
	ld	(hl), #0x0a
00102$:
;main.c:38: currentSpeedY = currentSpeedY + gravity;
	ld	a, (#_currentSpeedY)
	ld	hl, #_gravity
	add	a, (hl)
	ld	(#_currentSpeedY),a
;main.c:40: spriteLocation[1] = spriteLocation[1] - currentSpeedY;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #_currentSpeedY
	sub	a, (hl)
	ld	c, a
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;main.c:42: possibleSurfaceY = wouldHitSurface(spriteLocation[1]);
	ld	a, c
	call	_wouldHitSurface
	ldhl	sp,	#2
	ld	(hl), a
;main.c:44: if(possibleSurfaceY > -1){
	ld	e, (hl)
	ld	a,#0xff
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00120$
	bit	7, d
	jr	NZ, 00121$
	cp	a, a
	jr	00121$
00120$:
	bit	7, d
	jr	Z, 00121$
	scf
00121$:
	jr	NC, 00104$
;main.c:45: jumping = 0;
	ld	hl, #_jumping
	ld	(hl), #0x00
;main.c:46: move_sprite(spriteId, spriteLocation[0], possibleSurfaceY);
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl), a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ld	a, #0x02
00122$:
	ldhl	sp,	#0
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00122$
	pop	de
	push	de
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	a, (hl+)
	inc	hl
	ld	(de), a
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl-)
	dec	hl
	ld	b, a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;main.c:46: move_sprite(spriteId, spriteLocation[0], possibleSurfaceY);
	jr	00108$
00104$:
;main.c:48: move_sprite(spriteId, spriteLocation[0], spriteLocation[1]);
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl), a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ldhl	sp,	#8
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	c, l
	ld	b, h
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ldhl	sp,	#5
	ld	a, (hl-)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;main.c:48: move_sprite(spriteId, spriteLocation[0], spriteLocation[1]);
00108$:
;main.c:51: }
	add	sp, #9
	ret
;main.c:54: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:57: set_sprite_data(0, 2, TestyTesterson);
	ld	de, #_TestyTesterson
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;main.c:62: playerlocation[0] = 10;
	ld	hl, #_playerlocation
	ld	(hl), #0x0a
;main.c:63: playerlocation[1] = 100;
	ld	hl, #(_playerlocation + 1)
	ld	(hl), #0x64
;main.c:64: jumping = 0;
	ld	hl, #_jumping
	ld	(hl), #0x00
;main.c:67: move_sprite(0, playerlocation[0], playerlocation[1]);
	ld	hl, #(_playerlocation + 1)
	ld	b, (hl)
	ld	hl, #_playerlocation
	ld	c, (hl)
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:69: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:72: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:74: while(1){
00109$:
;main.c:76: if(joypad() & J_LEFT){
	call	_joypad
	bit	1, a
	jr	Z, 00102$
;main.c:77: playerlocation[0] = playerlocation[0] - 2;
	ld	a, (#_playerlocation + 0)
	dec	a
	dec	a
	ld	(#_playerlocation),a
;main.c:79: move_sprite(0, playerlocation[0], playerlocation[1]);
	ld	hl, #(_playerlocation + 1)
	ld	b, (hl)
	ld	c, a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), b
	inc	hl
	ld	(hl), c
;main.c:79: move_sprite(0, playerlocation[0], playerlocation[1]);
00102$:
;main.c:81: if(joypad() & J_RIGHT){
	call	_joypad
	rrca
	jr	NC, 00104$
;main.c:82: playerlocation[0] = playerlocation[0] + 2;
	ld	a, (#_playerlocation + 0)
	add	a, #0x02
	ld	(#_playerlocation),a
;main.c:84: move_sprite(0, playerlocation[0], playerlocation[1]);
	ld	hl, #(_playerlocation + 1)
	ld	c, (hl)
	ld	b, a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), c
	inc	hl
	ld	(hl), b
;main.c:84: move_sprite(0, playerlocation[0], playerlocation[1]);
00104$:
;main.c:86: if((joypad() & J_A) || jumping == 1){
	call	_joypad
	bit	4, a
	jr	NZ, 00105$
	ld	a, (#_jumping)
	dec	a
	jr	NZ, 00106$
00105$:
;main.c:87: jump(0, playerlocation);
	ld	de, #_playerlocation
	xor	a, a
	call	_jump
00106$:
;main.c:91: performanceDelay(5);
	ld	a, #0x05
	call	_performanceDelay
;main.c:95: }
	jr	00109$
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
__xinit__gravity:
	.db #0xfe	; 254
__xinit__floorYPosition:
	.db #0x64	; 100	'd'
	.area _CABS (ABS)
