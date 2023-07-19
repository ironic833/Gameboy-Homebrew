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
	.globl _isWithinKeyboard
	.globl _updatePlayerName
	.globl _drawPlayerName
	.globl _removeFromPlayerName
	.globl _addToPlayerName
	.globl _performanceDelay
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _waitpadup
	.globl _joypad
	.globl _playerHasName
	.globl _nameCharIndex
	.globl _keydown
	.globl _keyboarddata
	.globl _keyboardmap
	.globl _playerName
	.globl _cursor
	.globl _maxcursory
	.globl _maxcursorx
	.globl _mincursory
	.globl _mincursorx
	.globl _sprites
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_cursor::
	.ds 4
_playerName::
	.ds 18
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_keyboardmap::
	.ds 360
_keyboarddata::
	.ds 720
_keydown::
	.ds 1
_nameCharIndex::
	.ds 1
_playerHasName::
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
;main.c:18: void performanceDelay(UINT8 numloops){
;	---------------------------------
; Function performanceDelay
; ---------------------------------
_performanceDelay::
	ld	c, a
;main.c:20: for(ii = 0; ii < numloops; ii++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;main.c:21: wait_vbl_done();
	call	_wait_vbl_done
;main.c:20: for(ii = 0; ii < numloops; ii++){
	inc	b
;main.c:23: }
	jr	00103$
_sprites:
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
_mincursorx:
	.db #0x0c	; 12
_mincursory:
	.db #0x50	; 80	'P'
_maxcursorx:
	.db #0x9c	; 156
_maxcursory:
	.db #0x80	; 128
;main.c:25: void addToPlayerName(struct Cursor* cursor){
;	---------------------------------
; Function addToPlayerName
; ---------------------------------
_addToPlayerName::
	ld	c, e
	ld	b, d
;main.c:26: UINT8 characterIndex = cursor->row * 10 + cursor->col + 1;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	e, l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	inc	bc
	inc	bc
	ld	a, (bc)
	add	a, l
	ld	c, a
	inc	c
;main.c:28: if(nameCharIndex == 18) return;
	ld	a, (#_nameCharIndex)
	sub	a, #0x12
	ret	Z
;main.c:30: playerName[nameCharIndex] = characterIndex;
	ld	a, #<(_playerName)
	ld	hl, #_nameCharIndex
	add	a, (hl)
	ld	e, a
	ld	a, #>(_playerName)
	adc	a, #0x00
	ld	d, a
	ld	a, c
	ld	(de), a
;main.c:31: nameCharIndex++;
	inc	(hl)
;main.c:32: }
	ret
;main.c:34: void removeFromPlayerName(){
;	---------------------------------
; Function removeFromPlayerName
; ---------------------------------
_removeFromPlayerName::
;main.c:35: if(nameCharIndex > 0){
	ld	hl, #_nameCharIndex
	ld	a, (hl)
	or	a, a
	ret	Z
;main.c:36: nameCharIndex--;
	dec	(hl)
;main.c:37: playerName[nameCharIndex] = 0;
	ld	bc, #_playerName+0
	ld	a, c
	add	a, (hl)
	ld	c, a
	jr	NC, 00110$
	inc	b
00110$:
	xor	a, a
	ld	(bc), a
;main.c:39: }
	ret
;main.c:41: void drawPlayerName (){
;	---------------------------------
; Function drawPlayerName
; ---------------------------------
_drawPlayerName::
;main.c:42: set_bkg_tiles(1, 4, 18, 1, playerName);
	ld	de, #_playerName
	push	de
	ld	hl, #0x112
	push	hl
	ld	hl, #0x401
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:43: }
	ret
;main.c:45: void updatePlayerName(struct Cursor* cursor){
;	---------------------------------
; Function updatePlayerName
; ---------------------------------
_updatePlayerName::
;main.c:46: if(cursor->col == 8 && cursor->row == 4){
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, c
	sub	a, #0x08
	jr	NZ, 00106$
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00106$
;main.c:47: removeFromPlayerName();
	call	_removeFromPlayerName
;main.c:48: drawPlayerName();
	jp	_drawPlayerName
00106$:
;main.c:49: } else if(cursor->col == 9 && cursor->row == 4){
	ld	a, c
	sub	a, #0x09
	jr	NZ, 00102$
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00102$
;main.c:50: playerHasName = 1;
	ld	hl, #_playerHasName
	ld	(hl), #0x01
	ret
00102$:
;main.c:52: addToPlayerName(cursor);
	call	_addToPlayerName
;main.c:53: drawPlayerName();
;main.c:56: }
	jp	_drawPlayerName
;main.c:58: UBYTE isWithinKeyboard(UINT8 x, UINT8 y) {
;	---------------------------------
; Function isWithinKeyboard
; ---------------------------------
_isWithinKeyboard::
	ld	c, a
;main.c:59: if(x == 140 && y == 144 || x == 156 && y == 144 ){
	ld	a, e
	sub	a, #0x90
	ld	a, #0x01
	jr	Z, 00141$
	xor	a, a
00141$:
	ld	b, a
	ld	a, c
	sub	a,#0x8c
	jr	NZ, 00105$
	or	a,b
	jr	NZ, 00101$
00105$:
	ld	a, c
	sub	a,#0x9c
	jr	NZ, 00102$
	or	a,b
	jr	Z, 00102$
00101$:
;main.c:60: return 1;
	ld	a, #0x01
	ret
00102$:
;main.c:63: return x >= mincursorx && x <= maxcursorx && y >= mincursory && y <= maxcursory;
	ld	hl, #_mincursorx
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	C, 00108$
	ld	a, (#_maxcursorx)
	sub	a, c
	jr	C, 00108$
	ld	hl, #_mincursory
	ld	c, (hl)
	ld	a, e
	sub	a, c
	jr	C, 00108$
	ld	a, (#_maxcursory)
	sub	a, e
	jr	NC, 00109$
00108$:
	xor	a, a
	ret
00109$:
	ld	a, #0x01
;main.c:65: }
	ret
;main.c:67: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:69: set_sprite_data(0, 1, sprites);
	ld	de, #_sprites
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_data
	add	sp, #4
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;main.c:72: cursor.x = 12;
	ld	hl, #_cursor
	ld	(hl), #0x0c
;main.c:73: cursor.y = 80;
	ld	hl, #(_cursor + 1)
	ld	(hl), #0x50
;main.c:74: cursor.col = 0;
	ld	hl, #(_cursor + 2)
	ld	(hl), #0x00
;main.c:75: cursor.row = 0;
	ld	hl, #(_cursor + 3)
	ld	(hl), #0x00
;main.c:77: move_sprite(0, cursor.x, cursor.y);
	ld	hl, #(_cursor + 1)
	ld	b, (hl)
	ld	hl, #_cursor
	ld	c, (hl)
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:79: set_bkg_data(0, 45, keyboarddata);
	ld	de, #_keyboarddata
	push	de
	ld	hl, #0x2d00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:80: set_bkg_tiles(0, 0, 20, 18, keyboardmap);
	ld	de, #_keyboardmap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1222: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG + 0)
	add	a, #0xfc
	ldh	(_SCX_REG + 0), a
;main.c:83: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:84: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:85: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:87: while(!playerHasName){
00117$:
	ld	a, (#_playerHasName)
	or	a, a
	ret	NZ
;main.c:89: if(keydown) {
	ld	a, (#_keydown)
	or	a, a
	jr	Z, 00102$
;main.c:90: waitpadup();
	call	_waitpadup
;main.c:91: keydown = 0;
	ld	hl, #_keydown
	ld	(hl), #0x00
00102$:
;main.c:94: switch(joypad()){
	call	_joypad
	ld	c, a
	dec	a
	jp	Z,00112$
	ld	a,c
	cp	a,#0x02
	jr	Z, 00109$
	cp	a,#0x04
	jr	Z, 00103$
	cp	a,#0x08
	jr	Z, 00106$
	sub	a, #0x10
	jp	Z,00115$
	jp	00116$
;main.c:95: case J_UP:
00103$:
;main.c:96: if(isWithinKeyboard(cursor.x, cursor.y - 16 )){
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0xf0
	ld	b, a
	ld	hl, #_cursor
	ld	c, (hl)
	ld	e, b
	ld	a, c
	call	_isWithinKeyboard
	or	a, a
	jp	Z, 00116$
;main.c:97: cursor.y -= 16;
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0xf0
	ld	(#(_cursor + 1)),a
;main.c:98: cursor.row--;
	ld	a, (#(_cursor + 3) + 0)
	dec	a
	ld	(#(_cursor + 3)),a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0xf0
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;main.c:100: keydown = 1;  
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:102: break;
	jp	00116$
;main.c:103: case J_DOWN:
00106$:
;main.c:104: if(isWithinKeyboard(cursor.x, cursor.y + 16)){
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0x10
	ld	b, a
	ld	hl, #_cursor
	ld	c, (hl)
	ld	e, b
	ld	a, c
	call	_isWithinKeyboard
	or	a, a
	jp	Z, 00116$
;main.c:105: cursor.y += 16;
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0x10
	ld	(#(_cursor + 1)),a
;main.c:106: cursor.row++;
	ld	a, (#(_cursor + 3) + 0)
	inc	a
	ld	(#(_cursor + 3)),a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0x10
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;main.c:108: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:110: break;
	jr	00116$
;main.c:111: case J_LEFT:
00109$:
;main.c:112: if(isWithinKeyboard(cursor.x - 16, cursor.y)){
	ld	hl, #(_cursor + 1)
	ld	b, (hl)
	ld	a, (#_cursor + 0)
	add	a, #0xf0
	ld	e, b
	call	_isWithinKeyboard
	or	a, a
	jr	Z, 00116$
;main.c:113: cursor.x -= 16;
	ld	a, (#_cursor + 0)
	add	a, #0xf0
	ld	(#_cursor),a
;main.c:114: cursor.col--;
	ld	a, (#(_cursor + 2) + 0)
	dec	a
	ld	(#(_cursor + 2)),a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0xf0
	ld	(bc), a
;main.c:116: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:118: break;
	jr	00116$
;main.c:119: case J_RIGHT:
00112$:
;main.c:120: if(isWithinKeyboard(cursor.x + 16, cursor.y)){
	ld	hl, #(_cursor + 1)
	ld	c, (hl)
	ld	a, (#_cursor + 0)
	add	a, #0x10
	ld	e, c
	call	_isWithinKeyboard
	or	a, a
	jr	Z, 00116$
;main.c:121: cursor.x += 16;
	ld	a, (#_cursor + 0)
	add	a, #0x10
	ld	(#_cursor),a
;main.c:122: cursor.col++;
	ld	a, (#(_cursor + 2) + 0)
	inc	a
	ld	(#(_cursor + 2)),a
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;D:/Enviromental-Variables/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0x10
	ld	(bc), a
;main.c:124: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:126: break;
	jr	00116$
;main.c:127: case J_A:
00115$:
;main.c:128: updatePlayerName(&cursor);
	ld	de, #_cursor
	call	_updatePlayerName
;main.c:129: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:132: }
00116$:
;main.c:134: performanceDelay(2);
	ld	a, #0x02
	call	_performanceDelay
;main.c:138: }
	jp	00117$
	.area _CODE
	.area _INITIALIZER
__xinit__keyboardmap:
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
	.db #0x19	; 25
	.db #0x0f	; 15
	.db #0x15	; 21
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x05	; 5
	.db #0x29	; 41
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
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
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x0a	; 10
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
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x14	; 20
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
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1d	; 29
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
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
	.db #0x2b	; 43
	.db #0x00	; 0
	.db #0x2c	; 44
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
__xinit__keyboarddata:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe1	; 225
	.db #0xe1	; 225
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x27	; 39
	.db #0x27	; 39
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x85	; 133
	.db #0x85	; 133
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xb3	; 179
	.db #0xb3	; 179
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xdb	; 219
	.db #0xdb	; 219
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0xcf	; 207
	.db #0xcf	; 207
__xinit__keydown:
	.db #0x00	; 0
__xinit__nameCharIndex:
	.db #0x00	; 0
__xinit__playerHasName:
	.db #0x00	; 0
	.area _CABS (ABS)
