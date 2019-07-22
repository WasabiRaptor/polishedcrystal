variant_footprints: macro
    dbba \1, \2Footprints
endm

VariantFootprintTable:
    variant_footprints GROUP_GENERATION_ONE, Kanto
    variant_footprints GROUP_GENERATION_TWO, Johto
    variant_footprints GROUP_GENERATION_THREE, Hoenn

    dbba -1,           KantoFootprints