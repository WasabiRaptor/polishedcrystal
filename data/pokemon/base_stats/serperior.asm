
    dw 00497 ;national dex no

    db  75,  75,  95, 113,  75,  95
    evs  0,   0,   0,   3,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 45 ; catch rate
    db 238 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/serperior/front.dimensions"
    db OVERGROW, OVERGROW     ; abilities
    db CONTRARY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD, EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
