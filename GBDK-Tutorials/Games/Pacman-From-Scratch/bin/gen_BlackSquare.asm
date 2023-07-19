;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module BlackSquare
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BlackSquare_map_attributes
	.globl _BlackSquare_map
	.globl _BlackSquare_tiles
	.globl _BlackSquare_palettes
	.globl b___func_BlackSquare
	.globl ___func_BlackSquare
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\gen\default\graphics\BlackSquare.c:7: BANKREF(BlackSquare)
;	---------------------------------
; Function __func_BlackSquare
; ---------------------------------
	b___func_BlackSquare	= 0
___func_BlackSquare::
	.local b___func_BlackSquare 
	___bank_BlackSquare = b___func_BlackSquare 
	.globl ___bank_BlackSquare 
	.area _CODE
_BlackSquare_palettes:
	.dw #0x0000
	.dw #0x6800
	.dw #0x461f
	.dw #0x031f
	.dw #0x0000
	.dw #0x4631
	.dw #0x001a
	.dw #0x7fff
	.dw #0x0000
	.dw #0x7fff
	.dw #0x461f
	.dw #0x001a
	.dw #0x6800
	.dw #0x0000
	.dw #0x0000
	.dw #0x7fff
	.dw #0x6800
	.dw #0x0000
	.dw #0x0000
	.dw #0x001a
_BlackSquare_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_BlackSquare_map:
	.db #0x00	; 0
_BlackSquare_map_attributes:
	.db #0x04	; 4
	.area _INITIALIZER
	.area _CABS (ABS)
