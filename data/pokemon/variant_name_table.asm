variant_names: macro
    dbba \1, \2Names
endm

VariantNamePointerTable:
    variant_names GROUP_GENERATION_ONE,  Kanto
    variant_names GROUP_GENERATION_TWO,  Johto
    variant_names GROUP_GENERATION_THREE, Hoenn
    variant_names GROUP_GENERATION_FOUR, Sinnoh
    variant_names GROUP_GENERATION_FIVE, Unova

    dbba -1,        KantoNames
