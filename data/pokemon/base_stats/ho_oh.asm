
    dw 00250 ;national dex no

    db 106, 130,  90,  90, 110, 154
    evs  0,   0,   0,   0,   0,   3
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FLYING ; type
    db 3 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/ho_oh/front.dimensions"
    db PRESSURE, PRESSURE     ; abilities
    db REGENERATOR    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
