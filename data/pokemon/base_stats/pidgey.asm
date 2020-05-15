
    dw 00016 ;national dex no

    db  40,  45,  40,  56,  35,  35
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 255 ; catch rate
    db 50 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/pidgey/front.dimensions"
    db KEEN_EYE, TANGLED_FEET     ; abilities
    db BIG_PECKS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
