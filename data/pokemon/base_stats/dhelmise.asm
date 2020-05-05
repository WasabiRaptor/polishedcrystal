	dw 00781 ;national dex no

        db  70, 131, 100,  40,  86,  90
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, GRASS ; type
        db 25 ; catch rate
        db 181 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dhelmise/front.dimensions"
        db STEELWORKER, STEELWORKER     ; abilities
        db STEELWORKER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
