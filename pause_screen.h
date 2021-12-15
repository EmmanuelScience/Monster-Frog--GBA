
//{{BLOCK(pause_screen)

//======================================================================
//
//	pause_screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 349 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 11168 + 2048 = 13728
//
//	Time-stamp: 2021-12-08, 15:13:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE_SCREEN_H
#define GRIT_PAUSE_SCREEN_H

#define pause_screenTilesLen 11168
extern const unsigned short pause_screenTiles[5584];

#define pause_screenMapLen 2048
extern const unsigned short pause_screenMap[1024];

#define pause_screenPalLen 512
extern const unsigned short pause_screenPal[256];

#endif // GRIT_PAUSE_SCREEN_H

//}}BLOCK(pause_screen)
