variant_eggmoves: macro
    dbba \1, \2EggMovePointers
endm

VariantEggMovePointerTable:
    variant_eggmoves GROUP_GENERATION_ONE, Kanto  
    variant_eggmoves GROUP_GENERATION_TWO, Johto
    variant_eggmoves GROUP_GENERATION_THREE, Hoenn

	dbba -1,        KantoEggMovePointers