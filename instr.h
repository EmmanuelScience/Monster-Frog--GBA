
//{{BLOCK(instr)

//======================================================================
//
//	instr, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 731 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 23392 + 2048 = 25952
//
//	Time-stamp: 2021-12-15, 09:20:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTR_H
#define GRIT_INSTR_H

#define instrTilesLen 23392
extern const unsigned short instrTiles[11696];

#define instrMapLen 2048
extern const unsigned short instrMap[1024];

#define instrPalLen 512
extern const unsigned short instrPal[256];

#endif // GRIT_INSTR_H

//}}BLOCK(instr)
