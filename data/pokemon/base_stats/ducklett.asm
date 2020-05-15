
    dw 00580 ;national dex no

    db  62,  44,  50,  55,  44,  50
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, FLYING ; type
    db 190 ; catch rate
    db 61 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/ducklett/front.dimensions"
    db KEEN_EYE, BIG_PECKS     ; abilities
    db HYDRATION    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
