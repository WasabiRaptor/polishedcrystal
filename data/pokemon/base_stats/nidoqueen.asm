
    dw 00031 ;national dex no

    db  90,  92,  87,  76,  75,  85
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, GROUND ; type
    db 45 ; catch rate
    db 227 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn ALL_FEMALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/nidoqueen/front.dimensions"
    db POISON_POINT, RIVALRY     ; abilities
    db SHEER_FORCE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
