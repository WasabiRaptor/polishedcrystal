
    dw 00364 ;national dex no

    db  90,  60,  70,  45,  75,  70
    evs  2,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ICE, WATER ; type
    db 120 ; catch rate
    db 144 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sealeo/front.dimensions"
    db THICK_FAT, ICE_BODY     ; abilities
    db OBLIVIOUS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1, EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
