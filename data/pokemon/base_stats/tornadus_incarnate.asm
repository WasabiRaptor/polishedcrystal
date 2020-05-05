
    dw 00641 ;national dex no

    db  79, 115,  70, 111, 125,  80
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FLYING, FLYING ; type
    db 3 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn ALL_MALE, 24 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/tornadus_incarnate/front.dimensions"
    db PRANKSTER, PRANKSTER     ; abilities
    db DEFIANT    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
