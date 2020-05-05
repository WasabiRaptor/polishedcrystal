	dw 00259 ;national dex no

        db  70,  85,  70,  50,  60,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, GROUND ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/marshtomp/front.dimensions"
        db TORRENT, TORRENT     ; abilities
        db DAMP    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
