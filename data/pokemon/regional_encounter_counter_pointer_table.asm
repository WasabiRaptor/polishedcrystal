variant_encountercounter: macro
    dbw \1, wTotalEncountered\2PokemonSpecies
endm

variant_defeatedcounter: macro
    dbw \1, wTotalDefeated\2PokemonSpecies
endm

EncounterCounterPointerTable:
    variant_encountercounter REGION_KANTO, Kanto
    variant_encountercounter REGION_JOHTO, Johto
    variant_encountercounter REGION_HOENN, Hoenn 
    variant_encountercounter REGION_SINNOH, Sinnoh 
    variant_encountercounter REGION_UNOVA, Unova 
    variant_encountercounter REGION_KALOS, Kalos 
    variant_encountercounter REGION_ALOLA, Alola 
    variant_encountercounter REGION_GALAR, Galar 
    dbw -1, wTotalEncounteredKantoPokemonSpecies

DefeatedCounterPointerTable:
    variant_defeatedcounter REGION_KANTO, Kanto
    variant_defeatedcounter REGION_JOHTO, Johto
    variant_defeatedcounter REGION_HOENN, Hoenn 
    variant_defeatedcounter REGION_SINNOH, Sinnoh 
    variant_defeatedcounter REGION_UNOVA, Unova 
    variant_defeatedcounter REGION_KALOS, Kalos 
    variant_defeatedcounter REGION_ALOLA, Alola 
    variant_defeatedcounter REGION_GALAR, Galar 
    dbw -1, wTotalDefeatedKantoPokemonSpecies
