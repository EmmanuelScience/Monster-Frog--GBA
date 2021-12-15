# 1 "level3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "level3.c"
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
# 2 "level3.c" 2
# 1 "level3.h" 1
void initPlayer3();
void initCollectibles3();
void initMeatballs3();
void initFrog3();
void initObstacles3();
# 3 "level3.c" 2

void initPlayer3(){
    sandwich.width = 8;
    sandwich.height = 8;
    sandwich.rdel = 1;
    sandwich.cdel = 1;


    sandwich.worldRow = 120;
    sandwich.worldCol = 240 / 2 - sandwich.height / 2 + hOff;
    sandwich.aniCounter = 0;
    sandwich.curFrame = 0;
    sandwich.numFrames = 2;
    sandwich.aniState = 0;
}

void initCollectibles3(){
    for (int i = 0; i < 3; i++){
        invisble[i].active = 1;
        invisble[i].height = 8;
        invisble[i].width = 8;
        invisble[i].active = 1;
        invisble[i].hide = 0;
        if (i == 0){
            invisble[i].worldCol = 196;
            invisble[i].worldRow = 227;
        }
        else if(i == 1){
            invisble[i].worldCol = 59;
            invisble[i].worldRow = 128;
        }
        else{
            invisble[i].worldCol = 139;
            invisble[i].worldRow = 76;
        }
    }

    speed.active = 1;
    speed.height = 8;
    speed.width = 8;
    speed.worldCol = 102;
    speed.worldRow = 175;
    speed.hide = 0;
    speed.active = 1;

    portal.active = 1;
    portal.height = 8;
    portal.width = 8;
    portal.worldCol = 125;
    portal.worldRow = 71;
    portal.hide = 0;
    portal.active = 1;
}
void initMeatballs3(){
    for (int i = 0; i < 5; i++){
        meatBalls[i].active = 1;
        meatBalls[i].height = 8;
        meatBalls[i].width = 8;
        meatBalls[i].hide = 0;
        if (i == 0){
            meatBalls[i].worldCol = 100;
            meatBalls[i].worldRow = 230;
        }
        else if(i == 1){
            meatBalls[i].worldCol = 100;
            meatBalls[i].worldRow = 194;
        }
        else if (i == 2) {
            meatBalls[i].worldCol = 100;
            meatBalls[i].worldRow = 164;
        }
        else if (i == 3) {
            meatBalls[i].worldCol = 100;
            meatBalls[i].worldRow = 88;
        }
        else {
            meatBalls[i].worldCol = 100;
            meatBalls[i].worldRow = 15;
        }
    }
}
void initFrog3(){
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
void initObstacles3(){
    obstacles[0].height = 7;
    obstacles[0].width = 43;
    obstacles[0].worldCol = 1;
    obstacles[0].worldRow = 21;
    obstacles[0].active = 1;

    obstacles[1].height = 7;
    obstacles[1].width = 43;
    obstacles[1].worldCol = 61;
    obstacles[1].worldRow = 22;
    obstacles[1].active = 1;

    obstacles[2].height = 7;
    obstacles[2].width = 43;
    obstacles[2].worldCol = 31;
    obstacles[2].worldRow = 31;
    obstacles[2].active = 1;

    obstacles[3].height = 7;
    obstacles[3].width = 43;
    obstacles[3].worldCol = 193;
    obstacles[3].worldRow = 62;
    obstacles[3].active = 1;

    obstacles[4].height = 7;
    obstacles[4].width = 43;
    obstacles[4].worldCol = 211;
    obstacles[4].worldRow = 70;
    obstacles[4].active = 1;

    obstacles[5].height = 7;
    obstacles[5].width = 43;
    obstacles[5].worldCol = 36;
    obstacles[5].worldRow = 107;
    obstacles[5].active = 1;

    obstacles[6].height = 7;
    obstacles[6].width = 43;
    obstacles[6].worldCol = 2;
    obstacles[6].worldRow = 116;
    obstacles[6].active = 1;

    obstacles[7].height = 7;
    obstacles[7].width = 43;
    obstacles[7].worldCol = 152;
    obstacles[7].worldRow = 145;
    obstacles[7].active = 1;

    obstacles[8].height = 7;
    obstacles[8].width = 43;
    obstacles[8].worldCol = 204;
    obstacles[8].worldRow = 145;
    obstacles[8].active = 1;

    obstacles[9].height = 7;
    obstacles[9].width = 43;
    obstacles[9].worldCol = 0;
    obstacles[9].worldRow = 182;
    obstacles[9].active = 1;

    obstacles[10].height = 7;
    obstacles[10].width = 43;
    obstacles[10].worldCol = 46;
    obstacles[10].worldRow = 182;
    obstacles[10].active = 1;

    obstacles[11].height = 7;
    obstacles[11].width = 43;
    obstacles[11].worldCol = 168;
    obstacles[11].worldRow = 210;
    obstacles[11].active = 1;

    obstacles[12].height = 7;
    obstacles[12].width = 43;
    obstacles[12].worldCol = 212;
    obstacles[12].worldRow = 209;
    obstacles[12].active = 1;


}
