landmark: MACRO
	db (\1 * 8 + 12), (\2 * 8 + 20)
	dw \3
ENDM
directlandmark: MACRO
	db \1, \2 
	dw \3
ENDM
Landmarks: ; 0x1ca8c3
	landmark   0,   0, SpecialMapName
	landmark  $b,   8, DanielsTownName
	landmark   9,   9, AsaokaCityName
	landmark  $d,   5, KubotaTownName
	landmark   1,   5, BreguetRuinsName
	landmark   2,  $d, HetzeltronName
	landmark $10,  $d, HattoriVillageName
	landmark   4,   7, AshPlainsName
	landmark   4,   4, MtInductorName
	directlandmark  (4 * 8 + 12), (2 * 8 + 18), MtInductorPeakName


SpecialMapName:        	db "?","@"
;"¯" for splitting to newline in certain places
DanielsTownName:		db "D","a","n","i","e","l","s","¯","T","o","w","n","@"
AsaokaCityName:			db "A","s","a","o","k","a","¯","C","i","t","y","@"
KubotaTownName:			db "K","u","b","o","t","a","¯","T","o","w","n","@"
BreguetRuinsName:		db "B","r","e","g","u","e","t","¯","R","u","i","n","s","@"
HetzeltronName:			db "H","e","t","z","e","l","t","r","o","n","@"
HattoriVillageName:		db "H","a","t","t","o","r","i","¯","V","i","l","l","a","g","e","@"
AshPlainsName:			db "A","s","h"," ","P","l","a","i","n","s","@"
MtInductorName:			db "M","t","."," ","I","n","d","u","c","t","o","r","@"
MtInductorPeakName:		db "M","t","."," ","I","n","d","u","c","t","o","r","¯","P","e","a","k","@"
