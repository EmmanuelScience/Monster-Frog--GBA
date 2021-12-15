
//{{BLOCK(bg2p)

//======================================================================
//
//	bg2p, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 150 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4800 + 2048 = 7360
//
//	Time-stamp: 2021-12-14, 19:29:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG2P_H
#define GRIT_BG2P_H

#define bg2pTilesLen 4800
extern const unsigned short bg2pTiles[2400];

#define bg2pMapLen 2048
extern const unsigned short bg2pMap[1024];

#define bg2pPalLen 512
extern const unsigned short bg2pPal[256];

#endif // GRIT_BG2P_H

//}}BLOCK(bg2p)
