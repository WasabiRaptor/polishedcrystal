
    dw 00656 ;national dex no

    db  41,  56,  40,  71,  62,  44
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 45 ; catch rate
    db 63 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/froakie/front.dimensions"
    db TORRENT, TORRENT     ; abilities
    db PROTEAN    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
