#include <gb/gb.h>
#include <stdio.h>
#include "TestyTesterson.c"

INT8 playerlocation[2]; //Stores the x and y values of player location
BYTE jumping;
UINT8 gravity = -2;
UINT8 currentSpeedY;
UINT8 floorYPosition = 100;


// A more effeicnet and CPU friendly way of delaying the CPU
void performanceDelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }
}

INT8 wouldHitSurface(UINT8 projectedYPositon){
    if(projectedYPositon >= floorYPosition){
        return floorYPosition;
    }
    return -1;
}

void jump(UINT8 spriteId, UINT8 spriteLocation[2]) {

    INT8 possibleSurfaceY;

    // checks if we are currently jumping
    if(jumping == 0){
        jumping = 1;
        currentSpeedY = 10;
    }

    // begins adding a decrease to the current height position
    currentSpeedY = currentSpeedY + gravity;

    spriteLocation[1] = spriteLocation[1] - currentSpeedY;

    possibleSurfaceY = wouldHitSurface(spriteLocation[1]);

    if(possibleSurfaceY > -1){
        jumping = 0;
        move_sprite(spriteId, spriteLocation[0], possibleSurfaceY);
    } else{
        move_sprite(spriteId, spriteLocation[0], spriteLocation[1]);
    }

}


void main(){

    //tells gbdk to load from testytesterson sprite 0 to sprite 2
    set_sprite_data(0, 2, TestyTesterson);

    //sets the tile spot zero to equals whats in sprite memory 0
    set_sprite_tile(0, 0);

    playerlocation[0] = 10;
    playerlocation[1] = 100;
    jumping = 0;

    //moves the given sprite to the x and y coordinates on the screen
    move_sprite(0, playerlocation[0], playerlocation[1]);
    
    DISPLAY_ON;

    //show sprites on screen
    SHOW_SPRITES;

    while(1){

        if(joypad() & J_LEFT){
            playerlocation[0] = playerlocation[0] - 2;
            //moves the given sprite to the x and y coordinates on the screen
             move_sprite(0, playerlocation[0], playerlocation[1]);
        }
        if(joypad() & J_RIGHT){
            playerlocation[0] = playerlocation[0] + 2;
            //moves the given sprite to the x and y coordinates on the screen
            move_sprite(0, playerlocation[0], playerlocation[1]);
        }
        if((joypad() & J_A) || jumping == 1){
            jump(0, playerlocation);
        }
        

        performanceDelay(5);

    }

}