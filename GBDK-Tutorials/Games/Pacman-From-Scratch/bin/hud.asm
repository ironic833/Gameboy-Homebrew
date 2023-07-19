;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module hud
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UpdateScore
	.globl _SetupHUD
	.globl _UpdateHUD
	.globl _ShowOrHideOneUpText
	.globl _DrawNumber
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:16: void UpdateScore(){
;	---------------------------------
; Function UpdateScore
; ---------------------------------
_UpdateScore::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:17: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:19: void SetupHUD(){
;	---------------------------------
; Function SetupHUD
; ---------------------------------
_SetupHUD::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:20: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:22: void UpdateHUD(){
;	---------------------------------
; Function UpdateHUD
; ---------------------------------
_UpdateHUD::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:23: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:25: void ShowOrHideOneUpText(uint8_t show){
;	---------------------------------
; Function ShowOrHideOneUpText
; ---------------------------------
_ShowOrHideOneUpText::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:26: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:28: void DrawNumber(uint8_t x,uint8_t y, uint16_t number,uint8_t digits,uint8_t palette){
;	---------------------------------
; Function DrawNumber
; ---------------------------------
_DrawNumber::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\hud.c:29: }
	pop	hl
	add	sp, #4
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
