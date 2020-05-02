variant_names: macro
    dbba \1, \2Names
endm

regional_names: macro
    dba \1NamePointerTable
endm

RegionalNamePointerTable:
    regional_names Kanto
    regional_names Kanto
    regional_names Johto
    regional_names Hoenn
    regional_names Sinnoh
    regional_names Unova
    regional_names Kalos
