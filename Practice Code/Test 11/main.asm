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
	.globl _animateSprite
	.globl _canPlayerMove
	.globl _performanceDelay
	.globl _printf
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _PlacyHolder
	.globl _BackgropundTiles
	.globl _BackgroundTest
	.globl _gameRunning
	.globl _haskey
	.globl _debug
	.globl _playerLocation
	.globl _blankMap
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_playerLocation::
	.ds 2
_debug::
	.ds 1
_haskey::
	.ds 1
_gameRunning::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_BackgroundTest::
	.ds 360
_BackgropundTiles::
	.ds 64
_PlacyHolder::
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
;main.c:12: void performanceDelay(UINT8 numloops){
;	---------------------------------
; Function performanceDelay
; ---------------------------------
_performanceDelay::
	ld	c, a
;main.c:14: for(i = 0; i < numloops; i++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;main.c:15: wait_vbl_done();
	call	_wait_vbl_done
;main.c:14: for(i = 0; i < numloops; i++){
	inc	b
;main.c:17: }
	jr	00103$
_blankMap:
	.db #0x03	;  3
;main.c:19: UBYTE canPlayerMove(UINT8 newPlayerx, UINT8 newPlayery) {
;	---------------------------------
; Function canPlayerMove
; ---------------------------------
_canPlayerMove::
	add	sp, #-8
	ldhl	sp,	#7
	ld	(hl-), a
;main.c:24: indexTLx = (newPlayerx -8) / 8;
	ld	a, e
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00114$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xffff
	add	hl, de
	ld	c, l
	ld	b, h
00114$:
	inc	sp
	inc	sp
	push	bc
	ldhl	sp,	#1
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
;main.c:25: indexTLy = (newPlayery -16) / 8;
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00115$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xfff7
	add	hl, de
	ld	c, l
	ld	b, h
00115$:
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;main.c:27: tileIndexTL = 20 * indexTLy + indexTLx;
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
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
	pop	hl
	push	hl
	add	hl, de
	ld	e, l
	ld	a, h
	ldhl	sp,	#2
	ld	(hl), e
	inc	hl
	ld	(hl), a
;main.c:29: if(debug){
	ld	a, (#_debug)
	or	a, a
	jr	Z, 00102$
;main.c:30: printf("%u %u\n",(UINT16)(newPlayerx),(UINT16)(newPlayery));
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	e, a
	ld	d, #0x00
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	push	bc
	push	de
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	de, #___str_0
	push	de
	call	_printf
	add	sp, #6
	pop	bc
;main.c:31: printf("%u %u %u\n",(UINT16)indexTLx,(UINT16)indexTLy,(UINT16)tileIndexTL);
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	push	bc
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	de, #___str_1
	push	de
	call	_printf
	add	sp, #8
00102$:
;main.c:34: result = BackgroundTest[tileIndexTL] == blankMap[0];
	ld	bc, #_BackgroundTest+0
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	e, a
	ld	d, #0x00
	ld	bc, #_blankMap+0
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, e
	jr	NZ, 00151$
	ld	a, h
	sub	a, d
	ld	a, #0x01
	jr	Z, 00152$
00151$:
	xor	a, a
00152$:
	ld	e, a
;main.c:36: if(tileIndexTL==321){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x41
	jr	NZ, 00110$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00110$
;main.c:38: set_bkg_tiles(1, 16, 1, 1, blankMap);
	push	bc
	ld	hl, #0x101
	push	hl
	ld	hl, #0x1001
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:39: haskey = 1;
	ld	hl, #_haskey
	ld	(hl), #0x01
;main.c:40: result = 1;
	ld	e, #0x01
	jr	00111$
00110$:
;main.c:41: } else if(tileIndexTL == 263 && haskey == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x07
	jr	NZ, 00106$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00106$
	ld	a, (#_haskey)
	dec	a
	jr	NZ, 00106$
;main.c:43: set_bkg_tiles(3, 13, 1, 1, blankMap);
	push	bc
	ld	hl, #0x101
	push	hl
	ld	hl, #0xd03
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:44: result = 1;
	ld	e, #0x01
	jr	00111$
00106$:
;main.c:45: } else if(tileIndexTL==340){
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x54
	jr	NZ, 00111$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00111$
;main.c:47: gameRunning = 0;
	ld	hl, #_gameRunning
	ld	(hl), #0x00
;main.c:48: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;main.c:49: printf("\n \n \n \n \n \n \n \n \n       You Win!");
	ld	de, #___str_2
	push	de
	call	_printf
	pop	hl
;main.c:50: result = 1;
	ld	e, #0x01
00111$:
;main.c:53: return result;
	ld	a, e
;main.c:55: }
	add	sp, #8
	ret
___str_0:
	.ascii "%u %u"
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "%u %u %u"
	.db 0x0a
	.db 0x00
___str_2:
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
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii "       You Win!"
	.db 0x00
;main.c:57: void animateSprite(UINT8 spriteIndex, INT8 moveX, INT8 moveY) {
;	---------------------------------
; Function animateSprite
; ---------------------------------
_animateSprite::
	ld	c, a
	ld	b, e
;main.c:58: while(moveX != 0) {
00101$:
	ld	a, b
	or	a, a
	jr	Z, 00104$
;main.c:59: scroll_sprite(spriteIndex, moveX < 0 ? -1 : 1, 0);
	bit	7, b
	jr	Z, 00111$
	ld	de, #0xffff
	jr	00112$
00111$:
	ld	de, #0x0001
00112$:
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, c
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
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	ld	(hl+), a
	ld	a, (hl)
	add	a, e
	ld	(hl), a
;main.c:60: moveX += moveX < 0 ? 1 : -1;
	bit	7, b
	jr	Z, 00113$
	ld	de, #0x0001
	jr	00114$
00113$:
	ld	de, #0xffff
00114$:
	ld	a, e
	add	a, b
	ld	b, a
;main.c:61: wait_vbl_done();
	call	_wait_vbl_done
	jr	00101$
;main.c:64: while(moveY != 0) {
00104$:
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	Z, 00109$
;main.c:65: scroll_sprite(spriteIndex, 0, moveY < 0 ? -1 : 1);
	bit	7, (hl)
	jr	Z, 00115$
	ld	de, #0xffff
	jr	00116$
00115$:
	ld	de, #0x0001
00116$:
	ld	b, e
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	add	a, b
	ld	(hl+), a
	ld	a, (hl)
	ld	(hl), a
;main.c:66: moveY += moveY < 0 ? 1 : -1;
	ldhl	sp,	#2
	bit	7, (hl)
	jr	Z, 00117$
	ld	de, #0x0001
	jr	00118$
00117$:
	ld	de, #0xffff
00118$:
	ld	a, e
	ldhl	sp,	#2
	add	a, (hl)
	ld	(hl), a
;main.c:67: wait_vbl_done();
	call	_wait_vbl_done
	jr	00104$
00109$:
;main.c:69: }
	pop	hl
	inc	sp
	jp	(hl)
;main.c:71: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:73: set_bkg_data(0, 3, BackgropundTiles);
	ld	de, #_BackgropundTiles
	push	de
	ld	hl, #0x300
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:74: set_bkg_tiles(0, 0, 20, 18, BackgroundTest);
	ld	de, #_BackgroundTest
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:76: set_sprite_data(0, 1, PlacyHolder);
	ld	de, #_PlacyHolder
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_data
	add	sp, #4
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;main.c:79: playerLocation[0] = 16;
	ld	hl, #_playerLocation
	ld	(hl), #0x10
;main.c:80: playerLocation[1] = 24;
	ld	hl, #(_playerLocation + 1)
	ld	(hl), #0x18
;main.c:82: move_sprite(0, playerLocation[0], playerLocation[1]);
	ld	hl, #(_playerLocation + 1)
	ld	b, (hl)
	ld	hl, #_playerLocation
	ld	c, (hl)
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:84: gameRunning = 1;
	ld	hl, #_gameRunning
	ld	(hl), #0x01
;main.c:87: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:88: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:89: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:93: while(gameRunning){
00122$:
	ld	a, (#_gameRunning)
	or	a, a
	ret	Z
;main.c:94: if(joypad() & J_A){
	call	_joypad
	bit	4, a
	jr	Z, 00102$
;main.c:95: debug = 1;
	ld	hl, #_debug
	ld	(hl), #0x01
00102$:
;main.c:97: if(joypad() & J_LEFT){
	call	_joypad
	bit	1, a
	jr	Z, 00120$
;main.c:98: if(canPlayerMove(playerLocation[0]-8, playerLocation[1])){
	ld	hl, #(_playerLocation + 1)
	ld	c, (hl)
	ld	a, (#_playerLocation + 0)
	add	a, #0xf8
	ld	e, c
	call	_canPlayerMove
	or	a, a
	jp	Z, 00121$
;main.c:99: playerLocation[0] -= 8;
	ld	a, (#_playerLocation + 0)
	add	a, #0xf8
	ld	(#_playerLocation),a
;main.c:100: animateSprite(0,-8,0);
	xor	a, a
	push	af
	inc	sp
	ld	e, #0xf8
	xor	a, a
	call	_animateSprite
	jp	00121$
00120$:
;main.c:103: else if(joypad() & J_RIGHT) {
	call	_joypad
	rrca
	jr	NC, 00117$
;main.c:104: if(canPlayerMove(playerLocation[0]+8, playerLocation[1])){
	ld	hl, #(_playerLocation + 1)
	ld	b, (hl)
	ld	a, (#_playerLocation + 0)
	add	a, #0x08
	ld	e, b
	call	_canPlayerMove
	or	a, a
	jr	Z, 00121$
;main.c:105: playerLocation[0] += 8;
	ld	a, (#_playerLocation + 0)
	add	a, #0x08
	ld	(#_playerLocation),a
;main.c:106: animateSprite(0,8,0);
	xor	a, a
	push	af
	inc	sp
	ld	e, #0x08
	xor	a, a
	call	_animateSprite
	jr	00121$
00117$:
;main.c:109: else if(joypad() & J_UP) {
	call	_joypad
	bit	2, a
	jr	Z, 00114$
;main.c:110: if(canPlayerMove(playerLocation[0], playerLocation[1] - 8)){
	ld	a, (#(_playerLocation + 1) + 0)
	add	a, #0xf8
	ld	c, a
	ld	hl, #_playerLocation
	ld	b, (hl)
	ld	e, c
	ld	a, b
	call	_canPlayerMove
	or	a, a
	jr	Z, 00121$
;main.c:111: playerLocation[1] -= 8;
	ld	a, (#(_playerLocation + 1) + 0)
	add	a, #0xf8
	ld	(#(_playerLocation + 1)),a
;main.c:112: animateSprite(0,0,-8);
	ld	a, #0xf8
	push	af
	inc	sp
	xor	a, a
	ld	e, a
	call	_animateSprite
	jr	00121$
00114$:
;main.c:115: else if(joypad() & J_DOWN) {
	call	_joypad
	bit	3, a
	jr	Z, 00121$
;main.c:116: if(canPlayerMove(playerLocation[0], playerLocation[1] + 8)){
	ld	a, (#(_playerLocation + 1) + 0)
	add	a, #0x08
	ld	c, a
	ld	hl, #_playerLocation
	ld	b, (hl)
	ld	e, c
	ld	a, b
	call	_canPlayerMove
	or	a, a
	jr	Z, 00121$
;main.c:117: playerLocation[1] += 8;
	ld	a, (#(_playerLocation + 1) + 0)
	add	a, #0x08
	ld	(#(_playerLocation + 1)),a
;main.c:118: animateSprite(0,0,8);
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	ld	e, a
	call	_animateSprite
00121$:
;main.c:122: performanceDelay(6);
	ld	a, #0x06
	call	_performanceDelay
;main.c:126: }
	jp	00122$
	.area _CODE
	.area _INITIALIZER
__xinit__BackgroundTest:
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
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
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
__xinit__BackgropundTiles:
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x38	; 56	'8'
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__PlacyHolder:
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0xa5	; 165
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.area _CABS (ABS)
