
    dw 00652 ;national dex no

    db  88, 107, 122,  64,  74,  75
    evs  0,   0,   3,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, FIGHTING ; type
    db 45 ; catch rate
    db 239 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/chesnaught/front.dimensions"
    db OVERGROW, OVERGROW     ; abilities
    db BULLETPROOF    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
