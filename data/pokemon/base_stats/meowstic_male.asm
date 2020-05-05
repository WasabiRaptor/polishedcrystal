	dw 00678 ;national dex no

        db  74,  48,  76, 104,  83,  81
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 75 ; catch rate
        db 163 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/meowstic_male/front.dimensions"
        db KEEN_EYE, INFILTRATOR     ; abilities
        db PRANKSTER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
