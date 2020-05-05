
    dw 00661 ;national dex no

    db  45,  50,  43,  62,  40,  38
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 255 ; catch rate
    db 56 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/fletchling/front.dimensions"
    db BIG_PECKS, BIG_PECKS     ; abilities
    db GALE_WINGS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FLYING ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
