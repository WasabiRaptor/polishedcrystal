
    dw 00383 ;national dex no

    db 100, 150, 140,  90, 100,  90
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, GROUND ; type
    db 3 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/groudon/front.dimensions"
    db DROUGHT, DROUGHT     ; abilities
    db DROUGHT    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
