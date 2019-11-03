variant_picpointers: macro
    dbba \1, \2PicPointers
endm

regional_picpointers: macro
    dbw \1, \2VariantPicPointerTable
endm

RegionalPicPointerTable:  
    regional_picpointers GROUP_GENERATION_ONE, Kanto
    regional_picpointers GROUP_GENERATION_TWO, Johto
    regional_picpointers GROUP_GENERATION_THREE, Hoenn
    regional_picpointers GROUP_GENERATION_FOUR, Sinnoh
    regional_picpointers GROUP_GENERATION_FIVE, Unova
	regional_picpointers -1, Kanto

;OtherVariantPicPointerTable:
    ;variant_picpointers -1, Other

KantoVariantPicPointerTable:
    variant_picpointers -1, Kanto

JohtoVariantPicPointerTable:
    variant_picpointers -1, Johto

HoennVariantPicPointerTable:
    variant_picpointers -1, Hoenn

SinnohVariantPicPointerTable:
    variant_picpointers -1, Sinnoh

UnovaVariantPicPointerTable:
    variant_picpointers -1, Unova