	dw 00527 ;national dex no

        db  65,  45,  43,  72,  55,  43
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, FLYING ; type
        db 190 ; catch rate
        db 65 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/woobat/front.dimensions"
        db UNAWARE, KLUTZ     ; abilities
        db SIMPLE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING, EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
