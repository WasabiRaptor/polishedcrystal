variant_names: macro
    dbba \1, \2Names
endm

VariantNamePointerTable:
    variant_names REGION_KANTO,  Kanto
    variant_names REGION_JOHTO,  Johto
    dbba -1,        PokemonNames
