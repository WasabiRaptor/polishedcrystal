
    dw 00401 ;national dex no

    db  37,  25,  41,  25,  25,  41
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, BUG ; type
    db 255 ; catch rate
    db 39 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/kricketot/front.dimensions"
    db SHED_SKIN, SHED_SKIN     ; abilities
    db RUN_AWAY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
