VariantSpeciesTable:
	db -1

VariantAnimPointerTable:
	dbbww -1, BANK(PicAnimations), AnimationPointers, AnimationExtraPointers

VariantFramesPointerTable:
	dbbba -1, BANK(KantoFrames), FramesPointers

VariantBitmasksPointerTable:
	dbba -1, BitmasksPointers
