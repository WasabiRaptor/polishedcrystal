
    dw 00405 ;national dex no

    db  80, 120,  79,  70,  95,  79
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, ELECTRIC ; type
    db 45 ; catch rate
    db 235 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/luxray/front.dimensions"
    db RIVALRY, INTIMIDATE     ; abilities
    db GUTS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
