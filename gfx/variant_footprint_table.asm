variant_footprints: macro
    dbba \1, \2Footprints
endm

VariantFootprintTable:
    variant_footprints GROUP_GENERATION_ONE, Kanto
    variant_footprints GROUP_GENERATION_TWO, Johto
    variant_footprints GROUP_GENERATION_THREE, Hoenn
    variant_footprints GROUP_GENERATION_FOUR, Sinnoh
    variant_footprints GROUP_GENERATION_FIVE, Unova

    dbba -1,           KantoFootprints