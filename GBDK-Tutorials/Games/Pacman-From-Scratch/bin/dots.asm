;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module dots
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dotsShown
	.globl _BigPelletPositions
	.globl _SetupDots
	.globl _HandleDotConsumption
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
_dotsShown::
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\dots.c:25: void SetupDots(){
;	---------------------------------
; Function SetupDots
; ---------------------------------
_SetupDots::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\dots.c:26: }
	ret
_BigPelletPositions:
	.dw #0x0001
	.dw #0x0003
	.dw #0x0013
	.dw #0x0003
	.dw #0x0001
	.dw #0x0014
	.dw #0x0013
	.dw #0x0014
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\dots.c:29: void HandleDotConsumption(){
;	---------------------------------
; Function HandleDotConsumption
; ---------------------------------
_HandleDotConsumption::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\dots.c:30: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__dotsShown:
	.db #0x00	; 0
	.area _CABS (ABS)
