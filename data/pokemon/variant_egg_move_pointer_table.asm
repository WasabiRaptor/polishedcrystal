variant_eggmoves: macro
    dbba \1, \2EggMovePointers
endm

VariantEggMovePointerTable:
    variant_eggmoves MEOWTH, Meowth  
    variant_eggmoves GRIMER,    Grimer
    variant_eggmoves NIDORAN,   Nidoran
    variant_eggmoves SANDSHREW, Sandshrew
    variant_eggmoves GIRAFARIG, Girafarig
    variant_eggmoves VULPIX,    Vulpix
	dbba -1,        EggMovePointers