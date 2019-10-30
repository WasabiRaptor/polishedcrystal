variant_icons: macro
    dbw \1, \2IconPointers
endm


VariantIconPointerTable:
    variant_icons GROUP_GENERATION_ONE,  Kanto
    variant_icons GROUP_GENERATION_TWO,  Johto  
    variant_icons GROUP_GENERATION_THREE, Hoenn
    variant_icons GROUP_GENERATION_FOUR, Sinnoh
    variant_icons GROUP_GENERATION_FIVE, Unova

	dbw -1,       OtherIconPointers
