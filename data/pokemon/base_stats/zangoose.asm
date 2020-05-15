
    dw 00335 ;national dex no

    db  73, 115,  60,  90,  60,  60
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 90 ; catch rate
    db 160 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/zangoose/front.dimensions"
    db IMMUNITY, IMMUNITY     ; abilities
    db TOXIC_BOOST    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
