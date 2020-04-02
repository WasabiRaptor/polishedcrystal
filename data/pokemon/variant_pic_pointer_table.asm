variant_picpointers: macro
    dbba \1, \2PicPointers
endm

regional_picpointers: macro
    dba \1PicPointerTable
endm

RegionalPicPointerTable:
	regional_picpointers Kanto
    regional_picpointers Kanto
    regional_picpointers Johto
    regional_picpointers Hoenn
    regional_picpointers Sinnoh
    regional_picpointers Unova
    regional_picpointers Kalos
