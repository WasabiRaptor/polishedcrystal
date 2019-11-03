variant_cries: macro
    dbba \1, \2Cries
endm

regional_cries: macro
    dbw \1, \2VariantCryTable
endm


RegionalCryTable:
    regional_cries GROUP_GENERATION_ONE, Kanto
    regional_cries GROUP_GENERATION_TWO, Johto
    regional_cries GROUP_GENERATION_THREE, Hoenn
    regional_cries GROUP_GENERATION_FOUR, Sinnoh
    regional_cries GROUP_GENERATION_FIVE, Unova
    regional_cries -1, Kanto

;OtherVariantCryTable:
    ;variant_cries -1, Other

KantoVariantCryTable:
    variant_cries -1, Kanto

JohtoVariantCryTable:
    variant_cries -1, Johto

HoennVariantCryTable:
    variant_cries -1, Hoenn

SinnohVariantCryTable:
    variant_cries -1, Sinnoh

UnovaVariantCryTable:
    variant_cries -1, Unova