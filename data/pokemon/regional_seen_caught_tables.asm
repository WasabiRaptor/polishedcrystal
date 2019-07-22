variant_seen: macro
    dbw \1, w\2PokedexSeen
endm

variant_caught: macro
    dbw \1, w\2PokedexCaught
endm

RegionalSeenTable:
    variant_seen GROUP_GENERATION_ONE, Kanto
    variant_seen GROUP_GENERATION_TWO, Johto
    variant_seen GROUP_GENERATION_THREE, Hoenn 
    variant_seen GROUP_GENERATION_FOUR, Sinnoh 
    variant_seen GROUP_GENERATION_FIVE, Unova 
    variant_seen GROUP_GENERATION_SIX, Kalos 
    variant_seen GROUP_GENERATION_SEVEN, Alola 
    variant_seen GROUP_GENERATION_EIGHT, Galar 
    dbw -1, wKantoPokedexSeen

RegionalCaughtTable:
    variant_caught GROUP_GENERATION_ONE, Kanto
    variant_caught GROUP_GENERATION_TWO, Johto
    variant_caught GROUP_GENERATION_THREE, Hoenn 
    variant_caught GROUP_GENERATION_FOUR, Sinnoh 
    variant_caught GROUP_GENERATION_FIVE, Unova 
    variant_caught GROUP_GENERATION_SIX, Kalos 
    variant_caught GROUP_GENERATION_SEVEN, Alola 
    variant_caught GROUP_GENERATION_EIGHT, Galar 
    dbw -1, wKantoPokedexCaught
