
    dw 00096 ;national dex no

    db  60,  48,  45,  42,  43,  90
    evs  0,   0,   0,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, PSYCHIC ; type
    db 190 ; catch rate
    db 66 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/drowzee/front.dimensions"
    db INSOMNIA, FOREWARN     ; abilities
    db INNER_FOCUS    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
