VariantSpeciesTable:
	db LYCANROC
	db MEOWTH
	db PERSIAN
	db GRIMER
	db MUK
	db ROTOM
	db MEOWSTIC_M
    db NIDORAN_F
    db NIDORINO
    db NIDOKING
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
    db ZYGARDE_10
	db -1

variant_animdata: macro
    dbbww \1, BANK(\2Animations), \2AnimationPointers, \2AnimationIdlePointers
endm

VariantAnimPointerTable:
    variant_animdata LYCANROC,  Lycanroc  
    variant_animdata MEOWTH,    Meowth  
	variant_animdata PERSIAN,   Persian  
    variant_animdata GRIMER,    Grimer  
    variant_animdata MUK,       Muk  
    variant_animdata ROTOM,     Rotom  
    variant_animdata MEOWSTIC_M,  Meowstic  
    variant_animdata NIDORAN_F,   Nidoran   
    variant_animdata NIDORINO,  Nidorino   
    variant_animdata NIDOKING,  Nidoking   
    variant_animdata SANDSHREW, Sandshrew   
    variant_animdata SANDSLASH, Sandslash   
    variant_animdata SAWSBUCK,  Sawsbuck  
    variant_animdata GIRAFARIG, Girafarig  
    variant_animdata VULPIX,    Vulpix  
    variant_animdata NINETALES, Ninetales  
    variant_animdata UNOWN,     Unown   
    variant_animdata AEGISLASH, Aegislash   
    variant_animdata SUICUNE,   Suicune  
    variant_animdata RAIKOU,    Raikou  
    variant_animdata ENTEI,     Entei   
    variant_animdata SHAYMIN,   Shaymin  
    variant_animdata ZYGARDE_10,   Zygarde   
	dbbww -1,           BANK(PicAnimations), AnimationPointers, AnimationIdlePointers

variant_frames: macro
    dbbba \1, BANK(\2Frames), \2FramesPointers
endm

VariantFramesPointerTable:
    variant_frames LYCANROC,  Lycanroc  
    variant_frames MEOWTH,    Meowth  
	variant_frames PERSIAN,   Persian  
    variant_frames GRIMER,    Grimer  
    variant_frames MUK,       Muk  
    variant_frames ROTOM,     Rotom  
    variant_frames MEOWSTIC_M,  Meowstic  
    variant_frames NIDORAN_F,   Nidoran   
    variant_frames NIDORINO,  Nidorino   
    variant_frames NIDOKING,  Nidoking   
    variant_frames SANDSHREW, Sandshrew   
    variant_frames SANDSLASH, Sandslash   
    variant_frames SAWSBUCK,  Sawsbuck  
    variant_frames GIRAFARIG, Girafarig  
    variant_frames VULPIX,    Vulpix  
    variant_frames NINETALES, Ninetales  
    variant_frames UNOWN,     Unown   
    variant_frames AEGISLASH, Aegislash   
    variant_frames SUICUNE,   Suicune  
    variant_frames RAIKOU,    Raikou  
    variant_frames ENTEI,     Entei   
    variant_frames SHAYMIN,   Shaymin  
    variant_frames ZYGARDE_10,   Zygarde   
	dbbba -1,           BANK(KantoFrames), FramesPointers

variant_bitmasks: macro
    dbba \1, \2BitmasksPointers
endm

VariantBitmasksPointerTable:
    variant_bitmasks LYCANROC,  Lycanroc  
    variant_bitmasks MEOWTH,    Meowth  
	variant_bitmasks PERSIAN,   Persian  
    variant_bitmasks GRIMER,    Grimer  
    variant_bitmasks MUK,       Muk  
    variant_bitmasks ROTOM,     Rotom  
    variant_bitmasks MEOWSTIC_M,  Meowstic  
    variant_bitmasks NIDORAN_F,   Nidoran   
    variant_bitmasks NIDORINO,  Nidorino   
    variant_bitmasks NIDOKING,  Nidoking   
    variant_bitmasks SANDSHREW, Sandshrew   
    variant_bitmasks SANDSLASH, Sandslash   
    variant_bitmasks SAWSBUCK,  Sawsbuck  
    variant_bitmasks GIRAFARIG, Girafarig  
    variant_bitmasks VULPIX,    Vulpix  
    variant_bitmasks NINETALES, Ninetales  
    variant_bitmasks UNOWN,     Unown   
    variant_bitmasks AEGISLASH, Aegislash   
    variant_bitmasks SUICUNE,   Suicune  
    variant_bitmasks RAIKOU,    Raikou  
    variant_bitmasks ENTEI,     Entei   
    variant_bitmasks SHAYMIN,   Shaymin  
    variant_bitmasks ZYGARDE_10,   Zygarde   
	dbba -1,            BitmasksPointers