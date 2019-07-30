
variant_animdata: macro
    dbbww \1, BANK(\2Animations), \2AnimationPointers, \2AnimationIdlePointers
endm

VariantAnimPointerTable:
    variant_animdata GROUP_GENERATION_ONE,  Kanto  
    variant_animdata GROUP_GENERATION_TWO,  Johto
    variant_animdata GROUP_GENERATION_THREE,  Hoenn
    variant_animdata -1, Other

variant_frames: macro
    dbbba \1, BANK(\2Frames), \2FramesPointers
endm

VariantFramesPointerTable:
    variant_frames GROUP_GENERATION_ONE,  Kanto
    variant_frames GROUP_GENERATION_TWO,  Johto
    variant_frames GROUP_GENERATION_THREE,  Hoenn
    variant_frames -1, Other

variant_bitmasks: macro
    dbba \1, \2BitmasksPointers
endm

VariantBitmasksPointerTable:
    variant_bitmasks GROUP_GENERATION_ONE,  Kanto
    variant_bitmasks GROUP_GENERATION_TWO,  Johto
    variant_bitmasks GROUP_GENERATION_THREE,  Hoenn
    variant_bitmasks -1, Other
