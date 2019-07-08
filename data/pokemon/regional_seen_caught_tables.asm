variant_seen: macro
    dbw \1, w\2PokedexSeen
endm

variant_caught: macro
    dbw \1, w\2PokedexCaught
endm

RegionalSeenTable:
    variant_seen REGION_KANTO, Kanto
    variant_seen REGION_JOHTO, Johto
    variant_seen REGION_HOENN, Hoenn 
    variant_seen REGION_SINNOH, Sinnoh 
    variant_seen REGION_UNOVA, Unova 
    variant_seen REGION_KALOS, Kalos 
    variant_seen REGION_ALOLA, Alola 
    variant_seen REGION_GALAR, Galar 
    dbw -1, wKantoPokedexSeen

RegionalCaughtTable:
    variant_caught REGION_KANTO, Kanto
    variant_caught REGION_JOHTO, Johto
    variant_caught REGION_HOENN, Hoenn 
    variant_caught REGION_SINNOH, Sinnoh 
    variant_caught REGION_UNOVA, Unova 
    variant_caught REGION_KALOS, Kalos 
    variant_caught REGION_ALOLA, Alola 
    variant_caught REGION_GALAR, Galar 
    dbw -1, wKantoPokedexCaught
