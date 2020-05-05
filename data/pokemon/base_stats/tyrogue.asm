	dw 00236 ;national dex no

        db  35,  35,  35,  35,  35,  35
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, FIGHTING ; type
        db 75 ; catch rate
        db 42 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tyrogue/front.dimensions"
        db GUTS, STEADFAST     ; abilities
        db VITAL_SPIRIT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
