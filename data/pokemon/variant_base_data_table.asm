variant_basedata: macro
    dbba \1, \2BaseData
endm

VariantBaseDataTable:
    variant_basedata REGION_KANTO, Kanto
    variant_basedata REGION_JOHTO, Johto
    variant_basedata REGION_HOENN, Hoenn
	dbba -1,         OtherBaseData

