
    dw 00188 ;national dex no

    db  55,  45,  50,  80,  45,  65
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, FLYING ; type
    db 120 ; catch rate
    db 119 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/skiploom/front.dimensions"
    db CHLOROPHYLL, LEAF_GUARD     ; abilities
    db INFILTRATOR    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FAIRY, EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
