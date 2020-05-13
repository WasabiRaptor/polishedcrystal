
    dw 00542 ;national dex no

    db  75, 103,  80,  92,  70,  80
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, GRASS ; type
    db 45 ; catch rate
    db 225 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/leavanny/front.dimensions"
    db SWARM, CHLOROPHYLL     ; abilities
    db OVERCOAT    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
