variant_basedata: macro
    dbba \1, \2BaseData
endm

VariantBaseDataTable:
    variant_basedata GROUP_GENERATION_ONE, Kanto
    variant_basedata GROUP_GENERATION_TWO, Johto
    variant_basedata GROUP_GENERATION_THREE, Hoenn
    variant_basedata GROUP_GENERATION_FOUR, Sinnoh
    variant_basedata GROUP_GENERATION_FIVE, Unova
	dbba -1,         OtherBaseData

