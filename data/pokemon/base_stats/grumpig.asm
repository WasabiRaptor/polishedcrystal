	dw 00326 ;national dex no

        db  80,  45,  65,  80,  90, 110
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 60 ; catch rate
        db 165 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/grumpig/front.dimensions"
        db THICK_FAT, OWN_TEMPO     ; abilities
        db GLUTTONY    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
