variant_names: macro
    dbba \1, \2Names
endm

regional_names: macro
    dbw \1, \2VariantNamePointerTable
endm

RegionalNamePointerTable:  
    regional_names GROUP_GENERATION_ONE, Kanto
    regional_names GROUP_GENERATION_TWO, Johto
    regional_names GROUP_GENERATION_THREE, Hoenn
    regional_names GROUP_GENERATION_FOUR, Sinnoh
    regional_names GROUP_GENERATION_FIVE, Unova
    regional_names GROUP_GENERATION_SIX, Kalos
	regional_names -1, Kanto

;OtherVariantNamePointerTable:
    ;variant_names -1, Other

KantoVariantNamePointerTable:
    variant_names -1, Kanto

JohtoVariantNamePointerTable:
    variant_names -1, Johto

HoennVariantNamePointerTable:
    variant_names -1, Hoenn

SinnohVariantNamePointerTable:
    variant_names -1, Sinnoh

UnovaVariantNamePointerTable:
    variant_names -1, Unova

KalosVariantNamePointerTable:
    variant_names -1, Kalos