;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module OneUpText
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _OneUpText_map_attributes
	.globl _OneUpText_map
	.globl _OneUpText_tiles
	.globl _OneUpText_palettes
	.globl b___func_OneUpText
	.globl ___func_OneUpText
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\gen\default\graphics\OneUpText.c:7: BANKREF(OneUpText)
;	---------------------------------
; Function __func_OneUpText
; ---------------------------------
	b___func_OneUpText	= 0
___func_OneUpText::
	.local b___func_OneUpText 
	___bank_OneUpText = b___func_OneUpText 
	.globl ___bank_OneUpText 
	.area _CODE
_OneUpText_palettes:
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
_OneUpText_tiles:
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0x71	; 113	'q'
	.db #0xff	; 255
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x8d	; 141
	.db #0xff	; 255
	.db #0x8d	; 141
	.db #0xff	; 255
	.db #0x8d	; 141
	.db #0xff	; 255
	.db #0x8d	; 141
	.db #0xff	; 255
	.db #0x8d	; 141
	.db #0xff	; 255
	.db #0x8d	; 141
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0x8c	; 140
	.db #0xff	; 255
	.db #0x8c	; 140
	.db #0xff	; 255
	.db #0x8c	; 140
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
_OneUpText_map:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
_OneUpText_map_attributes:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.area _INITIALIZER
	.area _CABS (ABS)
