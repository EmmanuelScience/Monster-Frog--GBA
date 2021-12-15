
//{{BLOCK(fast_frog)

//======================================================================
//
//	fast_frog, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 262 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8384 + 2048 = 10944
//
//	Time-stamp: 2021-12-14, 21:27:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FAST_FROG_H
#define GRIT_FAST_FROG_H

#define fast_frogTilesLen 8384
extern const unsigned short fast_frogTiles[4192];

#define fast_frogMapLen 2048
extern const unsigned short fast_frogMap[1024];

#define fast_frogPalLen 512
extern const unsigned short fast_frogPal[256];

#endif // GRIT_FAST_FROG_H

//}}BLOCK(fast_frog)
