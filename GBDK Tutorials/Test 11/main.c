#include <gb/gb.h>
#include <stdio.h>
#include "tiles/Backgound.c"
#include "tiles/BackgropundTiles.c"
#include "tiles/PlacyHolder.c"

UINT8 playerLocation[2];
const char blankMap[1] = {0x03};
UBYTE debug, haskey, gameRunning;

// A more effeicnet and CPU friendly way of delaying the CPU
void performanceDelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }
}

UBYTE canPlayerMove(UINT8 newPlayerx, UINT8 newPlayery) {

    UINT16 indexTLx, indexTLy, tileIndexTL;
    UBYTE result;

    indexTLx = (newPlayerx -8) / 8;
    indexTLy = (newPlayery -16) / 8;

    tileIndexTL = 20 * indexTLy + indexTLx;

    if(debug){
        printf("%u %u\n",(UINT16)(newPlayerx),(UINT16)(newPlayery));
        printf("%u %u %u\n",(UINT16)indexTLx,(UINT16)indexTLy,(UINT16)tileIndexTL);
    }

    result = BackgroundTest[tileIndexTL] == blankMap[0];

    if(tileIndexTL==321){
        // collect key
        set_bkg_tiles(1, 16, 1, 1, blankMap);
        haskey = 1;
        result = 1;
    } else if(tileIndexTL == 263 && haskey == 1){
        // collect key
        set_bkg_tiles(3, 13, 1, 1, blankMap);
        result = 1;
    } else if(tileIndexTL==340){
        // finish game
        gameRunning = 0;
        HIDE_SPRITES;
        printf("\n \n \n \n \n \n \n \n \n       You Win!");
        result = 1;
    }

    return result;

}

void animateSprite(UINT8 spriteIndex, INT8 moveX, INT8 moveY) {
    while(moveX != 0) {
        scroll_sprite(spriteIndex, moveX < 0 ? -1 : 1, 0);
        moveX += moveX < 0 ? 1 : -1;
        wait_vbl_done();
    }

    while(moveY != 0) {
        scroll_sprite(spriteIndex, 0, moveY < 0 ? -1 : 1);
        moveY += moveY < 0 ? 1 : -1;
        wait_vbl_done();
    }
}

void main(){

    set_bkg_data(0, 3, BackgropundTiles);
    set_bkg_tiles(0, 0, 20, 18, BackgroundTest);

    set_sprite_data(0, 1, PlacyHolder);
    set_sprite_tile(0, 0);

    playerLocation[0] = 16;
    playerLocation[1] = 24;

    move_sprite(0, playerLocation[0], playerLocation[1]);

    gameRunning = 1;
    
    //show sprites on screen
    SHOW_SPRITES;
    SHOW_BKG;
    DISPLAY_ON;

    // Movement problem because the wall and character sprite are the same value?
    
    while(gameRunning){
        if(joypad() & J_A){
            debug = 1;
        }
        if(joypad() & J_LEFT){
            if(canPlayerMove(playerLocation[0]-8, playerLocation[1])){
                playerLocation[0] -= 8;
                animateSprite(0,-8,0);
            }
        }        
        else if(joypad() & J_RIGHT) {
            if(canPlayerMove(playerLocation[0]+8, playerLocation[1])){
                playerLocation[0] += 8;
                animateSprite(0,8,0);
            }
        } 
        else if(joypad() & J_UP) {
            if(canPlayerMove(playerLocation[0], playerLocation[1] - 8)){
                playerLocation[1] -= 8;
                animateSprite(0,0,-8);
            }
        } 
        else if(joypad() & J_DOWN) {
            if(canPlayerMove(playerLocation[0], playerLocation[1] + 8)){
                playerLocation[1] += 8;
                animateSprite(0,0,8);
            }
        }

        performanceDelay(6);

    }
    
}