
    dw 00721 ;national dex no

    db  80, 110, 120,  70, 130,  90
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, WATER ; type
    db 3 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/volcanion/front.dimensions"
    db WATER_ABSORB, WATER_ABSORB     ; abilities
    db WATER_ABSORB    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
