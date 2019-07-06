variant_picpointers: macro
    dbba \1, \2PicPointers
endm

VariantPicPointerTable:
    variant_picpointers REGION_KANTO,  Kanto
    variant_picpointers REGION_JOHTO,  Johto  
	dbba -1,            KantoPicPointers
