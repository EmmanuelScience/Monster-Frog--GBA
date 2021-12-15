#include "myLib.h"
#include "game.h"
#include "collisionmap1.h"
#include "collisionmap2.h"
#include "collisionmap3.h"
#include "score.h"
#include <stdlib.h>
#include "level1.h"
#include "level2.h"
#include "level3.h"
#include "collectSong.h"
#include "eatSong.h"



// Variables
int hOff, thOff;
int vOff, tvOff;
int game_paused;
int num_portal;
int frog_dir;


OBJ_ATTR shadowOAM[128];
ANISPRITE sandwich;
ANISPRITE frog;
COLLECTIBLE meatBalls[5];
COLLECTIBLE invisble[3];
COLLECTIBLE speed;
COLLECTIBLE portal;
OBSTACLE obstacles[13];


unsigned char* collisionMap;
enum {UP, RIGHT, LEFT,  DOWN, MOVING, NOTMOVING};
int frame_count;
int level = 1;
int animate;
int aux_level = 1;
int meatballs, active_invisible, invisible_time, remaining_meatballs, stolen_meatballs, eating;

// Initialize the game
void initGame() {
    //Initializes the player and game attributes depending on the level
    if (level == 1){
        collisionMap = collisionmap1Bitmap;
        initPlayer1();
        initCollectibles1();
        initMeatballs1();
        initFrog1();
        initObstacles1();
    }
    else if (level == 2 ){
        collisionMap = collisionmap2Bitmap;
        initPlayer2();
        initCollectibles2();
        initMeatballs2();
        initFrog2();
        initObstacles2();
    }
    else if(level == 3){
        collisionMap = collisionmap3Bitmap;
        initPlayer3();
        initCollectibles3();
        initMeatballs3();
        initFrog3();
        initObstacles3();
    }
	// Place screen on map
    if (aux_level > 3){
        frog.cdel = 2;
        frog.rdel = 2;
    }
    vOff = 96;
    hOff = 9;
    animate = 1;
    frame_count =0;
    remaining_meatballs = 5;
    stolen_meatballs =  0;
    meatballs = 0;
    num_portal = 0;

}

// Updates the game each frame
void updateGame() {
    //update temporary hoff and voff to align pause and win screen properly
    if(!game_paused){
        thOff = hOff;
        tvOff = vOff;
    }
    frame_count++;
	updatePlayer();
    updateFrog();
    updateMeatballs();
    updateCollectibles();
    updatePower();
    updateObstacles();
}

// Draws the game each frame
void drawGame() {
    //Notice that the hOff and vOff of both bgs are different
    //to enable parallax
    drawPlayer();
    drawCollectibles();
    drawFrog();
    drawMeatballs();
    drawScore();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    
}


// Handle every-frame actions of the player
void updatePlayer() {
    ///checks for collision and updates the position of the player dependeing on the input

    if(BUTTON_HELD(BUTTON_UP)) {
        if ( collisionMap[OFFSET(sandwich.worldCol, sandwich.worldRow - sandwich.rdel, MAPWIDTH)] 
                && collisionMap[OFFSET(sandwich.worldCol + sandwich.width - 1, sandwich.worldRow - sandwich.rdel, MAPWIDTH)] &&
                     sandwich.worldRow >= 0) {
                sandwich.worldRow -=sandwich.rdel;

            if ( vOff >= 1 && (sandwich.worldRow - vOff) <= (SCREENHEIGHT/2)){
                vOff -= 1;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
       if (collisionMap[OFFSET(sandwich.worldCol, sandwich.worldRow + sandwich.rdel + sandwich.height-1, MAPWIDTH)] 
                && collisionMap[OFFSET(sandwich.worldCol + sandwich.width - 1, sandwich.worldRow  + sandwich.height + sandwich.rdel - 1, MAPWIDTH)] 
                && (sandwich.worldRow + sandwich.height ) <= 256  ) {
                sandwich.worldRow +=sandwich.rdel;

            if (vOff <= (256 - 160) &&  (sandwich.worldRow - vOff) >= (SCREENHEIGHT/2)) {
                
                vOff += 1;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
         if ( collisionMap[OFFSET(sandwich.worldCol - sandwich.cdel  , sandwich.worldRow , MAPWIDTH)] 
                && collisionMap[OFFSET(sandwich.worldCol - sandwich.cdel  , sandwich.worldRow  + sandwich.height - 1, MAPWIDTH)] 
                && sandwich.worldCol >= 0 ) {
                sandwich.worldCol -=sandwich.cdel;

            if ( hOff >= 1 && (sandwich.worldCol - hOff) <= (SCREENWIDTH/2)) {
                
                hOff -= 1;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (collisionMap[OFFSET(sandwich.worldCol + sandwich.width -1 , sandwich.worldRow , MAPWIDTH)] 
                && collisionMap[OFFSET(sandwich.worldCol + sandwich.width -1 , sandwich.worldRow + sandwich.height -1 , MAPWIDTH)] 
                && (sandwich.worldCol + sandwich.height ) <= 256) {
                sandwich.worldCol +=sandwich.cdel;

            if (hOff <= (256 - 240) &&  (sandwich.worldCol - hOff) >= (SCREENWIDTH/2)) {
                
                hOff += 1;
            }
        }
    }
    //activate cheat, when a and b are pressed at the ssame time the player is invisible to the frog for some time
    if(BUTTON_PRESSED(BUTTON_A) && BUTTON_PRESSED(BUTTON_B)){
        active_invisible = 1;
    }

    //iF B IS PRESSED and the potal has been collected
    if(BUTTON_PRESSED(BUTTON_B) && num_portal ){
        num_portal = 0;
        int min  = 100000;
        int new_min;
        int count = 0;
        //looks for the closest meatball to the player
        for (int i = 0; i < 5; i++){
            if (meatBalls[i].active){
                if ((new_min = distance(meatBalls[i].worldCol, meatBalls[i].worldRow, sandwich.worldCol, sandwich.worldRow)) <= min){
                    min = new_min;
                    count = i;
                }
            }
        }
        //sets the vOff and hOff after the player has teleported
        if(sandwich.worldRow > meatBalls[count].worldRow){
            vOff -= sandwich.worldRow - meatBalls[count].worldRow;
            if(vOff < 1){
                vOff = 1;
            }
        }
        if(sandwich.worldRow <= meatBalls[count].worldRow){
            vOff += meatBalls[count].worldRow - sandwich.worldRow ;
            if (vOff >= (256 - 160)){
                vOff = 256 - 160;
            }
        }
        if(sandwich.worldCol > meatBalls[count].worldCol){
            hOff -= sandwich.worldCol - meatBalls[count].worldCol;
            if(hOff < 1){
                hOff = 1;
            }
        }
        if(sandwich.worldCol <= meatBalls[count].worldCol){
            hOff += meatBalls[count].worldCol - sandwich.worldCol ;
            if (hOff >= (256 - 240)){
                hOff = 256 - 240;
            }
        }

        //sets the player position to the meatball's
        sandwich.worldRow = meatBalls[count].worldRow;
        sandwich.worldCol = meatBalls[count].worldCol;

    }
    //updates the player animation
    animatePlayer();



    
}

void animatePlayer() {

    // Set previous state to current state
    sandwich.prevAniState = sandwich.aniState;
    sandwich.aniState = NOTMOVING;

    // Change the animation frame every 20 frames of gameplay
    if(sandwich.aniCounter % 10 == 0) {
        sandwich.curFrame = (sandwich.curFrame + 1) % sandwich.numFrames;
    }

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_UP))
        sandwich.aniState = UP;
    if(BUTTON_HELD(BUTTON_DOWN))
        sandwich.aniState = DOWN;
    if(BUTTON_HELD(BUTTON_LEFT))
        sandwich.aniState = LEFT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        sandwich.aniState = RIGHT;

    // If the pikachu aniState is idle, frame is pikachu standing
    if (sandwich.aniState == NOTMOVING) {
        sandwich.curFrame = 0;
        sandwich.aniCounter = 0;
        sandwich.aniState = sandwich.prevAniState;
    } else {
        sandwich.aniCounter++;
    }
}

//returns the manhattan distance bewteen two points
int distance(xa, ya, xb, yb){
    return abs(xa -xb) + abs(ya - yb);
}

// Draw the player
void drawPlayer() {
    if (sandwich.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & sandwich.worldRow - vOff) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & sandwich.worldCol - hOff) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(sandwich.aniState , sandwich.curFrame )| ATTR2_PRIORITY(0);
    }
}


//update the collectibles upo collision with the player
void updateCollectibles(){
    for (int i = 0; i < 3; i++){
        if (invisble[i].active){

            if(collision(invisble[i].worldCol, invisble[i].worldRow, invisble[i].width, invisble[i].height,sandwich.worldCol, sandwich.worldRow, sandwich.width, sandwich.height)){
                invisble[i].active = 0;
                invisble[i].hide = 1;
                active_invisible  = 1;
                //stopSound();
                playSoundB(collectSong_data, collectSong_length, 0);
    
            }
        }
    }

    if(speed.active){
        //Colliding with the speed collectible causes the player to increase its speed
        if(collision(speed.worldCol, speed.worldRow, speed.width, speed.height, sandwich.worldCol, sandwich.worldRow, sandwich.width, sandwich.height)){
            speed.active =0;
            speed.hide = 1;
            sandwich.cdel += 1;
            sandwich.rdel += 1;
            playSoundB(collectSong_data, collectSong_length, 0);
        }
    }

    if(portal.active){
        if(collision(portal.worldCol, portal.worldRow, portal.width, portal.height, sandwich.worldCol, sandwich.worldRow, sandwich.width, sandwich.height)){
            portal.active =0;
            portal.hide = 1;
            num_portal = 1;
            playSoundB(collectSong_data, collectSong_length, 0);
            
        }
    }

    //animates the collectibles
    for(int i = 0; i < 3; i++){
            if(invisble[i].aniCounter % 15 == 0) {
                invisble[i].curFrame = (invisble[i].curFrame + 1) % invisble[i].numFrames;
            } 
        }
    for(int i = 0; i < 3; i++){
            invisble[i].aniCounter++;
    }

    
    //-------------------------------------
    if(speed.aniCounter % 15 == 0) {
        speed.curFrame = (speed.curFrame + 1) % speed.numFrames;
    }
    speed.aniCounter++;

    //----------------------------------------------
    if(portal.aniCounter % 15 == 0) {
        portal.curFrame = (portal.curFrame + 1) % portal.numFrames;
    }
    portal.aniCounter++;



}

//draws the collectibles
void drawCollectibles(){
    for(int i = 0; i < 3; i++){
        if (invisble[i].hide) {
            shadowOAM[i+1].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+1].attr0 = (ROWMASK & invisble[i].worldRow - vOff) | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = (COLMASK & invisble[i].worldCol - hOff) | ATTR1_TINY;
            shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(invisble[i].aniState + 2 , 3 + invisble[i].curFrame );
        }
    }
    if (speed.hide) {
            shadowOAM[5].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[5].attr0 = (ROWMASK & speed.worldRow - vOff) | ATTR0_SQUARE;
        shadowOAM[5].attr1 = (COLMASK & speed.worldCol - hOff) | ATTR1_TINY;
        shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(speed.aniState + 1 , 3 + speed.curFrame );
    }

    if (portal.hide) {
            shadowOAM[15].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[15].attr0 = (ROWMASK & portal.worldRow - vOff) | ATTR0_SQUARE;
        shadowOAM[15].attr1 = (COLMASK & portal.worldCol - hOff) | ATTR1_TINY;
        shadowOAM[15].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(portal.aniState , 3 + portal.curFrame );
    }


}

//initializes the position of the meatballs


//update the meatbals varibles upon collision with the player
void updateMeatballs(){
    for (int i = 0; i < 5; i++){
        if (meatBalls[i].active){
            if(collision(meatBalls[i].worldCol, meatBalls[i].worldRow, meatBalls[i].width, meatBalls[i].height,sandwich.worldCol, sandwich.worldRow, sandwich.width, sandwich.height)){
                meatBalls[i].active = 0;
                meatBalls[i].hide = 1;
                meatballs++;
                remaining_meatballs--;
                playSoundB(eatSong_data, eatSong_length, 0);
            }
        }
    }
    //animates meatballs
    //--------------------------------------
    for(int i = 0; i < 5; i++){
            if(meatBalls[i].aniCounter % 15 == 0) {
                meatBalls[i].curFrame = (meatBalls[i].curFrame + 1) % meatBalls[i].numFrames;
            } 
        }
    for(int i = 0; i < 3; i++){
            meatBalls[i].aniCounter++;
    }

}



//draws meatball
void drawMeatballs(){
    for(int i = 0; i < 5; i++){
        if (meatBalls[i].hide) {
            shadowOAM[i+6].attr0 |= ATTR0_HIDE;
        } else {
            shadowOAM[i+6].attr0 = (ROWMASK & meatBalls[i].worldRow - vOff) | ATTR0_SQUARE;
            shadowOAM[i+6].attr1 = (COLMASK & meatBalls[i].worldCol - hOff) | ATTR1_TINY;
            shadowOAM[i+6].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(meatBalls[i].aniState + 3 , 3 + meatBalls[i].curFrame );
        }
    }
}
//initializes the frog
void initFrog(){
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

//updates the frog variable base to the position of the player
//the frog can jump obstacles 
void updateFrog(){
    if (frog.active  && active_invisible ==  0){
        int deltay = abs(sandwich.worldRow - frog.worldRow);
        int deltax = abs(sandwich.worldCol - frog.worldCol);

         if(sandwich.worldRow <= frog.worldRow){
            if(frame_count %2 == 0)frog.worldRow -=frog.rdel;
                if(deltax >= deltay && (sandwich.worldCol <= frog.worldCol) ){
                    frog_dir = RIGHT; 
                }
                else if(deltax >= deltay && (sandwich.worldCol > frog.worldCol) ){
                    frog_dir = LEFT; 
                }
                else{
                    frog_dir = UP;
                }
                
        
         }    
        
        //down------------------------------
        if(sandwich.worldRow > frog.worldRow){
            if(frame_count %2 == 0)frog.worldRow +=frog.rdel;
            if(deltax >= deltay && (sandwich.worldCol <= frog.worldCol) ){
                    frog_dir = RIGHT; 
                }
                else if(deltax >= deltay && (sandwich.worldCol > frog.worldCol) ){
                    frog_dir = LEFT; 
                }
                else{
                    frog_dir = DOWN;
                }
                
        }    
        

        //left------------
        if(sandwich.worldCol <= frog.worldCol){
            if(frame_count %2 == 0)frog.worldCol -=frog.cdel;
            if(deltax < deltay && (sandwich.worldRow <= frog.worldRow) ){
                    frog_dir = UP; 
            }
             else if(deltax < deltay && (sandwich.worldRow > frog.worldRow) ){
                    frog_dir = DOWN; 
            }
            else{
                frog_dir = RIGHT;
            }
              
        }    
        

        //right--------------------------------
        if(sandwich.worldCol > frog.worldCol){
            if(frame_count %2 == 0)frog.worldCol +=frog.cdel;
            if(deltax < deltay && (sandwich.worldRow <= frog.worldRow) ){
                    frog_dir = UP; 
            }
             else if(deltax < deltay && (sandwich.worldRow > frog.worldRow) ){
                    frog_dir = DOWN; 
            }
            else{
                frog_dir = LEFT;
            }
            
        
            
        }    
            

    }
    if (meatballs >= 1 && eating == 0){
        if (collision(frog.worldCol, frog.worldRow, frog.width, frog.height, sandwich.worldCol, sandwich.worldRow,sandwich.width, sandwich.height)){
            stolen_meatballs += 1;
            meatballs--;
            active_invisible = 1;
        }
            
    }
    if (collision(frog.worldCol, frog.worldRow, frog.width, frog.height, sandwich.worldCol, sandwich.worldRow,sandwich.width, sandwich.height)){
       animate = 0;
    }
    else{
        if(eating == 0 || active_invisible== 0)
        animate = 1;
    }


    if(animate)
    animateFrog();
}

//animate meatball
void animateFrog() {

    // Set previous state to current state
    frog.prevAniState = frog.aniState;
    frog.aniState = NOTMOVING;

    // Change the animation frame every 20 frames of gameplay
    if(frog.aniCounter % 10 == 0) {
        frog.curFrame = (frog.curFrame + 1) % frog.numFrames;
    }

    // Control movement and change animation state
    if(frog_dir == UP)
        frog.aniState = UP;
    if(frog_dir == DOWN)
        frog.aniState = DOWN;
    if(frog_dir == LEFT)
        frog.aniState = LEFT;
    if(frog_dir == RIGHT)
        frog.aniState = RIGHT;

    // If the pikachu aniState is idle, frame is pikachu standing
    if (frog.aniState == NOTMOVING) {
        frog.curFrame = 0;
        frog.aniCounter = 0;
        frog.aniState = sandwich.prevAniState;
    } else {
        frog.aniCounter++;
    }
}

//draw frogs
void drawFrog(){
    if (frog.hide) {
            shadowOAM[12].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[12].attr0 = (ROWMASK & frog.worldRow - vOff) | ATTR0_SQUARE;
        shadowOAM[12].attr1 = (COLMASK & frog.worldCol - hOff) | ATTR1_TINY;
        shadowOAM[12].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(frog.aniState , frog.curFrame  + 6   );
    }
}

void updateObstacles(){
    for (int i = 0; i < 13; i++){
        if(obstacles[i].active){
            if(collision(obstacles[i].worldCol, obstacles[i].worldRow, obstacles[i].width, obstacles[i].height,sandwich.worldCol, sandwich.worldRow, sandwich.width, sandwich.height)){
                if((obstacles[i].worldRow ) <= sandwich.worldRow ){
                    sandwich.worldRow += 1;
                    if(BUTTON_PRESSED(BUTTON_A)){
                        sandwich.worldRow -= 10;
                    }
                }
                else if((obstacles[i].worldRow ) >= sandwich.worldRow ){
                    sandwich.worldRow -= 1;
                    if(BUTTON_PRESSED(BUTTON_A)){
                        sandwich.worldRow += 10;
                    }
                }
            
            }
        }
        
        
    }
}

//update the invisiblity of the player
void updatePower(){
    if (active_invisible){
        invisible_time ++;
        eating = 1;
        animate = 0;
    }
    if (invisible_time > 500){
        active_invisible = 0;
        invisible_time = 0;
        eating = 0;
        animate = 1;
    }
}