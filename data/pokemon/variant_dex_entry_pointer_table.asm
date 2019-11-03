variant_dexentry: macro
    dbw \1, \2PokedexEntryPointers
endm

regional_dexentry: macro
    dbw \1, \2VariantPokedexEntryPointerTable
endm


RegionalPokedexEntryPointerTable:
    regional_dexentry GROUP_GENERATION_ONE, Kanto 
    regional_dexentry GROUP_GENERATION_TWO, Johto 
    regional_dexentry GROUP_GENERATION_THREE, Hoenn
    regional_dexentry GROUP_GENERATION_FOUR, Sinnoh
    regional_dexentry GROUP_GENERATION_FIVE, Unova
	regional_dexentry -1, Kanto

;OtherVariantPokedexEntryPointerTable:
    ;variant_dexentry -1, Other

KantoVariantPokedexEntryPointerTable:
    variant_dexentry -1, Kanto

JohtoVariantPokedexEntryPointerTable:
    variant_dexentry -1, Johto

HoennVariantPokedexEntryPointerTable:
    variant_dexentry -1, Hoenn

SinnohVariantPokedexEntryPointerTable:
    variant_dexentry -1, Sinnoh

UnovaVariantPokedexEntryPointerTable:
    variant_dexentry -1, Unova