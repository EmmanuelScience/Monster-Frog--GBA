#include "game.h"
#include "level2.h"
#include "myLib.h"
void initPlayer2(){
    sandwich.width = 8;
    sandwich.height = 8;
    sandwich.rdel = 1;
    sandwich.cdel = 1;

    
    sandwich.worldRow = 120;
    sandwich.worldCol = SCREENWIDTH / 2 - sandwich.height / 2 + hOff;
    sandwich.aniCounter = 0;
    sandwich.curFrame = 0;
    sandwich.numFrames = 3;
    sandwich.aniState = 0;
}

void initCollectibles2(){
    for (int i =  0; i < 3; i++){
        invisble[i].active  = 1;
        invisble[i].height = 8;
        invisble[i].width  = 8;
        invisble[i].active = 1;
        invisble[i].hide = 0;
        invisble[i].aniCounter = 0;
        invisble[i].curFrame = 0;
        invisble[i].numFrames = 3;
        invisble[i].aniState = 0;
        if (i == 0){
            invisble[i].worldCol =  9;
            invisble[i].worldRow = 162;
        }
        else if(i == 1){
            invisble[i].worldCol =  227;
            invisble[i].worldRow = 176;
        }
        else{
            invisble[i].worldCol =  129;
            invisble[i].worldRow = 72;
        }
    }

    speed.active  = 1;
    speed.height = 8;
    speed.width  = 8;
    speed.worldCol =  5;
    speed.worldRow = 118;
    speed.hide = 0;
    speed.active = 1;
    speed.aniCounter = 0;
    speed.curFrame = 0;
    speed.numFrames = 3;
    speed.aniState = 0;

    portal.active  = 1;
    portal.height = 8;
    portal.width  = 8;
    portal.worldCol =  228;
    portal.worldRow = 121;
    portal.hide = 0;
    portal.active = 1;
    portal.aniCounter = 0;
    portal.curFrame = 0;
    portal.numFrames = 2;
    portal.aniState = 0;
}
void initMeatballs2(){
    for (int i =  0; i < 5; i++){
        meatBalls[i].active  = 1;
        meatBalls[i].height = 8;
        meatBalls[i].width  = 8;
        meatBalls[i].hide  = 0;
        meatBalls[i].aniCounter = 0;
        meatBalls[i].curFrame = 0;
        meatBalls[i].numFrames = 3;
        meatBalls[i].aniState = 0;
        if (i == 0){
            meatBalls[i].worldCol =  46;
            meatBalls[i].worldRow = 140;
        }
        else if(i == 1){
            meatBalls[i].worldCol =  193;
            meatBalls[i].worldRow = 143;
        }
        else if (i == 2) {
            meatBalls[i].worldCol =  37;
            meatBalls[i].worldRow = 58;
        }
        else if (i == 3) {
            meatBalls[i].worldCol =  214;
            meatBalls[i].worldRow = 56;
        }
        else {
            meatBalls[i].worldCol =  120;
            meatBalls[i].worldRow = 236;
        }
    }
}
void initFrog2(){
    frog.width = 8;
    frog.height = 8;
    frog.rdel = 1;
    frog.cdel = 1;
    frog.active = 1;

    // Place in the middle of the screen in the world location chosen earlier
    frog.worldRow = 248 ;
    frog.worldCol = 0;
    frog.aniCounter = 0;
    frog.curFrame = 0;
    frog.numFrames = 3;
    frog.aniState = 0;
}
void initObstacles2(){
    obstacles[0].height = 7;
    obstacles[0].width = 43;
    obstacles[0].worldCol = 82;
    obstacles[0].worldRow = 54;
    obstacles[0].active = 1;

    obstacles[1].height = 7;
    obstacles[1].width = 43;
    obstacles[1].worldCol = 134;
    obstacles[1].worldRow = 54;
    obstacles[1].active = 1;

    obstacles[2].height = 7;
    obstacles[2].width = 43;
    obstacles[2].worldCol = 108;
    obstacles[2].worldRow = 88;
    obstacles[2].active = 1;

    obstacles[3].height = 7;
    obstacles[3].width = 43;
    obstacles[3].worldCol = 109;
    obstacles[3].worldRow = 135;
    obstacles[3].active = 1;
    obstacles[4].active = 0;
    obstacles[5].active = 0;
    obstacles[6].active = 0;
    obstacles[7].active = 0;
    obstacles[8].active = 0;
    obstacles[9].active = 0;
    obstacles[10].active = 0;
    obstacles[11].active = 0;

    obstacles[12].active = 0;
}
