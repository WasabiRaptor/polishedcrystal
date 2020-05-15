
    dw 00400 ;national dex no

    db  79,  85,  60,  71,  55,  60
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, WATER ; type
    db 127 ; catch rate
    db 144 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/bibarel/front.dimensions"
    db SIMPLE, UNAWARE     ; abilities
    db MOODY    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
