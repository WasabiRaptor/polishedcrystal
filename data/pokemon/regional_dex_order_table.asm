regional_dex_order: macro
    dbba ((\1DexOrderEnd - \1DexOrder)/3), \1DexOrder
endm

RegionDexOrderTable:
    regional_dex_order Other
    regional_dex_order Kanto
    regional_dex_order Johto
    regional_dex_order Hoenn
    regional_dex_order Sinnoh
    regional_dex_order Unova
    regional_dex_order Kalos
    regional_dex_order Alola
    regional_dex_order Galar