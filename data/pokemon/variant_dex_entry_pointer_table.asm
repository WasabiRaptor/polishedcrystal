variant_dexentry: macro
    dbw \1, \2PokedexEntryPointers
endm


VariantPokedexEntryPointerTable:
    variant_dexentry REGION_KANTO, Kanto 
    variant_dexentry REGION_JOHTO, Johto 
    variant_dexentry REGION_HOENN, Hoenn

	dbw -1,         PokedexDataPointerTable