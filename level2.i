# 1 "level2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "level2.c"
# 1 "game.h" 1
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
# 2 "game.h" 2

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
# 2 "level2.c" 2
# 1 "level2.h" 1
void initPlayer2();
void initCollectibles2();
void initMeatballs2();
void initFrog2();
void initObstacles2();
# 3 "level2.c" 2

void initPlayer2(){
    sandwich.width = 8;
    sandwich.height = 8;
    sandwich.rdel = 1;
    sandwich.cdel = 1;


    sandwich.worldRow = 120;
    sandwich.worldCol = 240 / 2 - sandwich.height / 2 + hOff;
    sandwich.aniCounter = 0;
    sandwich.curFrame = 0;
    sandwich.numFrames = 3;
    sandwich.aniState = 0;
}

void initCollectibles2(){
    for (int i = 0; i < 3; i++){
        invisble[i].active = 1;
        invisble[i].height = 8;
        invisble[i].width = 8;
        invisble[i].active = 1;
        invisble[i].hide = 0;
        invisble[i].aniCounter = 0;
        invisble[i].curFrame = 0;
        invisble[i].numFrames = 3;
        invisble[i].aniState = 0;
        if (i == 0){
            invisble[i].worldCol = 9;
            invisble[i].worldRow = 162;
        }
        else if(i == 1){
            invisble[i].worldCol = 227;
            invisble[i].worldRow = 176;
        }
        else{
            invisble[i].worldCol = 129;
            invisble[i].worldRow = 72;
        }
    }

    speed.active = 1;
    speed.height = 8;
    speed.width = 8;
    speed.worldCol = 5;
    speed.worldRow = 118;
    speed.hide = 0;
    speed.active = 1;
    speed.aniCounter = 0;
    speed.curFrame = 0;
    speed.numFrames = 3;
    speed.aniState = 0;

    portal.active = 1;
    portal.height = 8;
    portal.width = 8;
    portal.worldCol = 228;
    portal.worldRow = 121;
    portal.hide = 0;
    portal.active = 1;
    portal.aniCounter = 0;
    portal.curFrame = 0;
    portal.numFrames = 2;
    portal.aniState = 0;
}
void initMeatballs2(){
    for (int i = 0; i < 5; i++){
        meatBalls[i].active = 1;
        meatBalls[i].height = 8;
        meatBalls[i].width = 8;
        meatBalls[i].hide = 0;
        meatBalls[i].aniCounter = 0;
        meatBalls[i].curFrame = 0;
        meatBalls[i].numFrames = 3;
        meatBalls[i].aniState = 0;
        if (i == 0){
            meatBalls[i].worldCol = 46;
            meatBalls[i].worldRow = 140;
        }
        else if(i == 1){
            meatBalls[i].worldCol = 193;
            meatBalls[i].worldRow = 143;
        }
        else if (i == 2) {
            meatBalls[i].worldCol = 37;
            meatBalls[i].worldRow = 58;
        }
        else if (i == 3) {
            meatBalls[i].worldCol = 214;
            meatBalls[i].worldRow = 56;
        }
        else {
            meatBalls[i].worldCol = 120;
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
