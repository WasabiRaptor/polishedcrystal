
    dw 00541 ;national dex no

    db  55,  63,  90,  42,  50,  80
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, GRASS ; type
    db 120 ; catch rate
    db 133 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/swadloon/front.dimensions"
    db LEAF_GUARD, CHLOROPHYLL     ; abilities
    db OVERCOAT    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
