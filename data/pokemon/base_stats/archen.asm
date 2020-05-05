
    dw 00566 ;national dex no

    db  55, 112,  45,  70,  74,  45
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, FLYING ; type
    db 45 ; catch rate
    db 71 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/archen/front.dimensions"
    db DEFEATIST, DEFEATIST     ; abilities
    db DEFEATIST    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FLYING, EGG_WATER_3 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
