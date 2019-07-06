variant_evosattacks: macro
    dbba \1, \2EvosAttacksPointers
endm

variant_evomoves: macro
    dbba \1, \2EvolutionMoves
endm


VariantEvosAttacksPointerTable:
    variant_evosattacks REGION_KANTO,  Kanto
    variant_evosattacks REGION_JOHTO,  Johto
	dbba -1,        EvosAttacksPointers

VariantEvolutionMovesPointerTable:
    variant_evomoves REGION_KANTO, Kanto  
    variant_evomoves REGION_JOHTO, Johto
	dbba -1,        KantoEvolutionMoves