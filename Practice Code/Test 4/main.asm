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
	.globl _joypad
	.globl _delay
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
;main.c:5: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:8: NR52_REG = 0x80; // is 1000 0000 in binary and turns on the sound 
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;main.c:9: NR50_REG = 0x77; // sets the volume on both the left and right channel to max
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;main.c:10: NR51_REG = 0xFF; // is 1111 1111 in binary and this sets which channels we want to use in this case all are on 1 as we wish to use them all
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;main.c:12: while(1){
00104$:
;main.c:14: UBYTE joypad_state =joypad();
	call	_joypad
;main.c:16: if(joypad_state){
	or	a, a
	jr	Z, 00104$
;main.c:24: NR10_REG = 0x16; 
	ld	a, #0x16
	ldh	(_NR10_REG + 0), a
;main.c:31: NR11_REG = 0x40;
	ld	a, #0x40
	ldh	(_NR11_REG + 0), a
;main.c:40: NR12_REG = 0x73;  
	ld	a, #0x73
	ldh	(_NR12_REG + 0), a
;main.c:45: NR13_REG = 0x00;   
	xor	a, a
	ldh	(_NR13_REG + 0), a
;main.c:54: NR14_REG = 0xC3;	    
	ld	a, #0xc3
	ldh	(_NR14_REG + 0), a
;main.c:57: delay(1000);
	ld	de, #0x03e8
	call	_delay
;main.c:62: }
	jr	00104$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
