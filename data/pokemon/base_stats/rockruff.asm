
    dw 00744 ;national dex no

    db  45,  65,  40,  60,  30,  40
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, ROCK ; type
    db 190 ; catch rate
    db 56 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/rockruff/front.dimensions"
    db KEEN_EYE, VITAL_SPIRIT     ; abilities
    db STEADFAST    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
