;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module common
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _reverseDirections
	.globl _Directions
	.globl _ghosts
	.globl _enableDebug
	.globl _dotsRemaining
	.globl _highScore
	.globl _score
	.globl _threeFrameAnimator
	.globl _twoFrameAnimator
	.globl _blank
	.globl _pacman
	.globl _TileSideWalkability
	.globl _level
	.globl _joypadPrevious
	.globl _joypadCurrent
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_joypadCurrent::
	.ds 1
_joypadPrevious::
	.ds 1
_level::
	.ds 1
_TileSideWalkability::
	.ds 2268
_pacman::
	.ds 12
_blank::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_twoFrameAnimator::
	.ds 1
_threeFrameAnimator::
	.ds 1
_score::
	.ds 2
_highScore::
	.ds 2
_dotsRemaining::
	.ds 2
_enableDebug::
	.ds 1
_ghosts::
	.ds 48
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
	.area _CODE
_Directions:
	.dw #0x0000
	.dw #0xffff
	.dw #0x0001
	.dw #0x0000
	.dw #0x0000
	.dw #0x0001
	.dw #0xffff
	.dw #0x0000
_reverseDirections:
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.area _INITIALIZER
__xinit__twoFrameAnimator:
	.db #0x00	; 0
__xinit__threeFrameAnimator:
	.db #0x00	; 0
__xinit__score:
	.dw #0x0000
__xinit__highScore:
	.dw #0x0000
__xinit__dotsRemaining:
	.dw #0x0000
__xinit__enableDebug:
	.db #0x00	; 0
__xinit__ghosts:
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.area _CABS (ABS)
