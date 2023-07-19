;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module pacman
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetupPacman
	.globl _UpdatePacman
	.globl _DrawPacman
	.globl _PacmanDeathAnimation_Halting
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:17: void SetupPacman(){
;	---------------------------------
; Function SetupPacman
; ---------------------------------
_SetupPacman::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:18: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:21: void UpdatePacman(){
;	---------------------------------
; Function UpdatePacman
; ---------------------------------
_UpdatePacman::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:23: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:25: void DrawPacman(){
;	---------------------------------
; Function DrawPacman
; ---------------------------------
_DrawPacman::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:26: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:29: void PacmanDeathAnimation_Halting(){
;	---------------------------------
; Function PacmanDeathAnimation_Halting
; ---------------------------------
_PacmanDeathAnimation_Halting::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\pacman.c:30: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
