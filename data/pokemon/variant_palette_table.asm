variant_palettes: macro
    dbba \1, \2Palettes
endm

regional_palettes: macro
    dbw \1, \2VariantPaletteTable
endm

RegionalPaletteTable:  
    regional_palettes GROUP_GENERATION_ONE, Kanto
    regional_palettes GROUP_GENERATION_TWO, Johto
    regional_palettes GROUP_GENERATION_THREE, Hoenn
    regional_palettes GROUP_GENERATION_FOUR, Sinnoh
    regional_palettes GROUP_GENERATION_FIVE, Unova
	regional_palettes -1, Kanto

;OtherVariantPaletteTable:
    ;variant_palettes -1, Other

KantoVariantPaletteTable:
    variant_palettes -1, Kanto

JohtoVariantPaletteTable:
    variant_palettes -1, Johto

HoennVariantPaletteTable:
    variant_palettes -1, Hoenn

SinnohVariantPaletteTable:
    variant_palettes -1, Sinnoh

UnovaVariantPaletteTable:
    variant_palettes -1, Unova