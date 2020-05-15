
    dw 00217 ;national dex no

    db  90, 130,  75,  55,  75,  75
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 60 ; catch rate
    db 175 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/ursaring/front.dimensions"
    db GUTS, QUICK_FEET     ; abilities
    db UNNERVE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
