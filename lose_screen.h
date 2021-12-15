
//{{BLOCK(lose_screen)

//======================================================================
//
//	lose_screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 178 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5696 + 2048 = 8256
//
//	Time-stamp: 2021-12-08, 19:09:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSE_SCREEN_H
#define GRIT_LOSE_SCREEN_H

#define lose_screenTilesLen 5696
extern const unsigned short lose_screenTiles[2848];

#define lose_screenMapLen 2048
extern const unsigned short lose_screenMap[1024];

#define lose_screenPalLen 512
extern const unsigned short lose_screenPal[256];

#endif // GRIT_LOSE_SCREEN_H

//}}BLOCK(lose_screen)
