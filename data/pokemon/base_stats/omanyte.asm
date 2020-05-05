
    dw 00138 ;national dex no

    db  35,  40, 100,  35,  90,  55
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, WATER ; type
    db 45 ; catch rate
    db 71 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/omanyte/front.dimensions"
    db SWIFT_SWIM, SHELL_ARMOR     ; abilities
    db WEAK_ARMOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_WATER_3 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
