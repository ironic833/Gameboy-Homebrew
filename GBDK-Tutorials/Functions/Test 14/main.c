#include <gb/gb.h>
#include "keyboardmap.c"
#include "keyboarddata.c"
#include "cursor.c"
#include "sprites.c"

struct Cursor cursor;
UBYTE keydown = 0;
const UINT8 mincursorx = 12;
const UINT8 mincursory = 80;
const UINT8 maxcursorx = 156;
const UINT8 maxcursory = 128;
UINT8 nameCharIndex = 0;
UINT8 playerName[18];
UBYTE playerHasName = 0;

// A more effeicnet and CPU friendly way of delaying the CPU
void performanceDelay(UINT8 numloops){
    UINT8 ii;
    for(ii = 0; ii < numloops; ii++){
        wait_vbl_done();
    }
}

void addToPlayerName(struct Cursor* cursor){
    UINT8 characterIndex = cursor->row * 10 + cursor->col + 1;

    if(nameCharIndex == 18) return;

    playerName[nameCharIndex] = characterIndex;
    nameCharIndex++;
}

void removeFromPlayerName(){
    if(nameCharIndex > 0){
        nameCharIndex--;
        playerName[nameCharIndex] = 0;
    }
}

void drawPlayerName (){
    set_bkg_tiles(1, 4, 18, 1, playerName);
}

void updatePlayerName(struct Cursor* cursor){
    if(cursor->col == 8 && cursor->row == 4){
        removeFromPlayerName();
        drawPlayerName();
    } else if(cursor->col == 9 && cursor->row == 4){
        playerHasName = 1;
    } else {
        addToPlayerName(cursor);
        drawPlayerName();
    }

}

UBYTE isWithinKeyboard(UINT8 x, UINT8 y) {
    if(x == 140 && y == 144 || x == 156 && y == 144 ){
        return 1;
    }

    return x >= mincursorx && x <= maxcursorx && y >= mincursory && y <= maxcursory;

}

void main(){

    set_sprite_data(0, 1, sprites);
    set_sprite_tile(0, 0);
    
    cursor.x = 12;
    cursor.y = 80;
    cursor.col = 0;
    cursor.row = 0;

    move_sprite(0, cursor.x, cursor.y);

    set_bkg_data(0, 45, keyboarddata);
    set_bkg_tiles(0, 0, 20, 18, keyboardmap);
    scroll_bkg(-4, 0);

    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;

    while(!playerHasName){

        if(keydown) {
            waitpadup();
            keydown = 0;
        }

        switch(joypad()){
            case J_UP:
                if(isWithinKeyboard(cursor.x, cursor.y - 16 )){
                    cursor.y -= 16;
                    cursor.row--;
                    scroll_sprite(0, 0, -16);
                    keydown = 1;  
                }
                break;
            case J_DOWN:
                if(isWithinKeyboard(cursor.x, cursor.y + 16)){
                    cursor.y += 16;
                    cursor.row++;
                    scroll_sprite(0, 0, 16);
                    keydown = 1;
                }
                break;
            case J_LEFT:
                if(isWithinKeyboard(cursor.x - 16, cursor.y)){
                    cursor.x -= 16;
                    cursor.col--;
                    scroll_sprite(0, -16, 0);
                    keydown = 1;
                }
                break;
            case J_RIGHT:
                if(isWithinKeyboard(cursor.x + 16, cursor.y)){
                    cursor.x += 16;
                    cursor.col++;
                    scroll_sprite(0, 16, 0);
                    keydown = 1;
                }
                break;
            case J_A:
                updatePlayerName(&cursor);
                keydown = 1;
                break;

        }

        performanceDelay(2);
    }


}
    
