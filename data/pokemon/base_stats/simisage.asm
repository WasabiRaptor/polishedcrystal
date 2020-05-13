
    dw 00512 ;national dex no

    db  75,  98,  63, 101,  98,  63
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 75 ; catch rate
    db 174 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/simisage/front.dimensions"
    db GLUTTONY, GLUTTONY     ; abilities
    db OVERGROW    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
