variant_iconpals: macro
    dbba \1, \2MenuMonIconColors
endm

regional_iconpals: macro
    dbw \1, \2VariantIconPalTable
endm

RegionalIconPalTable:  
    regional_iconpals GROUP_GENERATION_ONE, Kanto
    regional_iconpals GROUP_GENERATION_TWO, Johto
    regional_iconpals GROUP_GENERATION_THREE, Hoenn
    regional_iconpals GROUP_GENERATION_FOUR, Sinnoh
    regional_iconpals GROUP_GENERATION_FIVE, Unova
	regional_iconpals -1, Kanto

;OtherVariantIconPalTable:
    ;variant_iconpals -1, Other

KantoVariantIconPalTable:
    variant_iconpals -1, Kanto

JohtoVariantIconPalTable:
    variant_iconpals -1, Johto

HoennVariantIconPalTable:
    variant_iconpals -1, Hoenn

SinnohVariantIconPalTable:
    variant_iconpals -1, Sinnoh

UnovaVariantIconPalTable:
    variant_iconpals -1, Unova
