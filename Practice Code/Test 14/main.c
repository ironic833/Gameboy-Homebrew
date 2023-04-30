#include <gb/gb.h>
#include "keyboardmap.c"
#include "keyboarddata.c"
#include "cursor.c"
#include "sprites.c"

struct Cursor cursor;

// A more effeicnet and CPU friendly way of delaying the CPU
void performanceDelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }
}

void main(){

    set_sprite_data(0, 1, sprites);
    set_sprite_tile(0, 0);
    
    cursor.x = 12;
    cursor.y = 8;
    cursor.col = 0;
    cursor.row = 0;

    move_sprite(0, cursor.x, cursor.y);

    set_bkg_data(0, 45, keyboarddata);
    set_bkg_tiles(0, 0, 20, 18, keyboardmap);
    scroll_bkg(-4, 0);

    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;


}
    
