#include <gb/gb.h>
#include <stdio.h>
#include "sprites/JYSprite/JYSprite.c"
#include "sprites/Enemy/TestyTesterson.c"
#include "characterTypes/PlayerCharacter.c"
#include "characterTypes/BaddieCharacter.c"

struct PlayerCharacter Player;
struct BaddieCharacter Baddie;
UBYTE spritesize = 8;

// A more effeicnet and CPU friendly way of delaying the CPU
void performanceDelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }
}

UBYTE checkCollisions(struct PlayerCharacter* Player, struct BaddieCharacter* Baddie){
    return (Player->x >= Baddie->x && Player->x <= Baddie->x + Baddie->width) && (Player->y >= Baddie->y && Player->y <= Baddie->y + Baddie->height) || (Baddie->x >= Player->x && Baddie->x <= Player->x + Player->width) && (Baddie->y >= Player->y && Baddie->y <= Player->y + Player->height);
}

void moveGameCharacter(struct PlayerCharacter* characterToMove, UINT8 x, UINT8 y){

    move_sprite(characterToMove->spritids[0], x, y);
    move_sprite(characterToMove->spritids[1], x, y + spritesize);
    move_sprite(characterToMove->spritids[2], x + spritesize, y );
    move_sprite(characterToMove->spritids[3], x + spritesize , y + spritesize);

}

void moveBaddieCharacter(struct BaddieCharacter* characterToMove, UINT8 x, UINT8 y){

    move_sprite(characterToMove->spritids[0], x, y);
    move_sprite(characterToMove->spritids[1], x, y + spritesize);

}

void setupPlayer() {

    Player.x = 10;
    Player.y = 100;
    Player.width = 16;
    Player.height = 16;

    set_sprite_tile(0, 0);
    Player.spritids[0] = 0;

    set_sprite_tile(1, 1);
    Player.spritids[1] = 1;

    set_sprite_tile(2, 2);
    Player.spritids[2] = 2;

    set_sprite_tile(3, 3);
    Player.spritids[3] = 3;
    

    moveGameCharacter(&Player, Player.x, Player.y);
}

void setupBaddie() {

    Baddie.x = 30;
    Baddie.y = 0;
    Baddie.width = 8;
    Baddie.height = 16;

    set_sprite_tile(4, 12);
    Baddie.spritids[0] = 4;

    set_sprite_tile(5, 13);
    Baddie.spritids[1] = 5;
    
    moveBaddieCharacter(&Baddie, Baddie.x, Baddie.y);
}

void main(){

    set_sprite_data(0, 12, JYSprite);
    set_sprite_data(12, 2, TestyTesterson);
    setupPlayer();
    setupBaddie();
    
    DISPLAY_ON;

    //show sprites on screen
    SHOW_SPRITES;

    while(!checkCollisions(&Player, &Baddie)){
        if(joypad() & J_LEFT){
            Player.x -= 2;
            moveGameCharacter(&Player, Player.x, Player.y);
        }

        if(joypad() & J_RIGHT){
            Player.x += 2;
            moveGameCharacter(&Player, Player.x, Player.y);
        }

        Baddie.y += 5;

        if(Baddie.y >= 144){
            Baddie.y = 0;
            Baddie.x = Player.x;
        }

        moveBaddieCharacter(&Baddie, Baddie.x, Baddie.y);


        performanceDelay(5);

    }

    printf("\n \n \n \n \n \n \n === GAME OVER ===");
    
}