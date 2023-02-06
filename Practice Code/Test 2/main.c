#include <gb/gb.h>
#include <stdio.h>
#include "Tiles/watert.c"

void main(){

    //loads from tile 0 and loads one tile after that from the water tile tiles array
    set_sprite_data(0, 1, waterTile);

    //sets sprite zero to equals the first tile in sprite memory
    set_sprite_tile(0, 0);

    // moves a sprite into a particular spot on map
    move_sprite(0, 88, 56);

    // Tells gameboy to show sprites on screen
    SHOW_SPRITES;
}

