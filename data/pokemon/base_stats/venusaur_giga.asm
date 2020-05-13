	dw 00003 ;national dex no

        db  80,  82,  83,  80, 100, 100
        evs  0,   0,   0,   0,   2,   1
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, POISON ; type
        db 45 ; catch rate
        db 236 ; base exp
        dw 0 ; field capabilities
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/venusaur/front.dimensions"
        db OVERGROW, OVERGROW     ; abilities
        db CHLOROPHYLL    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end