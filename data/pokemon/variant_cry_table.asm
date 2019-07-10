variant_cries: macro
    dbba \1, \2Cries
endm


VariantCryTable:
    variant_cries REGION_KANTO, Kanto
    variant_cries REGION_JOHTO, Johto
    variant_cries REGION_HOENN, Hoenn

    dbba -1,        KantoCries