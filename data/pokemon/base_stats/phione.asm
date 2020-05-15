
    dw 00489 ;national dex no

    db  80,  80,  80,  80,  80,  80
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 30 ; catch rate
    db 216 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 8 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/phione/front.dimensions"
    db HYDRATION, HYDRATION     ; abilities
    db HYDRATION    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_WATER_1, EGG_FAIRY ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
