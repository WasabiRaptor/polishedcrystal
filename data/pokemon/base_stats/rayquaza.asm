
    dw 00384 ;national dex no

    db 105, 150,  90,  95, 150,  90
    evs  0,   2,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db DRAGON, FLYING ; type
    db 45 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/rayquaza/front.dimensions"
    db AIR_LOCK, AIR_LOCK     ; abilities
    db AIR_LOCK    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
