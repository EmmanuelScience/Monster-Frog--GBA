
//{{BLOCK(game_win)

//======================================================================
//
//	game_win, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 415 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13280 + 2048 = 15840
//
//	Time-stamp: 2021-12-14, 22:19:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAME_WIN_H
#define GRIT_GAME_WIN_H

#define game_winTilesLen 13280
extern const unsigned short game_winTiles[6640];

#define game_winMapLen 2048
extern const unsigned short game_winMap[1024];

#define game_winPalLen 512
extern const unsigned short game_winPal[256];

#endif // GRIT_GAME_WIN_H

//}}BLOCK(game_win)
