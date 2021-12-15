
//{{BLOCK(start_screen)

//======================================================================
//
//	start_screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 316 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10112 + 2048 = 12672
//
//	Time-stamp: 2021-12-08, 14:45:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_START_SCREEN_H
#define GRIT_START_SCREEN_H

#define start_screenTilesLen 10112
extern const unsigned short start_screenTiles[5056];

#define start_screenMapLen 2048
extern const unsigned short start_screenMap[1024];

#define start_screenPalLen 512
extern const unsigned short start_screenPal[256];

#endif // GRIT_START_SCREEN_H

//}}BLOCK(start_screen)
