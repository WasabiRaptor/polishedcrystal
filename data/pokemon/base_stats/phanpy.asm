
    dw 00231 ;national dex no

    db  90,  60,  60,  40,  40,  40
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, GROUND ; type
    db 120 ; catch rate
    db 66 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/phanpy/front.dimensions"
    db PICKUP, PICKUP     ; abilities
    db SAND_VEIL    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
