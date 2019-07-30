regional_dex_order: macro
    dbbba \1, ((\2DexOrderEnd - \2DexOrder)), \2DexOrder
endm

RegionDexOrderTable:
    regional_dex_order GROUP_GENERATION_ONE, Kanto
    regional_dex_order GROUP_GENERATION_TWO, Johto
    regional_dex_order GROUP_GENERATION_THREE, Hoenn
    regional_dex_order GROUP_GENERATION_FOUR, Sinnoh
    regional_dex_order GROUP_GENERATION_FIVE, Unova
    regional_dex_order GROUP_GENERATION_SIX, Kalos
    regional_dex_order GROUP_GENERATION_SEVEN, Alola
    regional_dex_order GROUP_GENERATION_EIGHT, Galar 
    dbbba -1, 1, KantoDexOrder