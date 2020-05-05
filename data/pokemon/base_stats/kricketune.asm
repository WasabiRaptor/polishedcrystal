
    dw 00402 ;national dex no

    db  77,  85,  51,  65,  55,  51
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, BUG ; type
    db 45 ; catch rate
    db 134 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/kricketune/front.dimensions"
    db SWARM, SWARM     ; abilities
    db TECHNICIAN    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
