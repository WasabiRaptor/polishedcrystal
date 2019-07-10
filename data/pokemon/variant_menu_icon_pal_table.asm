variant_iconpals: macro
    dbba \1, \2MenuMonIconColors
endm


VariantIconPalTable:  
    variant_iconpals REGION_KANTO, Kanto
    variant_iconpals REGION_JOHTO, Johto
    variant_iconpals REGION_HOENN, Hoenn

	dbba -1,         KantoMenuMonIconColors