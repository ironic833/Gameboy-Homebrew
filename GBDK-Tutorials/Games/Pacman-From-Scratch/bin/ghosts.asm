;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module ghosts
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UpdateScatterOrChaseMode
	.globl _scatterOrChaseMode
	.globl _ghostsResetting
	.globl _ghostsReady
	.globl _frigtenedOffset
	.globl _frigtenedTwoFrameAnimator
	.globl _frightenedTimer
	.globl _scatterChaseCounter
	.globl _DirectionalPriorities
	.globl _GhostsScatterTargets
	.globl _GhostsStartPositions
	.globl _GetGhostNextDirection
	.globl _GetGhostTargetTile
	.globl _SetupGhosts
	.globl _UpdateSingleGhost
	.globl _DrawGhost
	.globl _UpdateAllGhosts
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_scatterChaseCounter::
	.ds 2
_frightenedTimer::
	.ds 2
_frigtenedTwoFrameAnimator::
	.ds 1
_frigtenedOffset::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_ghostsReady::
	.ds 1
_ghostsResetting::
	.ds 1
_scatterOrChaseMode::
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
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:32: void GetGhostNextDirection(uint8_t ghostIndex){
;	---------------------------------
; Function GetGhostNextDirection
; ---------------------------------
_GetGhostNextDirection::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:34: }
	ret
_GhostsStartPositions:
	.dw #0x0009
	.dw #0x000c
	.dw #0x000a
	.dw #0x000a
	.dw #0x000a
	.dw #0x000c
	.dw #0x000b
	.dw #0x000c
_GhostsScatterTargets:
	.dw #0x0014
	.dw #0x001b
	.dw #0x0012
	.dw #0xfffc
	.dw #0x0002
	.dw #0xfffc
	.dw #0x0000
	.dw #0x001b
_DirectionalPriorities:
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:36: void GetGhostTargetTile(uint8_t ghostIndex){
;	---------------------------------
; Function GetGhostTargetTile
; ---------------------------------
_GetGhostTargetTile::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:37: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:39: void SetupGhosts(){
;	---------------------------------
; Function SetupGhosts
; ---------------------------------
_SetupGhosts::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:40: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:42: void UpdateSingleGhost(uint8_t i){
;	---------------------------------
; Function UpdateSingleGhost
; ---------------------------------
_UpdateSingleGhost::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:43: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:44: void DrawGhost(uint8_t i){
;	---------------------------------
; Function DrawGhost
; ---------------------------------
_DrawGhost::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:45: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:48: void UpdateScatterOrChaseMode(){
;	---------------------------------
; Function UpdateScatterOrChaseMode
; ---------------------------------
_UpdateScatterOrChaseMode::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:49: }
	ret
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:51: void UpdateAllGhosts(){
;	---------------------------------
; Function UpdateAllGhosts
; ---------------------------------
_UpdateAllGhosts::
;D:\Github\Gameboy-Homebrew\GBDK-Tutorials\Games\Pacman-From-Scratch\source\default\Gameplay\ghosts.c:52: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__ghostsReady:
	.db #0x00	; 0
__xinit__ghostsResetting:
	.db #0x00	; 0
__xinit__scatterOrChaseMode:
	.db #0x00	; 0
	.area _CABS (ABS)
