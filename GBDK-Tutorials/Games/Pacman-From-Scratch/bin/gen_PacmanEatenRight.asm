;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module PacmanEatenRight
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PacmanEatenRight_metasprites
	.globl _PacmanEatenRight_metasprite7
	.globl _PacmanEatenRight_metasprite6
	.globl _PacmanEatenRight_metasprite5
	.globl _PacmanEatenRight_metasprite4
	.globl _PacmanEatenRight_metasprite3
	.globl _PacmanEatenRight_metasprite2
	.globl _PacmanEatenRight_metasprite1
	.globl _PacmanEatenRight_metasprite0
	.globl _PacmanEatenRight_tiles
	.globl _PacmanEatenRight_palettes
	.globl b___func_PacmanEatenRight
	.globl ___func_PacmanEatenRight
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\gen\default\graphics\PacmanEatenRight.c:7: BANKREF(PacmanEatenRight)
;	---------------------------------
; Function __func_PacmanEatenRight
; ---------------------------------
	b___func_PacmanEatenRight	= 0
___func_PacmanEatenRight::
	.local b___func_PacmanEatenRight 
	___bank_PacmanEatenRight = b___func_PacmanEatenRight 
	.globl ___bank_PacmanEatenRight 
	.area _CODE
_PacmanEatenRight_palettes:
	.dw #0x4100
	.dw #0x03ff
	.dw #0x7fff
	.dw #0x0000
	.dw #0x0000
	.dw #0x7f00
	.dw #0x6800
	.dw #0x7fff
	.dw #0x0000
	.dw #0x001f
	.dw #0x6800
	.dw #0x7fff
	.dw #0x0000
	.dw #0x4e3f
	.dw #0x6800
	.dw #0x7fff
	.dw #0x0000
	.dw #0x025f
	.dw #0x6800
	.dw #0x7fff
_PacmanEatenRight_tiles:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
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
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x3e	; 62
	.db #0x22	; 34
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x7c	; 124
	.db #0x4c	; 76	'L'
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x7c	; 124
	.db #0x4c	; 76	'L'
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x20	; 32
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
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x3e	; 62
	.db #0x2e	; 46
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x3e	; 62
	.db #0x2e	; 46
	.db #0x10	; 16
	.db #0x10	; 16
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
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x04	; 4
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
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite1:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite2:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite3:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite4:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite5:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite6:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprite7:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_PacmanEatenRight_metasprites:
	.dw _PacmanEatenRight_metasprite0
	.dw _PacmanEatenRight_metasprite1
	.dw _PacmanEatenRight_metasprite2
	.dw _PacmanEatenRight_metasprite3
	.dw _PacmanEatenRight_metasprite4
	.dw _PacmanEatenRight_metasprite5
	.dw _PacmanEatenRight_metasprite6
	.dw _PacmanEatenRight_metasprite7
	.area _INITIALIZER
	.area _CABS (ABS)
