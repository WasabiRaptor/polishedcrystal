	dw 00142 ;national dex no

        db  80, 105,  65, 130,  60,  75
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ROCK, FLYING ; type
        db 45 ; catch rate
        db 180 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 7 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
        db ROCK_HEAD, PRESSURE     ; abilities
        db UNNERVE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
