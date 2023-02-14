#include <gb/gb.h>
#include <stdio.h>

void main(){

    // these registers must be in this specific order
    NR52_REG = 0x80; // is 1000 0000 in binary and turns on the sound
    NR50_REG = 0x77; // sets the volume for both left and right channel just set to max 0x77
    NR51_REG = 0xFF; // is 1111 1111 in binary, select which channels to use in this case selecting all of them. One bit for the L and one bit for the R of all four

    while(1){
        UBYTE joypad_state = joypad();

        if(joypad_state) {

            NR10_REG = 0x16;
            NR11_REG = 0x40;
            NR12_REG = 0x73;
            NR13_REG = 0x00;
            NR14_REG = 0xC3;

            delay(1000);
        }
    }
}