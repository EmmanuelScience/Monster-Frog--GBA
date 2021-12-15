#include "game.h"
#include "level1.h"
#include "myLib.h"
void initPlayer1(){
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
void initCollectibles1(){
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
            invisble[i].worldCol =  0;
            invisble[i].worldRow = 209;
        }
        else if(i == 1){
            invisble[i].worldCol =  40;
            invisble[i].worldRow = 88;
        }
        else{
            invisble[i].worldCol =  224;
            invisble[i].worldRow = 160;
        }
    }

    speed.active  = 1;
    speed.height = 8;
    speed.width  = 8;
    speed.worldCol =  248;
    speed.worldRow = 129;
    speed.hide = 0;
    speed.active = 1;
    speed.aniCounter = 0;
    speed.curFrame = 0;
    speed.numFrames = 3;
    speed.aniState = 0;

    portal.active  = 1;
    portal.height = 8;
    portal.width  = 8;
    portal.worldCol =  100;
    portal.worldRow = 129;
    portal.hide = 0;
    portal.active = 1;
    portal.aniCounter = 0;
    portal.curFrame = 0;
    portal.numFrames = 3;
    portal.aniState = 0;
}
void initMeatballs1(){
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
            meatBalls[i].worldCol =  120;
            meatBalls[i].worldRow = 217;
        }
        else if(i == 1){
            meatBalls[i].worldCol =  89;
            meatBalls[i].worldRow = 123;
        }
        else if (i == 2) {
            meatBalls[i].worldCol =  4;
            meatBalls[i].worldRow = 74;
        }
        else if (i == 3) {
            meatBalls[i].worldCol =  240;
            meatBalls[i].worldRow = 75;
        }
        else {
            meatBalls[i].worldCol =  120;
            meatBalls[i].worldRow = 17;
        }
    }
}
void initFrog1(){
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
void initObstacles1(){
    obstacles[0].height = 7;
    obstacles[0].width = 43;
    obstacles[0].worldCol = 19;
    obstacles[0].worldRow = 147;
    obstacles[0].active = 1;

    obstacles[1].height = 7;
    obstacles[1].width = 43;
    obstacles[1].worldCol = 0;
    obstacles[1].worldRow = 113;
    obstacles[1].active = 1;

    obstacles[2].height = 7;
    obstacles[2].width = 43;
    obstacles[2].worldCol = 158;
    obstacles[2].worldRow = 146;
    obstacles[2].active = 1;

    obstacles[3].height = 7;
    obstacles[3].width = 43;
    obstacles[3].worldCol = 109;
    obstacles[3].worldRow = 170;
    obstacles[3].active = 1;

    obstacles[4].height = 7;
    obstacles[4].width = 43;
    obstacles[4].worldCol = 84;
    obstacles[4].worldRow = 54;
    obstacles[4].active = 1;

    obstacles[5].height = 7;
    obstacles[5].width = 43;
    obstacles[5].worldCol = 134;
    obstacles[5].worldRow = 54;
    obstacles[5].active = 1;
    obstacles[6].active = 0;
    obstacles[7].active = 0;
    obstacles[8].active = 0;
    obstacles[9].active = 0;
    obstacles[10].active = 0;
    obstacles[11].active = 0;

    obstacles[12].active = 0;
}
