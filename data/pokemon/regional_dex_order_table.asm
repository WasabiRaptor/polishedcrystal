regional_dex_order: macro
    dbbba \1, (\2DexOrderEnd - \2DexOrder), \2DexOrder
endm

RegionDexOrderTable:
    regional_dex_order REGION_KANTO, Kanto
    regional_dex_order REGION_JOHTO, Johto
    regional_dex_order REGION_HOENN, Hoenn
    regional_dex_order REGION_SINNOH, Sinnoh
    regional_dex_order REGION_UNOVA, Unova
    regional_dex_order REGION_KALOS, Kalos
    regional_dex_order REGION_ALOLA, Alola
    regional_dex_order REGION_GALAR, Galar 
    dbbba -1, 1, KantoDexOrder