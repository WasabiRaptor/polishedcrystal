variant_footprints: macro
    dbba \1, \2Footprints
endm

VariantFootprintTable:
    variant_footprints REGION_KANTO, Kanto
    variant_footprints REGION_JOHTO, Johto
    dbba -1,           KantoFootprints