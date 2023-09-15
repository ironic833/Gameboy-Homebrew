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
	.globl _BlinkLevelBlueAndWhite_Halting
	.globl _UpdateGlobalFrameCounters
	.globl _SetupGameplay
	.globl _CheckBackgroundTileIsWalkable
	.globl _StartGameplay
	.globl _SetupVRAM
	.globl _UpdateCameraPosition
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _SetupDots
	.globl _HandleDotConsumption
	.globl _PacmanDeathAnimation_Halting
	.globl _UpdatePacman
	.globl _SetupPacman
	.globl _DrawPacman
	.globl _UpdateAllGhosts
	.globl _DrawGhost
	.globl _SetupGhosts
	.globl _UpdateScore
	.globl _UpdateHUD
	.globl _SetupHUD
	.globl _set_sprite_data
	.globl _get_bkg_tile_xy
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _counter
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_counter::
	.ds 1
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:30: void UpdateCameraPosition(uint8_t dividor){
;	---------------------------------
; Function UpdateCameraPosition
; ---------------------------------
_UpdateCameraPosition::
	add	sp, #-9
	ldhl	sp,	#8
	ld	(hl), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:33: uint8_t playerX=pacman.column*8+Directions[pacman.direction].x*(pacman.move>>4);;
	ld	a, (#(_pacman + 3) + 0)
	add	a, a
	add	a, a
	add	a, a
	ld	c, a
	ld	a, (#(_pacman + 2) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	e, l
	ld	d, h
	ld	hl, #_Directions
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	hl, #_pacman
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	d, a
	srl	h
	rr	d
	srl	h
	rr	d
	srl	h
	rr	d
	srl	h
	rr	d
	push	bc
	push	de
	ld	e, d
	ld	a, b
	call	__muluschar
	ld	a, c
	pop	de
	pop	bc
	add	a, c
	ld	c, a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:34: uint8_t playerY=pacman.row*8+Directions[pacman.direction].y*(pacman.move>>4);;
	ld	a, (#_pacman + 5)
	add	a, a
	add	a, a
	add	a, a
	ld	b, a
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	e, d
	ld	a, l
	call	__muluschar
	ld	a, c
	pop	bc
	add	a, b
	ldhl	sp,	#7
	ld	(hl), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:39: uint16_t targetCameraX=SCX_REG;
	ldh	a, (_SCX_REG + 0)
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:40: uint16_t targetCameraY=SCY_REG;
	ldh	a, (_SCY_REG + 0)
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:43: if(playerX<Map_WIDTH/3)targetCameraX=0;
	ld	a, c
	sub	a, #0x38
	jr	NC, 00105$
	xor	a, a
	ldhl	sp,	#4
	ld	(hl+), a
	ld	(hl), a
	jr	00106$
00105$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:44: else if(playerX<(Map_WIDTH/3)*2)targetCameraX=((playerX-Map_WIDTH/3)*sidebarWidth)/(Map_WIDTH/3);
	ld	a, c
	sub	a, #0x70
	jr	NC, 00102$
	ld	b, #0x00
	ld	a, c
	add	a, #0xc8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0038
	ld	e, l
	ld	d, h
	call	__divsint
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jr	00106$
00102$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:45: else targetCameraX=sidebarWidth;
	ldhl	sp,	#4
	ld	a, #0x38
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
00106$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:48: if(playerY<Map_HEIGHT/3)targetCameraY=0;
	ldhl	sp,	#7
	ld	a, (hl)
	sub	a, #0x48
	jr	NC, 00111$
	xor	a, a
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), a
	jr	00112$
00111$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:49: else if(playerY<(Map_HEIGHT/3)*2)targetCameraY=((playerY-Map_HEIGHT/3)*heightRemainder)/(Map_HEIGHT/3);
	ldhl	sp,	#7
	ld	a, (hl)
	sub	a, #0x90
	jr	NC, 00108$
	ld	a, (hl)
	ld	c, #0x00
	add	a, #0xb8
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0048
	ld	e, l
	ld	d, h
	call	__divsint
	pop	hl
	push	bc
	jr	00112$
00108$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:50: else targetCameraY=heightRemainder;
	ldhl	sp,	#0
	ld	a, #0x48
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
00112$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:53: int16_t cameraXDiff=targetCameraX-SCX_REG;
	ldh	a, (_SCX_REG + 0)
	ldhl	sp,	#6
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#4
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#6
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#7
	ld	a, (hl-)
	dec	hl
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#7
	ld	(hl-), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:54: int16_t cameraYDiff=targetCameraY-SCY_REG;
	ld	a, e
	ld	(hl-), a
	dec	hl
	ldh	a, (_SCY_REG + 0)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	pop	bc
	push	bc
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:57: SCX_REG+=cameraXDiff/dividor;
	ldhl	sp,	#8
	ld	a, (hl-)
	dec	hl
	ld	e, a
	ld	d, #0x00
	push	de
	ld	c, e
	ld	b, d
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__divsint
	pop	de
	ldh	a, (_SCX_REG + 0)
	add	a, c
	ldh	(_SCX_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:58: SCY_REG+=cameraYDiff/dividor;
	ld	c, e
	ld	b, d
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__divsint
	ldh	a, (_SCY_REG + 0)
	add	a, c
	ldh	(_SCY_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:59: }
	add	sp, #9
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:61: void SetupVRAM(){
;	---------------------------------
; Function SetupVRAM
; ---------------------------------
_SetupVRAM::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:66: set_sprite_palette(0,5,Pacman_palettes);
	ld	de, #_Pacman_palettes
	push	de
	ld	hl, #0x500
	push	hl
	call	_set_sprite_palette
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:67: set_bkg_palette(0,5,Map_palettes);
	ld	de, #_Map_palettes
	push	de
	ld	hl, #0x500
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:70: set_bkg_data(0,Map_TILE_COUNT,Map_tiles);
	ld	de, #_Map_tiles
	push	de
	ld	hl, #0x1200
	push	hl
	call	_set_bkg_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:71: set_bkg_data(DOTS_TILES_START,Dots_TILE_COUNT,Dots_tiles);
	ld	de, #_Dots_tiles
	push	de
	ld	hl, #0x312
	push	hl
	call	_set_bkg_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:72: set_bkg_data(NUMBERS_TILES_START,Numbers_TILE_COUNT,Numbers_tiles);
	ld	de, #_Numbers_tiles
	push	de
	ld	hl, #0xa15
	push	hl
	call	_set_bkg_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:73: set_bkg_data(READYTEXT_TILES_START,ReadyText_TILE_COUNT,ReadyText_tiles);
	ld	de, #_ReadyText_tiles
	push	de
	ld	hl, #0x61f
	push	hl
	call	_set_bkg_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:74: set_bkg_data(ONEUPTEXT_TILES_START,OneUpText_TILE_COUNT,OneUpText_tiles);
	ld	de, #_OneUpText_tiles
	push	de
	ld	hl, #0x325
	push	hl
	call	_set_bkg_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:75: set_bkg_data(HIGHTEXT_TILES_START,HighText_TILE_COUNT,HighText_tiles);
	ld	de, #_HighText_tiles
	push	de
	ld	hl, #0x328
	push	hl
	call	_set_bkg_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:76: set_bkg_data(BLACKSQUARE_TILES_START,BlackSquare_TILE_COUNT,BlackSquare_tiles);
	ld	de, #_BlackSquare_tiles
	push	de
	ld	hl, #0x12b
	push	hl
	call	_set_bkg_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:79: set_sprite_data(GHOSTS_SPRITES_START,Pacman_TILE_COUNT,Ghosts_tiles);
	ld	de, #_Ghosts_tiles
	push	de
	ld	hl, #0x2c2c
	push	hl
	call	_set_sprite_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:80: set_sprite_data(GHOSTS_SCARED_SPRITES_START,GhostsScared_TILE_COUNT,GhostsScared_tiles);
	ld	de, #_GhostsScared_tiles
	push	de
	ld	hl, #0x104c
	push	hl
	call	_set_sprite_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:81: set_sprite_data(GHOSTS_EATEN_SPRITES_START,GhostsEaten_TILE_COUNT,GhostsEaten_tiles);
	ld	de, #_GhostsEaten_tiles
	push	de
	ld	hl, #0x105c
	push	hl
	call	_set_sprite_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:82: set_sprite_data(TARGET_TILES_SPRITES_START,TargetTiles_TILE_COUNT,TargetTiles_tiles);
	ld	de, #_TargetTiles_tiles
	push	de
	ld	hl, #0x86c
	push	hl
	call	_set_sprite_data
	add	sp, #4
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:85: VBK_REG=1; set_bkg_tiles(0,0,21,27,Map_map_attributes);
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	ld	de, #_Map_map_attributes
	push	de
	ld	hl, #0x1b15
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:86: VBK_REG=0; set_bkg_tiles(0,0,21,27,Map_map);
	xor	a, a
	ldh	(_VBK_REG + 0), a
	ld	de, #_Map_map
	push	de
	ld	hl, #0x1b15
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:89: blank=get_bkg_tile_xy(10,13);
	ld	hl, #0xd0a
	push	hl
	call	_get_bkg_tile_xy
	pop	hl
	ld	hl, #_blank
	ld	(hl), e
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:90: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:92: void StartGameplay(){
;	---------------------------------
; Function StartGameplay
; ---------------------------------
_StartGameplay::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:93: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:96: uint8_t CheckBackgroundTileIsWalkable(int8_t nextColumn, int8_t nextRow){
;	---------------------------------
; Function CheckBackgroundTileIsWalkable
; ---------------------------------
_CheckBackgroundTileIsWalkable::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:97: return 0;
	xor	a, a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:98: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:102: void SetupGameplay(){
;	---------------------------------
; Function SetupGameplay
; ---------------------------------
_SetupGameplay::
	add	sp, #-8
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:106: NR52_REG = 0x80; // is 1000 0000 in binary and turns on sound
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:107: NR50_REG = 0x77; // sets the volume for both left and right channel just set to max 0x77
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:108: NR51_REG = 0xFF; // is 1111 1111 in binary, select which chanels we want to use in this case all of them. One bit for the L one bit for the R of all four channels
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:110: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:111: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:112: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:113: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:114: SHOW_WIN;  
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:116: score=0;
	xor	a, a
	ld	hl, #_score
	ld	(hl+), a
	ld	(hl), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:118: SetupVRAM();
	call	_SetupVRAM
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:119: SetupHUD();
	call	_SetupHUD
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:120: SetupDots();
	call	_SetupDots
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:121: SetupPacman();    
	call	_SetupPacman
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:122: SetupGhosts();
	call	_SetupGhosts
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:126: UpdateScore();
	call	_UpdateScore
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:127: UpdateCameraPosition(1);
	ld	a, #0x01
	call	_UpdateCameraPosition
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:128: DrawGhost(0);
	xor	a, a
	call	_DrawGhost
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:129: DrawGhost(1);
	ld	a, #0x01
	call	_DrawGhost
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:130: DrawGhost(2);
	ld	a, #0x02
	call	_DrawGhost
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:131: DrawGhost(3);
	ld	a, #0x03
	call	_DrawGhost
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:132: DrawPacman();
	call	_DrawPacman
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:134: for(uint8_t i=0;i<21;i++){
	ldhl	sp,	#6
	ld	(hl), #0x00
00107$:
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x15
	jp	NC, 00109$
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:135: for(uint8_t j=0;j<27;j++){
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_TileSideWalkability
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
	ldhl	sp,	#7
	ld	(hl), #0x00
00104$:
	ldhl	sp,	#7
	ld	a, (hl)
	sub	a, #0x1b
	jp	NC, 00108$
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:137: TileSideWalkability[i][j][DOWN]=CheckBackgroundTileIsWalkable(i,j+1);
	ld	a, (hl)
	add	a, a
	add	a, a
	ldhl	sp,	#2
	ld	(hl), a
	pop	de
	push	de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ldhl	sp,	#7
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, (hl+)
	ld	e, a
	inc	e
	push	bc
	ld	a, (hl)
	call	_CheckBackgroundTileIsWalkable
	pop	bc
	ld	(bc), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:138: TileSideWalkability[i][j][UP]=CheckBackgroundTileIsWalkable(i,j-1);
	ldhl	sp,	#5
	ld	a, (hl+)
	ld	e, a
	dec	e
	ld	a, (hl)
	call	_CheckBackgroundTileIsWalkable
	ld	c, a
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:139: TileSideWalkability[i][j][RIGHT]=CheckBackgroundTileIsWalkable(i+1,j);
	ldhl	sp,	#2
	ld	e, (hl)
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	ld	b, a
	inc	bc
	ld	d, (hl)
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	inc	l
	push	bc
	push	de
	push	hl
	ldhl	sp,	#13
	ld	e, (hl)
	pop	hl
	ld	a, l
	call	_CheckBackgroundTileIsWalkable
	pop	de
	pop	bc
	ld	(bc), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:140: TileSideWalkability[i][j][LEFT]=CheckBackgroundTileIsWalkable(i-1,j);
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	inc	bc
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	dec	l
	push	bc
	push	hl
	ldhl	sp,	#11
	ld	e, (hl)
	pop	hl
	ld	a, l
	call	_CheckBackgroundTileIsWalkable
	pop	bc
	ld	(bc), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:135: for(uint8_t j=0;j<27;j++){
	ldhl	sp,	#7
	inc	(hl)
	jp	00104$
00108$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:134: for(uint8_t i=0;i<21;i++){
	ldhl	sp,	#6
	inc	(hl)
	jp	00107$
00109$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:145: }
	add	sp, #8
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:147: void UpdateGlobalFrameCounters(){
;	---------------------------------
; Function UpdateGlobalFrameCounters
; ---------------------------------
_UpdateGlobalFrameCounters::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:148: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:150: void BlinkLevelBlueAndWhite_Halting(){
;	---------------------------------
; Function BlinkLevelBlueAndWhite_Halting
; ---------------------------------
_BlinkLevelBlueAndWhite_Halting::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:151: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:153: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:155: SetupGameplay();
	call	_SetupGameplay
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:156: StartGameplay();
	call	_StartGameplay
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:158: while(TRUE){        
00114$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:160: joypadPrevious=joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:161: joypadCurrent=joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:164: if((joypadCurrent & J_SELECT) && !(joypadPrevious & J_SELECT)){
	bit	6, (hl)
	jr	Z, 00102$
	ld	a, (#_joypadPrevious)
	bit	6, a
	jr	NZ, 00102$
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:165: enableDebug = !enableDebug;
	ld	hl, #_enableDebug
	ld	a, (hl)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	(hl), a
00102$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:168: UpdateGlobalFrameCounters();
	call	_UpdateGlobalFrameCounters
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:169: UpdateHUD();
	call	_UpdateHUD
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:170: UpdateAllGhosts();
	call	_UpdateAllGhosts
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:171: UpdatePacman();
	call	_UpdatePacman
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:172: HandleDotConsumption();
	call	_HandleDotConsumption
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:173: UpdateCameraPosition(5);
	ld	a, #0x05
	call	_UpdateCameraPosition
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:178: if(pacman.state==0){
	ld	a, (#(_pacman + 7) + 0)
	or	a, a
	jr	NZ, 00111$
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:182: if(!ghostsResetting)PacmanDeathAnimation_Halting();
	ld	a, (#_ghostsResetting)
	or	a, a
	jr	NZ, 00105$
	call	_PacmanDeathAnimation_Halting
00105$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:183: ghostsResetting=1;
	ld	hl, #_ghostsResetting
	ld	(hl), #0x01
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:186: if(ghostsReady){
	ld	a, (#_ghostsReady)
	or	a, a
	jr	Z, 00112$
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:187: SetupGameplay();
	call	_SetupGameplay
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:188: StartGameplay();
	call	_StartGameplay
	jr	00112$
00111$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:196: else if(dotsRemaining==0){
	ld	hl, #_dotsRemaining + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00112$
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:197: BlinkLevelBlueAndWhite_Halting();
	call	_BlinkLevelBlueAndWhite_Halting
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:198: SetupGameplay();
	call	_SetupGameplay
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:199: StartGameplay();
	call	_StartGameplay
00112$:
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:202: wait_vbl_done();
	call	_wait_vbl_done
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:205: }
	jr	00114$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
