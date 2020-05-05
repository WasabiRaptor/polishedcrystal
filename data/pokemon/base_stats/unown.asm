	dw 00201 ;national dex no

        db  48,  72,  48,  48,  72,  48
        evs  0,   1,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 225 ; catch rate
        db 118 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/unown/front.dimensions"
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
