variant_icons: macro
    dbw \1, \2IconPointers
endm


VariantIconPointerTable:
    variant_icons REGION_KANTO,  Kanto
    variant_icons REGION_JOHTO,  Johto  
    variant_icons REGION_HOENN, Hoenn

	dbw -1,       OtherIconPointers
