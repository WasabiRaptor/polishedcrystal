
    dw 00387 ;national dex no

    db  55,  68,  64,  31,  45,  55
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 45 ; catch rate
    db 64 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/turtwig/front.dimensions"
    db OVERGROW, OVERGROW     ; abilities
    db SHELL_ARMOR    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
