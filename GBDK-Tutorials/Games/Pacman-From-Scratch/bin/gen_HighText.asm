;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module HighText
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HighText_map_attributes
	.globl _HighText_map
	.globl _HighText_tiles
	.globl _HighText_palettes
	.globl b___func_HighText
	.globl ___func_HighText
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\gen\default\graphics\HighText.c:7: BANKREF(HighText)
;	---------------------------------
; Function __func_HighText
; ---------------------------------
	b___func_HighText	= 0
___func_HighText::
	.local b___func_HighText 
	___bank_HighText = b___func_HighText 
	.globl ___bank_HighText 
	.area _CODE
_HighText_palettes:
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
_HighText_tiles:
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0x60	; 96
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0x66	; 102	'f'
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0x00	; 0
_HighText_map:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
_HighText_map_attributes:
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.area _INITIALIZER
	.area _CABS (ABS)
