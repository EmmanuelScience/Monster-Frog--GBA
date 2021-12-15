//read readme file
#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "bg1.h"
#include "bg2.h"
#include "bg3.h"
#include "collisionmap1.h"
#include "start_screen.h"
#include "pause_screen.h"
#include "win_screen.h"
#include "lose_screen.h"
#include "fast_frog.h"
#include "instr.h"
#include "game_win.h"
#include "sps.h"
#include "bg1p.h"
#include "bg2p.h"
#include "bg3p.h"
#include "bg1v1.h"
#include "bg1v2.h"
#include "bg1v3.h"
#include "sound.h"
#include "gameSong.h"
#include "startSong.h"
#include "loseSong.h"
#include "gameWinSong.h"
#include "fastFrogSong.h"
#include "levelPassedSong.h"

#include "gameStartSong.h"
#include "pauseSong.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void goToInstr();
void instr();
// States
enum
{
    START,
    GAME,
    PAUSE,
    WIN,
    LOSE,
    INSTR
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM
//OBJ_ATTR shadowOAM[128];
int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        case INSTR:
            instr();
            break;
        }
               
    }
}

// Sets up GBA
void initialize() {
    
    // Set up the display
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE |BG0_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;

    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    setupSounds();
    setupInterrupts();

    
    
    goToStart();
}

void goToStart(){
    // Make sure changes do not appear onscreen
    //

    // Set up the game background
    
    stopSound();
    playSoundA(startSong_data, startSong_length, 1);
    DMANow(3, start_screenPal, PALETTE, start_screenPalLen/2);
    DMANow(3, start_screenTiles, &CHARBLOCK[0], start_screenTilesLen / 2);
    DMANow(3, start_screenMap, &SCREENBLOCK[31], start_screenMapLen / 2);

    DMANow(3, start_screenTiles, &CHARBLOCK[2], start_screenTilesLen / 2);
    DMANow(3, start_screenMap, &SCREENBLOCK[28], start_screenMapLen / 2);


    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    state = START;
}

void start() {
    waitForVBlank();
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        initGame();
        DMANow(3, spsTiles, &CHARBLOCK[4], spsTilesLen / 2);
        DMANow(3, spsPal, SPRITEPALETTE, spsPalLen / 2);
        
        state = GAME;
        goToGame();
    }
    else if(BUTTON_PRESSED(BUTTON_START)){
        state = INSTR;
        goToInstr();
    }
}

// Sets up the game state
void goToGame() {
    stopSound();
    playSoundB(gameStartSong_data, gameStartSong_length, 0);
    
    if (aux_level > 3){
        playSoundA(fastFrogSong_data, fastFrogSong_length, 1);
    }
    else{
        playSoundA(gameSong_data, gameSong_length, 1);
    }
    game_paused = 0;
    vOff = tvOff;
    hOff = thOff;
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;

    if (level == 1){
        DMANow(3, bg1v1Pal, PALETTE, 256);
        DMANow(3, bg1v1Tiles, &CHARBLOCK[0], bg1v1TilesLen / 2);
        DMANow(3, bg1v1Map, &SCREENBLOCK[31], bg1v1MapLen / 2);

        DMANow(3, bg1pTiles, &CHARBLOCK[2], bg1pTilesLen / 2);
        DMANow(3, bg1pMap, &SCREENBLOCK[28], bg1pMapLen / 2);

    }

    else if(level == 2 ){
        DMANow(3, bg1v2Pal, PALETTE, 256);
        DMANow(3, bg1v2Tiles, &CHARBLOCK[0], bg1v2TilesLen / 2);
        DMANow(3, bg1v2Map, &SCREENBLOCK[31], bg1v2MapLen / 2);

        DMANow(3, bg2pTiles, &CHARBLOCK[2], bg2pTilesLen / 2);
        DMANow(3, bg2pMap, &SCREENBLOCK[28], bg2pMapLen / 2);

    }
    else if(level == 3 ){
        DMANow(3, bg1v3Pal, PALETTE, 256);
        DMANow(3, bg1v3Tiles, &CHARBLOCK[0], bg1v3TilesLen / 2);
        DMANow(3, bg1v3Map, &SCREENBLOCK[31], bg1v3MapLen / 2);

        DMANow(3, bg3pTiles, &CHARBLOCK[2], bg3pTilesLen / 2);
        DMANow(3, bg3pMap, &SCREENBLOCK[28], bg3pMapLen / 2);




    }
    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    drawGame();
    
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        state = PAUSE;
        goToPause();
    }
    else if( remaining_meatballs == 0 && stolen_meatballs < meatballs){
        goToWin();
        state = WIN;
        level++;
        aux_level++;
        if (level > 3){
            level = 1;
        }
        
    }
    else if(remaining_meatballs == 0 && stolen_meatballs > meatballs){
        state = LOSE;
        goToLose();
    }
}

void win(){
    if(BUTTON_PRESSED(BUTTON_SELECT)){
         if (aux_level == 4){
            aux_level = 1;
            level = 1;
        } 
        state = START;
        goToStart();
    }
    if(BUTTON_PRESSED(BUTTON_START)){
        state = START;
        goToStart();
    }
    

}

void goToWin(){
    
    game_paused = 1;
    vOff = 0;
    hOff = 0;
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;

    if(aux_level == 3){
        DMANow(3, fast_frogPal, PALETTE, fast_frogPalLen/2);
        DMANow(3, fast_frogTiles, &CHARBLOCK[0], fast_frogTilesLen / 2);
        DMANow(3, fast_frogMap, &SCREENBLOCK[31], fast_frogMapLen / 2);

        DMANow(3, fast_frogTiles, &CHARBLOCK[2], fast_frogTilesLen / 2);
        DMANow(3, fast_frogMap, &SCREENBLOCK[28], fast_frogMapLen / 2);

        stopSound();
        playSoundA(levelPassedSong_data, levelPassedSong_length, 1);


    }
    else if(aux_level == 6){
        DMANow(3, game_winPal, PALETTE, game_winPalLen/2);
        DMANow(3, game_winTiles, &CHARBLOCK[0], game_winTilesLen / 2);
        DMANow(3, game_winMap, &SCREENBLOCK[31], game_winMapLen / 2);

        DMANow(3, game_winTiles, &CHARBLOCK[2], game_winTilesLen / 2);
        DMANow(3, game_winMap, &SCREENBLOCK[28], game_winMapLen / 2);
        stopSound();
        playSoundA(gameWinSong_data, gameWinSong_length, 1);

        level = 0;
        aux_level = 0;
    }
    else{
        DMANow(3, win_screenPal, PALETTE, win_screenPalLen/2);
        DMANow(3, win_screenTiles, &CHARBLOCK[0], win_screenTilesLen / 2);
        DMANow(3, win_screenMap, &SCREENBLOCK[31], win_screenMapLen / 2);

        DMANow(3, win_screenTiles, &CHARBLOCK[2], win_screenTilesLen / 2);
        DMANow(3, win_screenMap, &SCREENBLOCK[28], win_screenMapLen / 2);
        stopSound();
        playSoundA(levelPassedSong_data, levelPassedSong_length, 1);

    }

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);


    
}

void lose(){
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        state = START;
        goToStart();
    }
    
}

void goToLose(){
    
    game_paused = 1;
    vOff = 0;
    hOff = 0;
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    stopSound();
    playSoundA(loseSong_data, loseSong_length, 1);
    DMANow(3, lose_screenPal, PALETTE, lose_screenPalLen/2);
    DMANow(3, lose_screenTiles, &CHARBLOCK[0], lose_screenTilesLen / 2);
    DMANow(3, lose_screenMap, &SCREENBLOCK[31], lose_screenMapLen / 2);

    DMANow(3, lose_screenTiles, &CHARBLOCK[2], lose_screenTilesLen / 2);
    DMANow(3, lose_screenMap, &SCREENBLOCK[28], lose_screenMapLen / 2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);




}

void pause(){
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        state = GAME;
        goToGame();
    }
    else if(BUTTON_PRESSED(BUTTON_START)){
        state = START;
        goToStart();
    }
}

void goToPause(){
    stopSound();
    //playSoundB(gameStartSong_data, gameStartSong_length, 0);
    playSoundA(pauseSong_data, pauseSong_length, 1);
    game_paused = 1;
    vOff = 0;
    hOff = 0;
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    
    DMANow(3, pause_screenPal, PALETTE, pause_screenPalLen/2);
    DMANow(3, pause_screenTiles, &CHARBLOCK[0], pause_screenTilesLen / 2);
    DMANow(3, pause_screenMap, &SCREENBLOCK[31], pause_screenMapLen / 2);

    DMANow(3, pause_screenTiles, &CHARBLOCK[2], pause_screenTilesLen / 2);
    DMANow(3, pause_screenMap, &SCREENBLOCK[28], pause_screenMapLen / 2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void goToInstr(){
    DMANow(3, instrPal, PALETTE, instrPalLen/2);
    DMANow(3, instrTiles, &CHARBLOCK[0], instrTilesLen / 2);
    DMANow(3, instrMap, &SCREENBLOCK[31], instrMapLen / 2);

    DMANow(3, instrTiles, &CHARBLOCK[2], instrTilesLen / 2);
    DMANow(3, instrMap, &SCREENBLOCK[28], instrMapLen / 2);

}

void instr(){
    if(BUTTON_PRESSED(BUTTON_DOWN)){
        
        REG_BG1VOFF = 95;
        REG_BG0VOFF = 95;
        
    }
    if(BUTTON_PRESSED(BUTTON_UP)){
        
        REG_BG1VOFF = 0;
        REG_BG0VOFF = 0;
        
    }

    if(BUTTON_PRESSED(BUTTON_SELECT)){
        initGame();
        DMANow(3, spsTiles, &CHARBLOCK[4], spsTilesLen / 2);
        DMANow(3, spsPal, SPRITEPALETTE, spsPalLen / 2);
        
        state = GAME;
        goToGame();
    }
    if(BUTTON_PRESSED(BUTTON_START)){
        state = START;
        goToStart();
    }
}