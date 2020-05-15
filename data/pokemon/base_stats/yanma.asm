
    dw 00193 ;national dex no

    db  65,  65,  45,  95,  75,  45
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, FLYING ; type
    db 75 ; catch rate
    db 78 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/yanma/front.dimensions"
    db SPEED_BOOST, COMPOUND_EYES     ; abilities
    db FRISK    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
