
    dw 00441 ;national dex no

    db  76,  65,  45,  91,  92,  42
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 30 ; catch rate
    db 144 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/chatot/front.dimensions"
    db KEEN_EYE, TANGLED_FEET     ; abilities
    db BIG_PECKS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
