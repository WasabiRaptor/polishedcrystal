variant_iconpals: macro
    dbba \1, \2MenuMonIconColors
endm


VariantIconPalTable:  
    variant_iconpals GROUP_GENERATION_ONE, Kanto
    variant_iconpals GROUP_GENERATION_TWO, Johto
    variant_iconpals GROUP_GENERATION_THREE, Hoenn
    variant_iconpals GROUP_GENERATION_FOUR, Sinnoh
    variant_iconpals GROUP_GENERATION_FIVE, Unova

	dbba -1,         KantoMenuMonIconColors