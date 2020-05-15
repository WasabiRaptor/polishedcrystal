
    dw 00404 ;national dex no

    db  60,  85,  49,  60,  60,  49
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, ELECTRIC ; type
    db 120 ; catch rate
    db 127 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/luxio/front.dimensions"
    db RIVALRY, INTIMIDATE     ; abilities
    db GUTS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
