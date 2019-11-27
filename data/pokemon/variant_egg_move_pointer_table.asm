variant_eggmoves: macro
    dbba \1, \2EggMovePointers
endm

regional_eggmoves: macro
    dbw \1, \2VariantEggMovePointerTable
endm

RegionalEggMovePointerTable:
    regional_eggmoves GROUP_GENERATION_ONE, Kanto  
    regional_eggmoves GROUP_GENERATION_TWO, Johto
    regional_eggmoves GROUP_GENERATION_THREE, Hoenn
    regional_eggmoves GROUP_GENERATION_FOUR, Sinnoh
    regional_eggmoves GROUP_GENERATION_FIVE, Unova
    regional_eggmoves GROUP_GENERATION_SIX, Kalos
	regional_eggmoves -1, Kanto

;OtherVariantEggMovePointerTable:
    ;variant_eggmoves -1, Other

KantoVariantEggMovePointerTable:
    variant_eggmoves -1, Kanto

JohtoVariantEggMovePointerTable:
    variant_eggmoves -1, Johto

HoennVariantEggMovePointerTable:
    variant_eggmoves -1, Hoenn

SinnohVariantEggMovePointerTable:
    variant_eggmoves -1, Sinnoh

UnovaVariantEggMovePointerTable:
    variant_eggmoves -1, Unova

KalosVariantEggMovePointerTable:
    variant_eggmoves -1, Kalos