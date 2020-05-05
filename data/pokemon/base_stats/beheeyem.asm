	dw 00606 ;national dex no

        db  75,  75,  75,  40, 125,  95
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 90 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/beheeyem/front.dimensions"
        db TELEPATHY, SYNCHRONIZE     ; abilities
        db ANALYTIC    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
