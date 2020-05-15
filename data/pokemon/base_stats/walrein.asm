
    dw 00365 ;national dex no

    db 110,  80,  90,  65,  95,  90
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ICE, WATER ; type
    db 45 ; catch rate
    db 239 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/walrein/front.dimensions"
    db THICK_FAT, ICE_BODY     ; abilities
    db OBLIVIOUS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1, EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
