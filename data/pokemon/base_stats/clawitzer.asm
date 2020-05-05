	dw 00693 ;national dex no

        db  71,  73,  88,  59, 120,  89
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 55 ; catch rate
        db 100 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/clawitzer/front.dimensions"
        db MEGA_LAUNCHER, MEGA_LAUNCHER     ; abilities
        db MEGA_LAUNCHER    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_1, EGG_WATER_3 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
