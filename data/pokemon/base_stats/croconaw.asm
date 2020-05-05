
    dw 00159 ;national dex no

    db  65,  80,  80,  58,  59,  63
    evs  0,   1,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 45 ; catch rate
    db 142 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/croconaw/front.dimensions"
    db TORRENT, TORRENT     ; abilities
    db SHEER_FORCE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_WATER_1 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
