#include "myLib.h"
//collectibles
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


// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 256

// Variables
extern int hOff, thOff;
extern int vOff, tvOff;
extern int game_paused, level, aux_level;
extern OBJ_ATTR shadowOAM[128];
extern COLLECTIBLE invisble[3], meatBalls[5], speed, portal;
extern OBSTACLE obstacles[13];
extern ANISPRITE sandwich, frog;
extern int remaining_meatballs, stolen_meatballs, meatballs;

// Prototypes
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