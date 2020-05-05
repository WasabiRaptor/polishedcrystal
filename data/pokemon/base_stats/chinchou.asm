	dw 00170 ;national dex no

        db  75,  38,  38,  67,  56,  56
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, ELECTRIC ; type
        db 190 ; catch rate
        db 66 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/chinchou/front.dimensions"
        db VOLT_ABSORB, ILLUMINATE     ; abilities
        db WATER_ABSORB    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_2 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
