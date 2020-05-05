
    dw 00346 ;national dex no

    db  86,  81,  97,  43,  81, 107
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, GRASS ; type
    db 45 ; catch rate
    db 173 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/cradily/front.dimensions"
    db SUCTION_CUPS, SUCTION_CUPS     ; abilities
    db STORM_DRAIN    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_WATER_3 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
