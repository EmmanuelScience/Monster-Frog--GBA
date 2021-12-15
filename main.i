# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"

# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int active;
    int dir;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 287 "myLib.h"
typedef void (*ihp)(void);
# 307 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "main.c" 2
# 1 "game.h" 1


typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int hide;
    int active;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
} COLLECTIBLE;

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int active;
} OBSTACLE;







extern int hOff, thOff;
extern int vOff, tvOff;
extern int game_paused, level, aux_level;
extern OBJ_ATTR shadowOAM[128];
extern COLLECTIBLE invisble[3], meatBalls[5], speed, portal;
extern OBSTACLE obstacles[13];
extern ANISPRITE sandwich, frog;
extern int remaining_meatballs, stolen_meatballs, meatballs;


void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
int distance(int, int, int, int);
void updateFrog();
void updateMeatballs();
void updateCollectibles();
# 4 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 5 "main.c" 2
# 1 "bg1.h" 1
# 22 "bg1.h"
extern const unsigned short bg1Tiles[1968];


extern const unsigned short bg1Map[1024];


extern const unsigned short bg1Pal[256];
# 6 "main.c" 2
# 1 "bg2.h" 1
# 22 "bg2.h"
extern const unsigned short bg2Tiles[2416];


extern const unsigned short bg2Map[1024];


extern const unsigned short bg2Pal[256];
# 7 "main.c" 2
# 1 "bg3.h" 1
# 22 "bg3.h"
extern const unsigned short bg3Tiles[1712];


extern const unsigned short bg3Map[1024];


extern const unsigned short bg3Pal[256];
# 8 "main.c" 2
# 1 "collisionmap1.h" 1
# 21 "collisionmap1.h"
extern const unsigned short collisionmap1Bitmap[32768];


extern const unsigned short collisionmap1Pal[256];
# 9 "main.c" 2
# 1 "start_screen.h" 1
# 22 "start_screen.h"
extern const unsigned short start_screenTiles[5056];


extern const unsigned short start_screenMap[1024];


extern const unsigned short start_screenPal[256];
# 10 "main.c" 2
# 1 "pause_screen.h" 1
# 22 "pause_screen.h"
extern const unsigned short pause_screenTiles[5584];


extern const unsigned short pause_screenMap[1024];


extern const unsigned short pause_screenPal[256];
# 11 "main.c" 2
# 1 "win_screen.h" 1
# 22 "win_screen.h"
extern const unsigned short win_screenTiles[6912];


extern const unsigned short win_screenMap[1024];


extern const unsigned short win_screenPal[256];
# 12 "main.c" 2
# 1 "lose_screen.h" 1
# 22 "lose_screen.h"
extern const unsigned short lose_screenTiles[2848];


extern const unsigned short lose_screenMap[1024];


extern const unsigned short lose_screenPal[256];
# 13 "main.c" 2
# 1 "fast_frog.h" 1
# 22 "fast_frog.h"
extern const unsigned short fast_frogTiles[4192];


extern const unsigned short fast_frogMap[1024];


extern const unsigned short fast_frogPal[256];
# 14 "main.c" 2
# 1 "instr.h" 1
# 22 "instr.h"
extern const unsigned short instrTiles[11696];


extern const unsigned short instrMap[1024];


extern const unsigned short instrPal[256];
# 15 "main.c" 2
# 1 "game_win.h" 1
# 22 "game_win.h"
extern const unsigned short game_winTiles[6640];


extern const unsigned short game_winMap[1024];


extern const unsigned short game_winPal[256];
# 16 "main.c" 2
# 1 "sps.h" 1
# 21 "sps.h"
extern const unsigned short spsTiles[16384];


extern const unsigned short spsPal[256];
# 17 "main.c" 2
# 1 "bg1p.h" 1
# 22 "bg1p.h"
extern const unsigned short bg1pTiles[1952];


extern const unsigned short bg1pMap[1024];


extern const unsigned short bg1pPal[256];
# 18 "main.c" 2
# 1 "bg2p.h" 1
# 22 "bg2p.h"
extern const unsigned short bg2pTiles[2400];


extern const unsigned short bg2pMap[1024];


extern const unsigned short bg2pPal[256];
# 19 "main.c" 2
# 1 "bg3p.h" 1
# 22 "bg3p.h"
extern const unsigned short bg3pTiles[1696];


extern const unsigned short bg3pMap[1024];


extern const unsigned short bg3pPal[256];
# 20 "main.c" 2
# 1 "bg1v1.h" 1
# 22 "bg1v1.h"
extern const unsigned short bg1v1Tiles[7312];


extern const unsigned short bg1v1Map[1024];


extern const unsigned short bg1v1Pal[256];
# 21 "main.c" 2
# 1 "bg1v2.h" 1
# 22 "bg1v2.h"
extern const unsigned short bg1v2Tiles[7312];


extern const unsigned short bg1v2Map[1024];


extern const unsigned short bg1v2Pal[256];
# 22 "main.c" 2
# 1 "bg1v3.h" 1
# 22 "bg1v3.h"
extern const unsigned short bg1v3Tiles[10544];


extern const unsigned short bg1v3Map[1024];


extern const unsigned short bg1v3Pal[256];
# 23 "main.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 24 "main.c" 2
# 1 "gameSong.h" 1


extern const unsigned int gameSong_sampleRate;
extern const unsigned int gameSong_length;
extern const signed char gameSong_data[];
# 25 "main.c" 2
# 1 "startSong.h" 1


extern const unsigned int startSong_sampleRate;
extern const unsigned int startSong_length;
extern const signed char startSong_data[];
# 26 "main.c" 2
# 1 "loseSong.h" 1


extern const unsigned int loseSong_sampleRate;
extern const unsigned int loseSong_length;
extern const signed char loseSong_data[];
# 27 "main.c" 2
# 1 "gameWinSong.h" 1


extern const unsigned int gameWinSong_sampleRate;
extern const unsigned int gameWinSong_length;
extern const signed char gameWinSong_data[];
# 28 "main.c" 2
# 1 "fastFrogSong.h" 1


extern const unsigned int fastFrogSong_sampleRate;
extern const unsigned int fastFrogSong_length;
extern const signed char fastFrogSong_data[];
# 29 "main.c" 2
# 1 "levelPassedSong.h" 1


extern const unsigned int levelPassedSong_sampleRate;
extern const unsigned int levelPassedSong_length;
extern const signed char levelPassedSong_data[];
# 30 "main.c" 2

# 1 "gameStartSong.h" 1


extern const unsigned int gameStartSong_sampleRate;
extern const unsigned int gameStartSong_length;
extern const signed char gameStartSong_data[];
# 32 "main.c" 2
# 1 "pauseSong.h" 1


extern const unsigned int pauseSong_sampleRate;
extern const unsigned int pauseSong_length;
extern const signed char pauseSong_data[];
# 33 "main.c" 2


void initialize();


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


unsigned short buttons;
unsigned short oldButtons;



int main() {

    initialize();

    while(1) {


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


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


void initialize() {


    (*(volatile unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12) |(1<<8);
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);

    (*(volatile unsigned short*)0x4000008) = ((2)<<2) | ((28)<<8) | (0<<14);
    setupSounds();
    setupInterrupts();



    goToStart();
}

void goToStart(){





    stopSound();
    playSoundA(startSong_data, startSong_length, 1);
    DMANow(3, start_screenPal, ((unsigned short *)0x5000000), 512/2);
    DMANow(3, start_screenTiles, &((charblock *)0x6000000)[0], 10112 / 2);
    DMANow(3, start_screenMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, start_screenTiles, &((charblock *)0x6000000)[2], 10112 / 2);
    DMANow(3, start_screenMap, &((screenblock *)0x6000000)[28], 2048 / 2);


    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    state = START;
}

void start() {
    waitForVBlank();
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        initGame();
        DMANow(3, spsTiles, &((charblock *)0x6000000)[4], 32768 / 2);
        DMANow(3, spsPal, ((unsigned short *)0x5000200), 512 / 2);

        state = GAME;
        goToGame();
    }
    else if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        state = INSTR;
        goToInstr();
    }
}


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
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;

    if (level == 1){
        DMANow(3, bg1v1Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, bg1v1Tiles, &((charblock *)0x6000000)[0], 14624 / 2);
        DMANow(3, bg1v1Map, &((screenblock *)0x6000000)[31], 2048 / 2);

        DMANow(3, bg1pTiles, &((charblock *)0x6000000)[2], 3904 / 2);
        DMANow(3, bg1pMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    }

    else if(level == 2 ){
        DMANow(3, bg1v2Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, bg1v2Tiles, &((charblock *)0x6000000)[0], 14624 / 2);
        DMANow(3, bg1v2Map, &((screenblock *)0x6000000)[31], 2048 / 2);

        DMANow(3, bg2pTiles, &((charblock *)0x6000000)[2], 4800 / 2);
        DMANow(3, bg2pMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    }
    else if(level == 3 ){
        DMANow(3, bg1v3Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, bg1v3Tiles, &((charblock *)0x6000000)[0], 21088 / 2);
        DMANow(3, bg1v3Map, &((screenblock *)0x6000000)[31], 2048 / 2);

        DMANow(3, bg3pTiles, &((charblock *)0x6000000)[2], 3392 / 2);
        DMANow(3, bg3pMap, &((screenblock *)0x6000000)[28], 2048 / 2);




    }
    state = GAME;
}


void game() {
    updateGame();
    drawGame();

    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
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
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
         if (aux_level == 4){
            aux_level = 1;
            level = 1;
        }
        state = START;
        goToStart();
    }
    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        state = START;
        goToStart();
    }


}

void goToWin(){

    game_paused = 1;
    vOff = 0;
    hOff = 0;
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;

    if(aux_level == 3){
        DMANow(3, fast_frogPal, ((unsigned short *)0x5000000), 512/2);
        DMANow(3, fast_frogTiles, &((charblock *)0x6000000)[0], 8384 / 2);
        DMANow(3, fast_frogMap, &((screenblock *)0x6000000)[31], 2048 / 2);

        DMANow(3, fast_frogTiles, &((charblock *)0x6000000)[2], 8384 / 2);
        DMANow(3, fast_frogMap, &((screenblock *)0x6000000)[28], 2048 / 2);

        stopSound();
        playSoundA(levelPassedSong_data, levelPassedSong_length, 1);


    }
    else if(aux_level == 6){
        DMANow(3, game_winPal, ((unsigned short *)0x5000000), 512/2);
        DMANow(3, game_winTiles, &((charblock *)0x6000000)[0], 13280 / 2);
        DMANow(3, game_winMap, &((screenblock *)0x6000000)[31], 2048 / 2);

        DMANow(3, game_winTiles, &((charblock *)0x6000000)[2], 13280 / 2);
        DMANow(3, game_winMap, &((screenblock *)0x6000000)[28], 2048 / 2);
        stopSound();
        playSoundA(gameWinSong_data, gameWinSong_length, 1);

        level = 0;
        aux_level = 0;
    }
    else{
        DMANow(3, win_screenPal, ((unsigned short *)0x5000000), 512/2);
        DMANow(3, win_screenTiles, &((charblock *)0x6000000)[0], 13824 / 2);
        DMANow(3, win_screenMap, &((screenblock *)0x6000000)[31], 2048 / 2);

        DMANow(3, win_screenTiles, &((charblock *)0x6000000)[2], 13824 / 2);
        DMANow(3, win_screenMap, &((screenblock *)0x6000000)[28], 2048 / 2);
        stopSound();
        playSoundA(levelPassedSong_data, levelPassedSong_length, 1);

    }

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);



}

void lose(){
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        state = START;
        goToStart();
    }

}

void goToLose(){

    game_paused = 1;
    vOff = 0;
    hOff = 0;
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
    stopSound();
    playSoundA(loseSong_data, loseSong_length, 1);
    DMANow(3, lose_screenPal, ((unsigned short *)0x5000000), 512/2);
    DMANow(3, lose_screenTiles, &((charblock *)0x6000000)[0], 5696 / 2);
    DMANow(3, lose_screenMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, lose_screenTiles, &((charblock *)0x6000000)[2], 5696 / 2);
    DMANow(3, lose_screenMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);




}

void pause(){
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        state = GAME;
        goToGame();
    }
    else if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        state = START;
        goToStart();
    }
}

void goToPause(){
    stopSound();

    playSoundA(pauseSong_data, pauseSong_length, 1);
    game_paused = 1;
    vOff = 0;
    hOff = 0;
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;

    DMANow(3, pause_screenPal, ((unsigned short *)0x5000000), 512/2);
    DMANow(3, pause_screenTiles, &((charblock *)0x6000000)[0], 11168 / 2);
    DMANow(3, pause_screenMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, pause_screenTiles, &((charblock *)0x6000000)[2], 11168 / 2);
    DMANow(3, pause_screenMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}

void goToInstr(){
    DMANow(3, instrPal, ((unsigned short *)0x5000000), 512/2);
    DMANow(3, instrTiles, &((charblock *)0x6000000)[0], 23392 / 2);
    DMANow(3, instrMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, instrTiles, &((charblock *)0x6000000)[2], 23392 / 2);
    DMANow(3, instrMap, &((screenblock *)0x6000000)[28], 2048 / 2);

}

void instr(){
    if((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))){

        (*(volatile unsigned short *)0x04000016) = 95;
        (*(volatile unsigned short *)0x04000012) = 95;

    }
    if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))){

        (*(volatile unsigned short *)0x04000016) = 0;
        (*(volatile unsigned short *)0x04000012) = 0;

    }

    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        initGame();
        DMANow(3, spsTiles, &((charblock *)0x6000000)[4], 32768 / 2);
        DMANow(3, spsPal, ((unsigned short *)0x5000200), 512 / 2);

        state = GAME;
        goToGame();
    }
    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        state = START;
        goToStart();
    }
}
