variant_footprints: macro
    dbba \1, \2Footprints
endm

regional_footprints: macro
    dbw \1, \2VariantFootprintTable
endm

RegionalFootprintTable:
    regional_footprints GROUP_GENERATION_ONE, Kanto
    regional_footprints GROUP_GENERATION_TWO, Johto
    regional_footprints GROUP_GENERATION_THREE, Hoenn
    regional_footprints GROUP_GENERATION_FOUR, Sinnoh
    regional_footprints GROUP_GENERATION_FIVE, Unova
    regional_footprints GROUP_GENERATION_SIX, Kalos
    regional_footprints GROUP_GENERATION_SEVEN, Alola
    regional_footprints GROUP_GENERATION_EIGHT, Galar
	regional_footprints -1, Kanto

;OtherVariantFootprintTable:
    ;variant_footprints -1, Other

KantoVariantFootprintTable:
    variant_footprints -1, Kanto

JohtoVariantFootprintTable:
    variant_footprints -1, Johto

HoennVariantFootprintTable:
    variant_footprints -1, Hoenn

SinnohVariantFootprintTable:
    variant_footprints -1, Sinnoh

UnovaVariantFootprintTable:
    variant_footprints -1, Unova

KalosVariantFootprintTable:
    variant_footprints -1, Kalos

AlolaVariantFootprintTable:
    variant_footprints -1, Alola

GalarVariantFootprintTable:
    variant_footprints -1, Galar
