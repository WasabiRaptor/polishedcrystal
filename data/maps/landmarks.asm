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


SpecialMapName:        	db "?@"
;"¯" for splitting to newline in certain places
DanielsTownName:		db "Daniels Town@"
AsaokaCityName:			db "Asaoka City@"
KikunoTownName:			db "Kikuno Town@"
BreguetRuinsName:		db "Breguet Ruins@"
HetzeltronName:			db "Hetzeltron@"
HattoriVillageName:		db "Hattori Village@"
CendreLowlandName:		db "Cendré Lowland@" ;ashen lowlands
MtInductorName:			db "Mt. Inductor@"
MtInductorPeakName:		db "Mt. Inductor Peak@"
OuestPathwayName:		db "Ouest Pathway@" ;west pathway
MinamiWetlandsName:		db "Minami Wetlands@" ; south wetlands
SylvanTrailName:		db "Sylvan Trail@" ;wooded trail
GelidRavineName:		db "Gelid Ravine@"
CrystalineLakeName:		db "Crystaline Lake@"
TaniRiverName:			db "Tani River@"
