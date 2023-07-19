;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _BlinkLevelBlueAndWhite_Halting
	.globl _UpdateGlobalFrameCounters
	.globl _SetupGameplay
	.globl _CheckBackgroundTileIsWalkable
	.globl _StartGameplay
	.globl _SetupVRAM
	.globl _UpdateCameraPosition
	.globl _counter
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_counter::
	.ds 1
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:30: void UpdateCameraPosition(uint8_t dividor){
;	---------------------------------
; Function UpdateCameraPosition
; ---------------------------------
_UpdateCameraPosition::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:31: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:32: void SetupVRAM(){
;	---------------------------------
; Function SetupVRAM
; ---------------------------------
_SetupVRAM::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:33: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:35: void StartGameplay(){
;	---------------------------------
; Function StartGameplay
; ---------------------------------
_StartGameplay::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:36: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:39: uint8_t CheckBackgroundTileIsWalkable(int8_t nextColumn, int8_t nextRow){
;	---------------------------------
; Function CheckBackgroundTileIsWalkable
; ---------------------------------
_CheckBackgroundTileIsWalkable::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:40: return 0;
	xor	a, a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:41: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:44: void SetupGameplay(){
;	---------------------------------
; Function SetupGameplay
; ---------------------------------
_SetupGameplay::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:46: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:48: void UpdateGlobalFrameCounters(){
;	---------------------------------
; Function UpdateGlobalFrameCounters
; ---------------------------------
_UpdateGlobalFrameCounters::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:49: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:51: void BlinkLevelBlueAndWhite_Halting(){
;	---------------------------------
; Function BlinkLevelBlueAndWhite_Halting
; ---------------------------------
_BlinkLevelBlueAndWhite_Halting::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:52: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:54: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\main.c:55: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
