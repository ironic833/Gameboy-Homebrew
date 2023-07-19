#include <gb/gb.h>
#include <stdio.h>
#include "TestyTesterson.c"
#include "character.c"

struct character Player;
UBYTE spritesize = 8;

// A more effeicnet and CPU friendly way of delaying the CPU
void performanceDelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }
}

void moveGameCharacter(struct character* characterToMove, UINT8 x, UINT8 y){

    move_sprite(characterToMove->spritids[0], x, y);
    move_sprite(characterToMove->spritids[1], x, y + spritesize);

}

void setupPlayer() {

    Player.x = 10;
    Player.y = 100;
    Player.width = 8;
    Player.height = 16;

    set_sprite_tile(0, 0);
    Player.spritids[0] = 0;

    set_sprite_tile(1, 1);
    Player.spritids[1] = 1;

    moveGameCharacter(&Player, Player.x, Player.y);
}

void main(){

    set_sprite_data(0, 2, TestyTesterson);

    setupPlayer();
    
    DISPLAY_ON;

    //show sprites on screen
    SHOW_SPRITES;

    while(1){
        if(joypad() & J_LEFT){
            Player.x -= 2;
            moveGameCharacter(&Player, Player.x, Player.y);
        }

        if(joypad() & J_RIGHT){
            Player.x += 2;
            moveGameCharacter(&Player, Player.x, Player.y);
        }

        performanceDelay(5);

    }
    
}