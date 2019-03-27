VariantSpeciesTable:
	db LYCANROC
	db MEOWTH
	db PERSIAN
	db GRIMER
	db MUK
	db ROTOM
	db MEOWSTIC
    db NIDORAN
    db SANDSHREW
    db SANDSLASH
    db SAWSBUCK
    db GIRAFARIG
    db VULPIX
    db NINETALES
    db UNOWN
    db AEGISLASH
    db SUICUNE
    db RAIKOU
    db ENTEI
    db SHAYMIN
    db ZYGARDE
	db -1

VariantAnimPointerTable:
    dbbww LYCANROC,     BANK(LycanrocAnimations), LycanrocAnimationPointers, LycanrocAnimationIdlePointers
    dbbww MEOWTH,       BANK(MeowthAnimations), MeowthAnimationPointers, MeowthAnimationIdlePointers
	dbbww PERSIAN,      BANK(PersianAnimations), PersianAnimationPointers, PersianAnimationIdlePointers
    dbbww GRIMER,       BANK(GrimerAnimations), GrimerAnimationPointers, GrimerAnimationIdlePointers
    dbbww MUK,          BANK(MukAnimations), MukAnimationPointers, MukAnimationIdlePointers
    dbbww ROTOM,        BANK(RotomAnimations), RotomAnimationPointers, RotomAnimationIdlePointers
    dbbww MEOWSTIC,     BANK(MeowsticAnimations), MeowsticAnimationPointers, MeowsticAnimationIdlePointers
    dbbww NIDORAN,      BANK(NidoranAnimations), NidoranAnimationPointers, NidoranAnimationIdlePointers
    dbbww SANDSHREW,    BANK(SandshrewAnimations), SandshrewAnimationPointers, SandshrewAnimationIdlePointers
    dbbww SANDSLASH,    BANK(SandslashAnimations), SandslashAnimationPointers, SandslashAnimationIdlePointers
    dbbww SAWSBUCK,     BANK(SawsbuckAnimations), SawsbuckAnimationPointers, SawsbuckAnimationIdlePointers
    dbbww GIRAFARIG,    BANK(GirafarigAnimations), GirafarigAnimationPointers, GirafarigAnimationIdlePointers
    dbbww VULPIX,       BANK(VulpixAnimations), VulpixAnimationPointers, VulpixAnimationIdlePointers
    dbbww NINETALES,    BANK(NinetalesAnimations), NinetalesAnimationPointers, NinetalesAnimationIdlePointers
    dbbww UNOWN,        BANK(UnownAnimations), UnownAnimationPointers, UnownAnimationIdlePointers
    dbbww AEGISLASH,    BANK(AegislashAnimations), AegislashAnimationPointers, AegislashAnimationIdlePointers
    dbbww SUICUNE,      BANK(SuicuneAnimations), SuicuneAnimationPointers, SuicuneAnimationIdlePointers
    dbbww RAIKOU,       BANK(RaikouAnimations), RaikouAnimationPointers, RaikouAnimationIdlePointers
    dbbww ENTEI,        BANK(EnteiAnimations), EnteiAnimationPointers, EnteiAnimationIdlePointers
    dbbww SHAYMIN,      BANK(ShayminAnimations), ShayminAnimationPointers, ShayminAnimationIdlePointers
    dbbww ZYGARDE,      BANK(ZygardeAnimations), ZygardeAnimationPointers, ZygardeAnimationIdlePointers
	dbbww -1,           BANK(PicAnimations), AnimationPointers, AnimationIdlePointers

VariantFramesPointerTable:
	dbbba LYCANROC,     BANK(LycanrocFrames), LycanrocFramesPointers
    dbbba MEOWTH,       BANK(MeowthFrames), MeowthFramesPointers
    dbbba PERSIAN,      BANK(PersianFrames), PersianFramesPointers
    dbbba GRIMER,       BANK(GrimerFrames), GrimerFramesPointers
    dbbba MUK,          BANK(MukFrames), MukFramesPointers
    dbbba ROTOM,        BANK(RotomFrames), RotomFramesPointers
    dbbba MEOWSTIC,     BANK(Meowstic_MFrames), MeowsticFramesPointers
    dbbba NIDORAN,      BANK(Nidoran_MFrames), NidoranFramesPointers
    dbbba SANDSHREW,    BANK(SandshrewFrames), SandshrewFramesPointers
    dbbba SANDSLASH,    BANK(SandslashFrames), SandslashFramesPointers
    dbbba SAWSBUCK,     BANK(SawsbuckFrames), SawsbuckFramesPointers
    dbbba GIRAFARIG,    BANK(GirafarigFrames), GirafarigFramesPointers
    dbbba VULPIX,       BANK(VulpixFrames), VulpixFramesPointers
    dbbba NINETALES,    BANK(NinetalesFrames), NinetalesFramesPointers
    dbbba UNOWN,        BANK(UnownAFrames), UnownFramesPointers
    dbbba AEGISLASH,    BANK(AegislashFrames), AegislashFramesPointers
    dbbba SUICUNE,      BANK(SuicuneFrames), SuicuneFramesPointers
    dbbba RAIKOU,       BANK(RaikouFrames), RaikouFramesPointers
    dbbba ENTEI,        BANK(EnteiFrames), EnteiFramesPointers
    dbbba SHAYMIN,      BANK(ShayminFrames), ShayminFramesPointers
    dbbba ZYGARDE,      BANK(ZygardeFrames), ZygardeFramesPointers
	dbbba -1,           BANK(KantoFrames), FramesPointers

VariantBitmasksPointerTable:
	dbba LYCANROC,      LycanrocBitmasksPointers
    dbba MEOWTH,        MeowthBitmasksPointers
    dbba PERSIAN,       PersianBitmasksPointers
    dbba GRIMER,        GrimerBitmasksPointers
    dbba MUK,           MukBitmasksPointers
    dbba ROTOM,         RotomBitmasksPointers
    dbba MEOWSTIC,      MeowsticBitmasksPointers
    dbba NIDORAN,       NidoranBitmasksPointers
    dbba SANDSHREW,     SandshrewBitmasksPointers
    dbba SANDSLASH,     SandslashBitmasksPointers
    dbba SAWSBUCK,      SawsbuckBitmasksPointers
    dbba GIRAFARIG,     GirafarigBitmasksPointers
    dbba VULPIX,        VulpixBitmasksPointers
    dbba NINETALES,     NinetalesBitmasksPointers
    dbba UNOWN,         UnownBitmasksPointers
    dbba AEGISLASH,     AegislashBitmasksPointers
    dbba SUICUNE,       SuicuneBitmasksPointers
    dbba RAIKOU,        RaikouBitmasksPointers
    dbba ENTEI,         EnteiBitmasksPointers
    dbba SHAYMIN,       ShayminBitmasksPointers
    dbba ZYGARDE,       ZygardeBitmasksPointers
	dbba -1,            BitmasksPointers