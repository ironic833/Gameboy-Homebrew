;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Character
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _numberOfDirectionsCharacterCanMoveIn
	.globl _directionsCharacterCanMoveIn
	.globl _GetDirectionsCharacterCanMoveIn
	.globl _CanCharacterMoveInThisDirection
	.globl _TryChangeDirection
	.globl _MoveForward
	.globl _DrawCharacter
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
_directionsCharacterCanMoveIn::
	.ds 4
_numberOfDirectionsCharacterCanMoveIn::
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:11: void GetDirectionsCharacterCanMoveIn(Character *character,uint8_t allowReverse){
;	---------------------------------
; Function GetDirectionsCharacterCanMoveIn
; ---------------------------------
_GetDirectionsCharacterCanMoveIn::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:12: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:14: uint8_t CanCharacterMoveInThisDirection(Character *character, uint8_t direction){
;	---------------------------------
; Function CanCharacterMoveInThisDirection
; ---------------------------------
_CanCharacterMoveInThisDirection::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:16: return 0;
	xor	a, a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:17: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:20: void TryChangeDirection(Character *character, uint8_t nextDirection){
;	---------------------------------
; Function TryChangeDirection
; ---------------------------------
_TryChangeDirection::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:21: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:23: uint8_t MoveForward(Character *character, uint8_t speed){
;	---------------------------------
; Function MoveForward
; ---------------------------------
_MoveForward::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:24: return 0;
	xor	a, a
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:25: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:27: void DrawCharacter(Character *character, metasprite_t const *metasprites, uint8_t baseSprite, uint8_t baseTile){
;	---------------------------------
; Function DrawCharacter
; ---------------------------------
_DrawCharacter::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\Character.c:28: }
	pop	hl
	pop	af
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
__xinit__directionsCharacterCanMoveIn:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__numberOfDirectionsCharacterCanMoveIn:
	.db #0x00	; 0
	.area _CABS (ABS)
