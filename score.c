#include "myLib.h"
#include "game.h"
ANISPRITE scoreSprite;
void initScore(){
    scoreSprite.width = 8;
    scoreSprite.height = 8;
    scoreSprite.worldCol = 10;
    scoreSprite.worldRow = 0;
}
void drawScore(){
    drawScore1();
    drawScore2();
    drawScore3();
    
}

void drawScore1(){
    int temp = remaining_meatballs;
    shadowOAM[80].attr0 = (ROWMASK & (scoreSprite.worldRow )) | ATTR0_WIDE;
    shadowOAM[80].attr1 = (COLMASK & (scoreSprite.worldCol )) | ATTR1_TINY;
    shadowOAM[80].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 1) | ATTR2_PRIORITY(0);

    shadowOAM[90].attr0 = (ROWMASK & (scoreSprite.worldRow )) | ATTR0_SQUARE;
    shadowOAM[90].attr1 = (COLMASK & (scoreSprite.worldCol + 12 )) | ATTR1_TINY;
    shadowOAM[90].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(temp + 4, 0) | ATTR2_PRIORITY(0);
}

void drawScore2(){
    shadowOAM[82].attr0 = (ROWMASK & (scoreSprite.worldRow )) | ATTR0_WIDE;
    shadowOAM[82].attr1 = (COLMASK & (scoreSprite.worldCol + 50 )) | ATTR1_TINY;
    shadowOAM[82].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 1) | ATTR2_PRIORITY(0);
    int temp = meatballs;
    shadowOAM[91].attr0 = (ROWMASK & (scoreSprite.worldRow )) | ATTR0_SQUARE;
    shadowOAM[91].attr1 = (COLMASK & (scoreSprite.worldCol+62 )) | ATTR1_TINY;
    shadowOAM[91].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(temp + 4, 0) | ATTR2_PRIORITY(0);
}

void drawScore3(){
    shadowOAM[84].attr0 = (ROWMASK & (scoreSprite.worldRow )) | ATTR0_WIDE;
    shadowOAM[84].attr1 = (COLMASK & (scoreSprite.worldCol + 100 )) | ATTR1_TINY;
    shadowOAM[84].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 1) | ATTR2_PRIORITY(0);
    
    int temp = stolen_meatballs;
    shadowOAM[92].attr0 = (ROWMASK & scoreSprite.worldRow) | ATTR0_SQUARE;
    shadowOAM[92].attr1 = (COLMASK & scoreSprite.worldCol+122) | ATTR1_TINY;
    shadowOAM[92].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(temp + 4, 0) | ATTR2_PRIORITY(0);
}

