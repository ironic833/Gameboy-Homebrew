;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module ReadyText
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ReadyText_map_attributes
	.globl _ReadyText_map
	.globl _ReadyText_tiles
	.globl _ReadyText_palettes
	.globl b___func_ReadyText
	.globl ___func_ReadyText
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\gen\default\graphics\ReadyText.c:7: BANKREF(ReadyText)
;	---------------------------------
; Function __func_ReadyText
; ---------------------------------
	b___func_ReadyText	= 0
___func_ReadyText::
	.local b___func_ReadyText 
	___bank_ReadyText = b___func_ReadyText 
	.globl ___bank_ReadyText 
	.area _CODE
_ReadyText_palettes:
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
_ReadyText_tiles:
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xb0	; 176
	.db #0xb0	; 176
	.db #0xb0	; 176
	.db #0xb0	; 176
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0xb1	; 177
	.db #0xb1	; 177
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xb1	; 177
	.db #0xb1	; 177
	.db #0xb1	; 177
	.db #0xb1	; 177
	.db #0xb1	; 177
	.db #0xb1	; 177
	.db #0xb3	; 179
	.db #0xb3	; 179
	.db #0xbe	; 190
	.db #0xbe	; 190
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0x86	; 134
	.db #0x86	; 134
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
_ReadyText_map:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
_ReadyText_map_attributes:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
