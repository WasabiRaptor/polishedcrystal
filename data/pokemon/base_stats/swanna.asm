
    dw 00581 ;national dex no

    db  75,  87,  63,  98,  87,  63
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, FLYING ; type
    db 45 ; catch rate
    db 166 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/swanna/front.dimensions"
    db KEEN_EYE, BIG_PECKS     ; abilities
    db HYDRATION    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_FLYING ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
