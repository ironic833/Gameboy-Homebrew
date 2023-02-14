#include <gb/gb.h>
#include <gbdk/font.h>
#include "wall.c"
#include "wallTiles.c"
#include "windowMap.c"

void main(){

    // Variable to hold the font
    font_t min_font;

    // Function to intialise the font library
    font_init();

    // loads in the font_min font library
    min_font = font_load(font_min); // loads in 36 tiles for the font into memory first

    // Setting the font
    font_set(min_font);

    // Load the first 7 tiles from the map bank wallTiles into background tile memory.
    // In this instance starting at 37 as we are filling the first 36 slots in memory with the font tiles
    set_bkg_data(37, 7, wallTiles);

    // from x position 0, y position 0 go across for 40 tiles down for 18 using the data defined in the map file
    set_bkg_tiles(0, 0, 40, 18, wallBasic);


    // set the window tiles using starting x, y coordinates followed by width and height
    set_win_tiles(0,0,5,1, windowMap);

    // Moves the window doen to make the background visible again
    move_win(7,120);

    // These turn on the display and render the background
    SHOW_BKG;
    SHOW_WIN;
    DISPLAY_ON;

    while(1){
        scroll_bkg(1,0);
        delay(100);
    }
}