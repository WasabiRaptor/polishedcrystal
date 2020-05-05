
    dw 00803 ;national dex no

    db  67,  73,  67,  73,  73,  67
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, POISON ; type
    db 45 ; catch rate
    db 189 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/poipole/front.dimensions"
    db BEAST_BOOST, BEAST_BOOST     ; abilities
    db BEAST_BOOST    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
