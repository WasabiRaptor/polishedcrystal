variant_dexentry: macro
    dbw \1, \2PokedexEntryPointers
endm

regional_dexentry: macro
    dba \1PokedexEntryPointerTable
endm


RegionalPokedexEntryPointerTable:
	regional_dexentry Kanto
    regional_dexentry Kanto
    regional_dexentry Johto
    regional_dexentry Hoenn
    regional_dexentry Sinnoh
    regional_dexentry Unova
    regional_dexentry Kalos
