
//{{BLOCK(win_screen)

//======================================================================
//
//	win_screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 432 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13824 + 2048 = 16384
//
//	Time-stamp: 2021-12-08, 18:55:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN_SCREEN_H
#define GRIT_WIN_SCREEN_H

#define win_screenTilesLen 13824
extern const unsigned short win_screenTiles[6912];

#define win_screenMapLen 2048
extern const unsigned short win_screenMap[1024];

#define win_screenPalLen 512
extern const unsigned short win_screenPal[256];

#endif // GRIT_WIN_SCREEN_H

//}}BLOCK(win_screen)
