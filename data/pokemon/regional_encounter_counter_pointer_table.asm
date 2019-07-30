variant_encountercounter: macro
    dbw \1, wTotalEncountered\2PokemonSpecies
endm

variant_defeatedcounter: macro
    dbw \1, wTotalDefeated\2PokemonSpecies
endm

EncounterCounterPointerTable:
    variant_encountercounter GROUP_GENERATION_ONE, Kanto
    variant_encountercounter GROUP_GENERATION_TWO, Johto
    variant_encountercounter GROUP_GENERATION_THREE, Hoenn 
    variant_encountercounter GROUP_GENERATION_FOUR, Sinnoh 
    variant_encountercounter GROUP_GENERATION_FIVE, Unova 
    variant_encountercounter GROUP_GENERATION_SIX, Kalos 
    variant_encountercounter GROUP_GENERATION_SEVEN, Alola 
    variant_encountercounter GROUP_GENERATION_EIGHT, Galar 
    dbw -1, wTotalEncounteredKantoPokemonSpecies

DefeatedCounterPointerTable:
    variant_defeatedcounter GROUP_GENERATION_ONE, Kanto
    variant_defeatedcounter GROUP_GENERATION_TWO, Johto
    variant_defeatedcounter GROUP_GENERATION_THREE, Hoenn 
    variant_defeatedcounter GROUP_GENERATION_FOUR, Sinnoh 
    variant_defeatedcounter GROUP_GENERATION_FIVE, Unova 
    variant_defeatedcounter GROUP_GENERATION_SIX, Kalos 
    variant_defeatedcounter GROUP_GENERATION_SEVEN, Alola 
    variant_defeatedcounter GROUP_GENERATION_EIGHT, Galar 
    dbw -1, wTotalDefeatedKantoPokemonSpecies
