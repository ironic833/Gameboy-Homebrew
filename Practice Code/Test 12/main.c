#include <gb/gb.h>
#include <stdio.h>
#include "image/bitcoinGB_data.c"
#include "image/bitcoinGB_map.c"

void main(){

    set_bkg_data(0, 114, bitcoinGB_data);
    set_bkg_tiles(0, 0, 20, 18, bitcoinGB_map);

    SHOW_BKG;
    DISPLAY_ON;
    
    waitpad(J_START);
        
    printf("Start of my game");

}
    
