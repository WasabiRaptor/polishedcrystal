
    dw 00465 ;national dex no

    db 100, 100, 125,  50, 110,  50
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 30 ; catch rate
    db 187 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/tangrowth/front.dimensions"
    db CHLOROPHYLL, LEAF_GUARD     ; abilities
    db REGENERATOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
