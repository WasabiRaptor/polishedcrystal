variant_eggmoves: macro
    dbba \1, \2EggMovePointers
endm

VariantEggMovePointerTable:
    variant_eggmoves REGION_KANTO, Kanto  
    variant_eggmoves REGION_JOHTO, Johto
    variant_eggmoves REGION_HOENN, Hoenn

	dbba -1,        KantoEggMovePointers