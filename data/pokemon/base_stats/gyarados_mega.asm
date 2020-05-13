	dw 00130 ;national dex no

        db  95, 155, 109,  81,  70, 130
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, DARK ; type
        db 45 ; catch rate
        db 189 ; base exp
        dw 0 ; field capabilities
        dn FEMALE_50, 1 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gyarados/front.dimensions"
        db MOLD_BREAKER, MOLD_BREAKER     ; abilities
        db MOLD_BREAKER    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_2, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
