
    dw 00413 ;national dex no

    db  60,  59,  85,  36,  79, 105
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db BUG, GRASS ; type
    db 45 ; catch rate
    db 148 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn ALL_FEMALE, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/wormadam_plant/front.dimensions"
    db ANTICIPATION, ANTICIPATION     ; abilities
    db OVERCOAT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
