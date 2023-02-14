#include <gb/gb.h>
#include <stdio.h>

void main(){

    // https://github.com/Zal0/GBSoundDemo

    // these registers must be in this specific order
    NR52_REG = 0x80; // is 1000 0000 in binary and turns on the sound
    NR50_REG = 0x77; // sets the volume for both left and right channel just set to max 0x77
    NR51_REG = 0xFF; // is 1111 1111 in binary, select which channels to use in this case selecting all of them. One bit for the L and one bit for the R of all four

    while(1){
        UBYTE joypad_state = joypad();

        if(joypad_state) {

            NR41_REG = 0x1F;
            NR42_REG = 0xF1;
            NR43_REG = 0x30;
            NR44_REG = 0xC0;

            delay(1000);
        }
    }
}