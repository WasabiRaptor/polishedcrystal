	dw 00386 ;national dex no

        db  50, 150,  50, 150, 150,  50
        evs  0,   1,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 3 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/deoxys_normal/front.dimensions"
        db PRESSURE, PRESSURE     ; abilities
        db PRESSURE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
