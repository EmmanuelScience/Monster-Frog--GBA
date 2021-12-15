
//{{BLOCK(bg3p)

//======================================================================
//
//	bg3p, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 106 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3392 + 2048 = 5952
//
//	Time-stamp: 2021-12-08, 17:15:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG3P_H
#define GRIT_BG3P_H

#define bg3pTilesLen 3392
extern const unsigned short bg3pTiles[1696];

#define bg3pMapLen 2048
extern const unsigned short bg3pMap[1024];

#define bg3pPalLen 512
extern const unsigned short bg3pPal[256];

#endif // GRIT_BG3P_H

//}}BLOCK(bg3p)
