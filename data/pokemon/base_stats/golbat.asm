
    dw 00042 ;national dex no

    db  75,  80,  70,  90,  65,  75
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, FLYING ; type
    db 90 ; catch rate
    db 159 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/golbat/front.dimensions"
    db INNER_FOCUS, INNER_FOCUS     ; abilities
    db INFILTRATOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
