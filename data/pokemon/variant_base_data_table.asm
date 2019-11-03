variant_basedata: macro
    dbba \1, \2BaseData
endm

regional_basedata: macro
    dbw \1, \2VariantBaseDataTable
endm

RegionalBaseDataTable:
    regional_basedata GROUP_GENERATION_ONE, Kanto
    regional_basedata GROUP_GENERATION_TWO, Johto
    regional_basedata GROUP_GENERATION_THREE, Hoenn
    regional_basedata GROUP_GENERATION_FOUR, Sinnoh
    regional_basedata GROUP_GENERATION_FIVE, Unova
	regional_basedata -1, Other

OtherVariantBaseDataTable:
    variant_basedata -1, Other

KantoVariantBaseDataTable:
    variant_basedata -1, Kanto

JohtoVariantBaseDataTable:
    variant_basedata -1, Johto

HoennVariantBaseDataTable:
    variant_basedata -1, Hoenn

SinnohVariantBaseDataTable:
    variant_basedata -1, Sinnoh

UnovaVariantBaseDataTable:
    variant_basedata -1, Unova