variant_eggmoves: macro
    dbba \1, \2EggMovePointers
endm

VariantEggMovePointerTable:
    variant_eggmoves GROUP_GENERATION_ONE, Kanto  
    variant_eggmoves GROUP_GENERATION_TWO, Johto
    variant_eggmoves GROUP_GENERATION_THREE, Hoenn
    variant_eggmoves GROUP_GENERATION_FOUR, Sinnoh
    variant_eggmoves GROUP_GENERATION_FIVE, Unova

	dbba -1,        KantoEggMovePointers