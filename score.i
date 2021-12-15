# 1 "score.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "score.c"
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
# 2 "score.c" 2
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
# 3 "score.c" 2
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
    shadowOAM[80].attr0 = (0xFF & (scoreSprite.worldRow )) | (1<<14);
    shadowOAM[80].attr1 = (0x1FF & (scoreSprite.worldCol )) | (0<<14);
    shadowOAM[80].attr2 = ((0)<<12) | ((1)*32+(4)) | ((0)<<10);

    shadowOAM[90].attr0 = (0xFF & (scoreSprite.worldRow )) | (0<<14);
    shadowOAM[90].attr1 = (0x1FF & (scoreSprite.worldCol + 12 )) | (0<<14);
    shadowOAM[90].attr2 = ((0)<<12) | ((0)*32+(temp + 4)) | ((0)<<10);
}

void drawScore2(){
    shadowOAM[82].attr0 = (0xFF & (scoreSprite.worldRow )) | (1<<14);
    shadowOAM[82].attr1 = (0x1FF & (scoreSprite.worldCol + 50 )) | (0<<14);
    shadowOAM[82].attr2 = ((0)<<12) | ((1)*32+(8)) | ((0)<<10);
    int temp = meatballs;
    shadowOAM[91].attr0 = (0xFF & (scoreSprite.worldRow )) | (0<<14);
    shadowOAM[91].attr1 = (0x1FF & (scoreSprite.worldCol+62 )) | (0<<14);
    shadowOAM[91].attr2 = ((0)<<12) | ((0)*32+(temp + 4)) | ((0)<<10);
}

void drawScore3(){
    shadowOAM[84].attr0 = (0xFF & (scoreSprite.worldRow )) | (1<<14);
    shadowOAM[84].attr1 = (0x1FF & (scoreSprite.worldCol + 100 )) | (0<<14);
    shadowOAM[84].attr2 = ((0)<<12) | ((1)*32+(6)) | ((0)<<10);

    int temp = stolen_meatballs;
    shadowOAM[92].attr0 = (0xFF & scoreSprite.worldRow) | (0<<14);
    shadowOAM[92].attr1 = (0x1FF & scoreSprite.worldCol+122) | (0<<14);
    shadowOAM[92].attr2 = ((0)<<12) | ((0)*32+(temp + 4)) | ((0)<<10);
}
