
variant_animdata: macro
    dbbww \1, BANK(\2Animations), \2AnimationPointers, \2AnimationIdlePointers
endm

VariantAnimPointerTable:
    variant_animdata REGION_KANTO,  Kanto  
    variant_animdata REGION_JOHTO,  Johto
	dbbww -1,           BANK(KantoAnimations), KantoAnimationPointers, KantoAnimationIdlePointers

variant_frames: macro
    dbbba \1, BANK(\2Frames), \2FramesPointers
endm

VariantFramesPointerTable:
    variant_frames REGION_KANTO,  Kanto
    variant_frames REGION_JOHTO,  Johto
	dbbba -1,           BANK(KantoFrames), KantoFramesPointers

variant_bitmasks: macro
    dbba \1, \2BitmasksPointers
endm

VariantBitmasksPointerTable:
    variant_bitmasks REGION_KANTO,  Kanto
    variant_bitmasks REGION_JOHTO,  Johto
	dbba -1,            KantoBitmasksPointers