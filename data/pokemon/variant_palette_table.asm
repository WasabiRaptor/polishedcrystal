variant_palettes: macro
    dbba \1, \2Palettes
endm

VariantPaletteTable:  
    variant_palettes REGION_KANTO,  Kanto
    variant_palettes REGION_JOHTO,  Johto
    variant_palettes REGION_HOENN, Hoenn

	dbba -1,         KantoPalettes