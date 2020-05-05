	dw 00658 ;national dex no

        db  72,  95,  67, 122, 103,  71
        evs  0,   0,   0,   3,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, DARK ; type
        db 45 ; catch rate
        db 239 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/greninja/front.dimensions"
        db TORRENT, TORRENT     ; abilities
        db PROTEAN    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
