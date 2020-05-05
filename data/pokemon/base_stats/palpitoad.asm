	dw 00536 ;national dex no

        db  75,  65,  55,  69,  65,  55
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, GROUND ; type
        db 120 ; catch rate
        db 134 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/palpitoad/front.dimensions"
        db SWIFT_SWIM, HYDRATION     ; abilities
        db WATER_ABSORB    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
