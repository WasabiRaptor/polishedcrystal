
    dw 00306 ;national dex no

    db  70, 110, 180,  50,  60,  60
    evs  0,   0,   3,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, ROCK ; type
    db 45 ; catch rate
    db 239 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 7 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/aggron/front.dimensions"
    db STURDY, ROCK_HEAD     ; abilities
    db HEAVY_METAL    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_MONSTER ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
