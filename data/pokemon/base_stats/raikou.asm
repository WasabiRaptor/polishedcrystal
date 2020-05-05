
    dw 00243 ;national dex no

    db  90,  85,  75, 115, 115, 100
    evs  0,   0,   0,   2,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, ELECTRIC ; type
    db 3 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/raikou/front.dimensions"
    db PRESSURE, PRESSURE     ; abilities
    db INNER_FOCUS    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
