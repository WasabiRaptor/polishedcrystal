variant_dexentry: macro
    dbbw \1, BANK(\2PokedexEntry), \2PokedexEntryPointers
endm


VariantPokedexEntryPointerTable:
    variant_dexentry MEOWTH, Meowth 
    variant_dexentry PERSIAN, Persian 
    variant_dexentry GRIMER, Grimer
    variant_dexentry MUK, Muk
    variant_dexentry NIDORAN_F, Nidoran
    variant_dexentry NIDORINO, Nidorino
    variant_dexentry NIDOKING, Nidoking
	variant_dexentry MEOWSTIC_M, Meowstic
    variant_dexentry SANDSHREW, Sandshrew
    variant_dexentry SANDSLASH, Sandslash
    variant_dexentry GIRAFARIG, Girafarig
    variant_dexentry VULPIX, Vulpix
    variant_dexentry NINETALES, Ninetales
    variant_dexentry SUICUNE, Suicune
    variant_dexentry RAIKOU, Raikou
    variant_dexentry ENTEI, Entei
	dbbw -1,        BANK(PokedexEntries1), PokedexDataPointerTable