
    dw 00087 ;national dex no

    db  90,  70,  80,  70,  70,  95
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db WATER, ICE ; type
    db 75 ; catch rate
    db 166 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/dewgong/front.dimensions"
    db THICK_FAT, HYDRATION     ; abilities
    db ICE_BODY    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
