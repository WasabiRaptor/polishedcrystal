	dw 00158 ;national dex no

        db  50,  65,  64,  43,  44,  48
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 45 ; catch rate
        db 63 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/totodile/front.dimensions"
        db TORRENT, TORRENT     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
