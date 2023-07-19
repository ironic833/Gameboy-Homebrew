;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module GhostsScared
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GhostsScared_metasprites
	.globl _GhostsScared_metasprite3
	.globl _GhostsScared_metasprite2
	.globl _GhostsScared_metasprite1
	.globl _GhostsScared_metasprite0
	.globl _GhostsScared_tiles
	.globl _GhostsScared_palettes
	.globl b___func_GhostsScared
	.globl ___func_GhostsScared
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\gen\default\graphics\GhostsScared.c:7: BANKREF(GhostsScared)
;	---------------------------------
; Function __func_GhostsScared
; ---------------------------------
	b___func_GhostsScared	= 0
___func_GhostsScared::
	.local b___func_GhostsScared 
	___bank_GhostsScared = b___func_GhostsScared 
	.globl ___bank_GhostsScared 
	.area _CODE
_GhostsScared_palettes:
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
_GhostsScared_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x19	; 25
	.db #0x7f	; 127
	.db #0x26	; 38
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x60	; 96
	.db #0xfc	; 252
	.db #0x60	; 96
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x98	; 152
	.db #0xfe	; 254
	.db #0x64	; 100	'd'
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x76	; 118	'v'
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x19	; 25
	.db #0x7f	; 127
	.db #0x26	; 38
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7b	; 123
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x60	; 96
	.db #0xfc	; 252
	.db #0x60	; 96
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x98	; 152
	.db #0xfe	; 254
	.db #0x64	; 100	'd'
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xde	; 222
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x39	; 57	'9'
	.db #0x3f	; 63
	.db #0x39	; 57	'9'
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x66	; 102	'f'
	.db #0x7f	; 127
	.db #0x59	; 89	'Y'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x6e	; 110	'n'
	.db #0x6e	; 110	'n'
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x9c	; 156
	.db #0xfc	; 252
	.db #0x9c	; 156
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x66	; 102	'f'
	.db #0xfe	; 254
	.db #0x9a	; 154
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x76	; 118	'v'
	.db #0x76	; 118	'v'
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x39	; 57	'9'
	.db #0x3f	; 63
	.db #0x39	; 57	'9'
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x66	; 102	'f'
	.db #0x7f	; 127
	.db #0x59	; 89	'Y'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7b	; 123
	.db #0x7b	; 123
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x9c	; 156
	.db #0xfc	; 252
	.db #0x9c	; 156
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x66	; 102	'f'
	.db #0xfe	; 254
	.db #0x9a	; 154
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xde	; 222
	.db #0xde	; 222
	.db #0x8c	; 140
	.db #0x8c	; 140
	.db #0x00	; 0
	.db #0x00	; 0
_GhostsScared_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_GhostsScared_metasprite1:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_GhostsScared_metasprite2:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_GhostsScared_metasprite3:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_GhostsScared_metasprites:
	.dw _GhostsScared_metasprite0
	.dw _GhostsScared_metasprite1
	.dw _GhostsScared_metasprite2
	.dw _GhostsScared_metasprite3
	.area _INITIALIZER
	.area _CABS (ABS)
