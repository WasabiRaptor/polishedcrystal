variant_names: macro
    dbba \1, \2Names
endm

VariantNamePointerTable:
    variant_names GROUP_GENERATION_ONE,  Kanto
    variant_names GROUP_GENERATION_TWO,  Johto
    variant_names GROUP_GENERATION_THREE, Hoenn

    dbba -1,        KantoNames
