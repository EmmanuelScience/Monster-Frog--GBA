
//{{BLOCK(bg1p)

//======================================================================
//
//	bg1p, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 122 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3904 + 2048 = 6464
//
//	Time-stamp: 2021-12-08, 11:56:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG1P_H
#define GRIT_BG1P_H

#define bg1pTilesLen 3904
extern const unsigned short bg1pTiles[1952];

#define bg1pMapLen 2048
extern const unsigned short bg1pMap[1024];

#define bg1pPalLen 512
extern const unsigned short bg1pPal[256];

#endif // GRIT_BG1P_H

//}}BLOCK(bg1p)
