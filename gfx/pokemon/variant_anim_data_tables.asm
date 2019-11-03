
variant_animdata: macro
    dbbww \1, BANK(\2Animations), \2AnimationPointers, \2AnimationIdlePointers
endm

regional_animdata: macro
    dbw \1, \2VariantAnimPointerTable
endm

RegionalAnimPointerTable:
    regional_animdata GROUP_GENERATION_ONE,  Kanto  
    regional_animdata GROUP_GENERATION_TWO,  Johto
    regional_animdata GROUP_GENERATION_THREE,  Hoenn
    regional_animdata GROUP_GENERATION_FOUR,  Sinnoh
    regional_animdata GROUP_GENERATION_FIVE,  Unova
    regional_animdata -1, Other

OtherVariantAnimPointerTable:
    variant_animdata -1, Other

KantoVariantAnimPointerTable:
    variant_animdata -1, Kanto

JohtoVariantAnimPointerTable:
    variant_animdata -1, Johto

HoennVariantAnimPointerTable:
    variant_animdata -1, Hoenn

SinnohVariantAnimPointerTable:
    variant_animdata -1, Sinnoh

UnovaVariantAnimPointerTable:
    variant_animdata -1, Unova
    
variant_frames: macro
    dbbba \1, BANK(\2Frames), \2FramesPointers
endm

regional_frames: macro
    dbw \1, \2VariantFramesPointerTable
endm

RegionalFramesPointerTable:
    regional_frames GROUP_GENERATION_ONE,  Kanto
    regional_frames GROUP_GENERATION_TWO,  Johto
    regional_frames GROUP_GENERATION_THREE,  Hoenn
    regional_frames GROUP_GENERATION_FOUR,  Sinnoh
    regional_frames GROUP_GENERATION_FIVE,  Unova
    regional_frames -1, Other

OtherVariantFramesPointerTable:
    variant_frames -1, Other

KantoVariantFramesPointerTable:
    variant_frames -1, Kanto

JohtoVariantFramesPointerTable:
    variant_frames -1, Johto

HoennVariantFramesPointerTable:
    variant_frames -1, Hoenn

SinnohVariantFramesPointerTable:
    variant_frames -1, Sinnoh

UnovaVariantFramesPointerTable:
    variant_frames -1, Unova
    
variant_bitmasks: macro
    dbba \1, \2BitmasksPointers
endm

regional_bitmasks: macro
    dbw \1, \2VariantBitmasksPointerTable
endm

RegionalBitmasksPointerTable:
    regional_bitmasks GROUP_GENERATION_ONE,  Kanto
    regional_bitmasks GROUP_GENERATION_TWO,  Johto
    regional_bitmasks GROUP_GENERATION_THREE,  Hoenn
    regional_bitmasks GROUP_GENERATION_FOUR,  Sinnoh
    regional_bitmasks GROUP_GENERATION_FIVE,  Unova
    regional_bitmasks -1, Other

OtherVariantBitmasksPointerTable:
    variant_bitmasks -1, Other

KantoVariantBitmasksPointerTable:
    variant_bitmasks -1, Kanto

JohtoVariantBitmasksPointerTable:
    variant_bitmasks -1, Johto

HoennVariantBitmasksPointerTable:
    variant_bitmasks -1, Hoenn

SinnohVariantBitmasksPointerTable:
    variant_bitmasks -1, Sinnoh

UnovaVariantBitmasksPointerTable:
    variant_bitmasks -1, Unova