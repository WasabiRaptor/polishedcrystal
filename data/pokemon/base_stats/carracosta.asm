
    dw 00565 ;national dex no

    db  74, 108, 133,  32,  83,  65
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, ROCK ; type
    db 45 ; catch rate
    db 173 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/carracosta/front.dimensions"
    db SOLID_ROCK, STURDY     ; abilities
    db SWIFT_SWIM    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_WATER_3 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
