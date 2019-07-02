landmark: MACRO
if _NARG <4
	landmark \1, \2, \3, 0, 0
else
	db (\1 * 8 + 12 + (\4)), (\2 * 8 + 20 + (\5))
	dw \3
endc
ENDM

Landmarks: ; 0x1ca8c3
	landmark   0,   0, SpecialMapName, -12, -20
	landmark  $b,   8, DanielsTownName
	landmark   9,   9, AsaokaCityName
	landmark  $d,   5, KikunoTownName
	landmark   1,   5, BreguetRuinsName
	landmark   2,  $d, HetzeltronName
	landmark $10,  $d, HattoriVillageName
	landmark 	7,	9, OuestPathwayName
	landmark   	4,  7, CendreLowlandName
	landmark   	4,  4, MtInductorName
	landmark  	4, 	2, MtInductorPeakName, 0, -2
	landmark 	9,	$c, MinamiWetlandsName
	landmark  	5, 	$d, SylvanTrailName, 0, -4
	landmark  	$d, 7, GelidRavineName, 3, 0
	landmark 	$a,	3, TaniRiverName, 0, 4
	landmark 	$a,	8, TaniRiverName
	landmark 	$d,	$a, CrystalineLakeName, -4, -4
	landmark 	$d,	$c, CrystalineLakeName, 0, -4


SpecialMapName:        	db "?","@"
;"¯" for splitting to newline in certain places
DanielsTownName:		db "D","a","n","i","e","l","s","¯","T","o","w","n","@"
AsaokaCityName:			db "A","s","a","o","k","a","¯","C","i","t","y","@"
KikunoTownName:			db "K","i","k","u","n","o","¯","T","o","w","n","@"
BreguetRuinsName:		db "B","r","e","g","u","e","t","¯","R","u","i","n","s","@"
HetzeltronName:			db "H","e","t","z","e","l","t","r","o","n","@"
HattoriVillageName:		db "H","a","t","t","o","r","i","¯","V","i","l","l","a","g","e","@"
CendreLowlandName:		db "C","e","n","d","r","é","¯","L","o","w","l","a","n","d","@" ;ashen lowlands
MtInductorName:			db "M","t","."," ","I","n","d","u","c","t","o","r","@"
MtInductorPeakName:		db "M","t","."," ","I","n","d","u","c","t","o","r","¯","P","e","a","k","@"
OuestPathwayName:		db "O","u","e","s","t","¯","P","a","t","h","w","a","y","@" ;west pathway
MinamiWetlandsName:		db "M","i","n","a","m","i","¯","W","e","t","l","a","n","d","s","@" ; south wetlands
SylvanTrailName:		db "S","y","l","v","a","n","¯","T","r","a","i","l","@" ;wooded trail
GelidRavineName:		db "G","e","l","i","d","¯","R","a","v","i","n","e","@"
CrystalineLakeName:		db "C","r","y","s","t","a","l","i","n","e","¯","L","a","k","e","@"
TaniRiverName:			db "T","a","n","i","¯","R","i","v","e","r","@"
