
    dw 00543 ;national dex no

    db  30,  45,  59,  57,  30,  39
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, POISON ; type
    db 255 ; catch rate
    db 52 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/venipede/front.dimensions"
    db POISON_POINT, SWARM     ; abilities
    db SPEED_BOOST    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
