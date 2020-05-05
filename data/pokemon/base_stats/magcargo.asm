
    dw 00219 ;national dex no

    db  60,  50, 120,  30,  90,  80
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, ROCK ; type
    db 75 ; catch rate
    db 151 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/magcargo/front.dimensions"
    db MAGMA_ARMOR, FLAME_BODY     ; abilities
    db WEAK_ARMOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
