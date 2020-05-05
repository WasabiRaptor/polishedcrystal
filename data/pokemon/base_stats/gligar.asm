
    dw 00207 ;national dex no

    db  65,  75, 105,  85,  35,  65
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, FLYING ; type
    db 60 ; catch rate
    db 86 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/gligar/front.dimensions"
    db HYPER_CUTTER, SAND_VEIL     ; abilities
    db IMMUNITY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
