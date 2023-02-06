#include <gb/gb.h>
#include <stdio.h>
#include "TestyTesterson.c"
#include "tester.c"
#include "TestLevelScreen_data.c"
#include "TestLevelScreen_map.c"


void main(){

    //prints hello world
    printf("hello World");

    //specifies sprite size
    SPRITES_8x16;

    //tells gbdk to load from testytesterson sprite 0 to sprite 2
    set_sprite_data(0, 2, TestyTesterson);

    //sets the tile spot zero to equals whats in sprite memory 0
    set_sprite_tile(0, 0);

    //moves the given sprite to the x and y coordinates on the screen
    move_sprite(0, 88, 78);
    
    //show sprites on screen
    SHOW_SPRITES;

    //sets up the game loop

    while(1){

        switch(joypad()){
            case J_LEFT:
                //scrolls the sprite in sprite 0 horizontally -5 and 0 vertically
                scroll_sprite(0,-5,0);
            break;
            case J_RIGHT:
                //scrolls the sprite in sprite 0 horizontally 5 and 0 vertically
                scroll_sprite(0,5,0);
            break;
            case J_UP:
                //scrolls the sprite in sprite 0 horizontally 0 and -5 vertically
                scroll_sprite(0,0,-5);
            break;
            case J_DOWN:
                //scrolls the sprite in sprite 0 horizontally 0 and 5 vertically
                scroll_sprite(0,0,5);
            break;
            
        }

        //delays next cpu command by 1000 of a second
        delay(100);

    }

}