	dw 00226 ;national dex no

        db  85,  40,  70,  70,  80, 140
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db WATER, FLYING ; type
        db 25 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mantine/front.dimensions"
        db SWIFT_SWIM, WATER_ABSORB     ; abilities
        db WATER_VEIL    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
