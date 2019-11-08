variant_icons: macro
    dbw \1, \2IconPointers
endm

regional_icons: macro
    dbw \1, \2VariantIconPointerTable
endm

RegionalIconPointerTable:  
    regional_icons GROUP_GENERATION_ONE, Kanto
    regional_icons GROUP_GENERATION_TWO, Johto
    regional_icons GROUP_GENERATION_THREE, Hoenn
    regional_icons GROUP_GENERATION_FOUR, Sinnoh
    regional_icons GROUP_GENERATION_FIVE, Unova
    regional_icons GROUP_GENERATION_SIX, Kalos
	regional_icons -1, Kanto

;OtherVariantIconPointerTable:
    ;variant_icons -1, Other

KantoVariantIconPointerTable:
    variant_icons -1, Kanto

JohtoVariantIconPointerTable:
    variant_icons -1, Johto

HoennVariantIconPointerTable:
    variant_icons -1, Hoenn

SinnohVariantIconPointerTable:
    variant_icons -1, Sinnoh

UnovaVariantIconPointerTable:
    variant_icons -1, Unova
    
KalosVariantIconPointerTable:
    variant_icons -1, Kalos