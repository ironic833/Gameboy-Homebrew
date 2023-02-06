#include <gb/gb.h>
#include "wall.c"
#include "wallTiles.c"

void main(){

    // Load t6he first 7 tiles from the map bank wallTiles into background tile memory
    set_bkg_data(0, 7, wallTiles);

    // from x position 0, y position 0 go across for 40 tiles down for 18 using the data defined in the map file
    set_bkg_tiles(0, 0, 40, 18, wallBasic);

    // These turn on the display and render the background
    SHOW_BKG;
    DISPLAY_ON;

    while(1){
        scroll_bkg(1,0);
        delay(100);
    }
}