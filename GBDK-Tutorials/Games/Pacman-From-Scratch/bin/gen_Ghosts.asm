;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Ghosts
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Ghosts_metasprites
	.globl _Ghosts_metasprite31
	.globl _Ghosts_metasprite30
	.globl _Ghosts_metasprite29
	.globl _Ghosts_metasprite28
	.globl _Ghosts_metasprite27
	.globl _Ghosts_metasprite26
	.globl _Ghosts_metasprite25
	.globl _Ghosts_metasprite24
	.globl _Ghosts_metasprite23
	.globl _Ghosts_metasprite22
	.globl _Ghosts_metasprite21
	.globl _Ghosts_metasprite20
	.globl _Ghosts_metasprite19
	.globl _Ghosts_metasprite18
	.globl _Ghosts_metasprite17
	.globl _Ghosts_metasprite16
	.globl _Ghosts_metasprite15
	.globl _Ghosts_metasprite14
	.globl _Ghosts_metasprite13
	.globl _Ghosts_metasprite12
	.globl _Ghosts_metasprite11
	.globl _Ghosts_metasprite10
	.globl _Ghosts_metasprite9
	.globl _Ghosts_metasprite8
	.globl _Ghosts_metasprite7
	.globl _Ghosts_metasprite6
	.globl _Ghosts_metasprite5
	.globl _Ghosts_metasprite4
	.globl _Ghosts_metasprite3
	.globl _Ghosts_metasprite2
	.globl _Ghosts_metasprite1
	.globl _Ghosts_metasprite0
	.globl _Ghosts_tiles
	.globl _Ghosts_palettes
	.globl b___func_Ghosts
	.globl ___func_Ghosts
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\gen\default\graphics\Ghosts.c:7: BANKREF(Ghosts)
;	---------------------------------
; Function __func_Ghosts
; ---------------------------------
	b___func_Ghosts	= 0
___func_Ghosts::
	.local b___func_Ghosts 
	___bank_Ghosts = b___func_Ghosts 
	.globl ___bank_Ghosts 
	.area _CODE
_Ghosts_palettes:
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
_Ghosts_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x13	; 19
	.db #0x1e	; 30
	.db #0x3f	; 63
	.db #0x1e	; 30
	.db #0x3f	; 63
	.db #0x1e	; 30
	.db #0x7f	; 127
	.db #0x0c	; 12
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xfe	; 254
	.db #0x30	; 48	'0'
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x13	; 19
	.db #0x1e	; 30
	.db #0x3f	; 63
	.db #0x1e	; 30
	.db #0x3f	; 63
	.db #0x1e	; 30
	.db #0x7f	; 127
	.db #0x0c	; 12
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xfe	; 254
	.db #0x30	; 48	'0'
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
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
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x7c	; 124
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x06	; 6
	.db #0x7f	; 127
	.db #0x00	; 0
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
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xf2	; 242
	.db #0x3c	; 60
	.db #0xfe	; 254
	.db #0x18	; 24
	.db #0xfe	; 254
	.db #0x00	; 0
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
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x7c	; 124
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x06	; 6
	.db #0x7f	; 127
	.db #0x00	; 0
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
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xf2	; 242
	.db #0x3c	; 60
	.db #0xfe	; 254
	.db #0x18	; 24
	.db #0xfe	; 254
	.db #0x00	; 0
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
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0c	; 12
	.db #0x3f	; 63
	.db #0x1e	; 30
	.db #0x7f	; 127
	.db #0x1e	; 30
	.db #0x73	; 115	's'
	.db #0x1e	; 30
	.db #0x73	; 115	's'
	.db #0x0c	; 12
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x23	; 35
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
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x30	; 48	'0'
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xfe	; 254
	.db #0x78	; 120	'x'
	.db #0xce	; 206
	.db #0x78	; 120	'x'
	.db #0xce	; 206
	.db #0x30	; 48	'0'
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0xc4	; 196
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
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0c	; 12
	.db #0x3f	; 63
	.db #0x1e	; 30
	.db #0x7f	; 127
	.db #0x1e	; 30
	.db #0x73	; 115	's'
	.db #0x1e	; 30
	.db #0x73	; 115	's'
	.db #0x0c	; 12
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
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x30	; 48	'0'
	.db #0xfc	; 252
	.db #0x78	; 120	'x'
	.db #0xfe	; 254
	.db #0x78	; 120	'x'
	.db #0xce	; 206
	.db #0x78	; 120	'x'
	.db #0xce	; 206
	.db #0x30	; 48	'0'
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
	.db #0x18	; 24
	.db #0x3f	; 63
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x4f	; 79	'O'
	.db #0x3c	; 60
	.db #0x7f	; 127
	.db #0x18	; 24
	.db #0x7f	; 127
	.db #0x00	; 0
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
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0x3e	; 62
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0x60	; 96
	.db #0xfe	; 254
	.db #0x00	; 0
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
	.db #0x18	; 24
	.db #0x3f	; 63
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x4f	; 79	'O'
	.db #0x3c	; 60
	.db #0x7f	; 127
	.db #0x18	; 24
	.db #0x7f	; 127
	.db #0x00	; 0
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
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0x3e	; 62
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0x60	; 96
	.db #0xfe	; 254
	.db #0x00	; 0
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
_Ghosts_metasprite0:
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
_Ghosts_metasprite1:
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
_Ghosts_metasprite2:
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
_Ghosts_metasprite3:
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
_Ghosts_metasprite4:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite5:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite6:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite7:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite8:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite9:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite10:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite11:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite12:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite13:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x14	; 20
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite14:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite15:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite16:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite17:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite18:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite19:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite20:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite21:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x14	; 20
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite22:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x18	; 24
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite23:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1c	; 28
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1e	; 30
	.db #0x03	; 3
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite24:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite25:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite26:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite27:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite28:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite29:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x14	; 20
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite30:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprite31:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1c	; 28
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1e	; 30
	.db #0x04	; 4
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_Ghosts_metasprites:
	.dw _Ghosts_metasprite0
	.dw _Ghosts_metasprite1
	.dw _Ghosts_metasprite2
	.dw _Ghosts_metasprite3
	.dw _Ghosts_metasprite4
	.dw _Ghosts_metasprite5
	.dw _Ghosts_metasprite6
	.dw _Ghosts_metasprite7
	.dw _Ghosts_metasprite8
	.dw _Ghosts_metasprite9
	.dw _Ghosts_metasprite10
	.dw _Ghosts_metasprite11
	.dw _Ghosts_metasprite12
	.dw _Ghosts_metasprite13
	.dw _Ghosts_metasprite14
	.dw _Ghosts_metasprite15
	.dw _Ghosts_metasprite16
	.dw _Ghosts_metasprite17
	.dw _Ghosts_metasprite18
	.dw _Ghosts_metasprite19
	.dw _Ghosts_metasprite20
	.dw _Ghosts_metasprite21
	.dw _Ghosts_metasprite22
	.dw _Ghosts_metasprite23
	.dw _Ghosts_metasprite24
	.dw _Ghosts_metasprite25
	.dw _Ghosts_metasprite26
	.dw _Ghosts_metasprite27
	.dw _Ghosts_metasprite28
	.dw _Ghosts_metasprite29
	.dw _Ghosts_metasprite30
	.dw _Ghosts_metasprite31
	.area _INITIALIZER
	.area _CABS (ABS)
