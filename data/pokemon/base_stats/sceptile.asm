
    dw 00254 ;national dex no

    db  70,  85,  65, 120, 105,  85
    evs  0,   0,   0,   3,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 45 ; catch rate
    db 239 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sceptile/front.dimensions"
    db OVERGROW, OVERGROW     ; abilities
    db UNBURDEN    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_DRAGON ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
