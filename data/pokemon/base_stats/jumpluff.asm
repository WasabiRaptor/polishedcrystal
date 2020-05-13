
    dw 00189 ;national dex no

    db  75,  55,  70, 110,  55,  95
    evs  0,   0,   0,   3,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, FLYING ; type
    db 45 ; catch rate
    db 207 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/jumpluff/front.dimensions"
    db CHLOROPHYLL, LEAF_GUARD     ; abilities
    db INFILTRATOR    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FAIRY, EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
