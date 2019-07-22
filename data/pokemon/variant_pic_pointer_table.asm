variant_picpointers: macro
    dbba \1, \2PicPointers
endm

VariantPicPointerTable:
    variant_picpointers GROUP_GENERATION_ONE,  Kanto
    variant_picpointers GROUP_GENERATION_TWO,  Johto  
    variant_picpointers GROUP_GENERATION_THREE, Hoenn
	dbba -1,            OtherPicPointers

    