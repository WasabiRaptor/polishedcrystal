variant_evosattacks: macro
    dbba \1, \2EvosAttacksPointers
endm

variant_evomoves: macro
    dbba \1, \2EvolutionMoves
endm

regional_evosattacks: macro
    dbw \1, \2VariantEvosAttacksPointerTable
endm

regional_evomoves: macro
    dbw \1, \2VariantEvolutionMovesPointerTable
endm


RegionalEvosAttacksPointerTable:
    regional_evosattacks GROUP_GENERATION_ONE,  Kanto
    regional_evosattacks GROUP_GENERATION_TWO,  Johto
    regional_evosattacks GROUP_GENERATION_THREE, Hoenn
    regional_evosattacks GROUP_GENERATION_FOUR, Sinnoh
    regional_evosattacks GROUP_GENERATION_FIVE, Unova
    regional_evosattacks GROUP_GENERATION_SIX, Kalos
	regional_evosattacks -1, Kanto

;OtherVariantEvosAttacksPointerTable:
    ;variant_evosattacks -1, Other

KantoVariantEvosAttacksPointerTable:
    variant_evosattacks -1, Kanto

JohtoVariantEvosAttacksPointerTable:
    variant_evosattacks -1, Johto

HoennVariantEvosAttacksPointerTable:
    variant_evosattacks -1, Hoenn

SinnohVariantEvosAttacksPointerTable:
    variant_evosattacks -1, Sinnoh

UnovaVariantEvosAttacksPointerTable:
    variant_evosattacks -1, Unova

KalosVariantEvosAttacksPointerTable:
    variant_evosattacks -1, Kalos

RegionalEvolutionMovesPointerTable:
    regional_evomoves GROUP_GENERATION_ONE, Kanto  
    regional_evomoves GROUP_GENERATION_TWO, Johto
    regional_evomoves GROUP_GENERATION_THREE, Hoenn
    regional_evomoves GROUP_GENERATION_FOUR, Sinnoh
    regional_evomoves GROUP_GENERATION_FIVE, Unova
    regional_evomoves GROUP_GENERATION_SIX, Kalos
	regional_evomoves -1, Kanto

;OtherVariantEvolutionMovesPointerTable:
    ;variant_evomoves -1, Other

KantoVariantEvolutionMovesPointerTable:
    variant_evomoves -1, Kanto

JohtoVariantEvolutionMovesPointerTable:
    variant_evomoves -1, Johto

HoennVariantEvolutionMovesPointerTable:
    variant_evomoves -1, Hoenn

SinnohVariantEvolutionMovesPointerTable:
    variant_evomoves -1, Sinnoh

UnovaVariantEvolutionMovesPointerTable:
    variant_evomoves -1, Unova

KalosVariantEvolutionMovesPointerTable:
    variant_evomoves -1, Kalos
