	dw 00605 ;national dex no

        db  55,  55,  55,  30,  85,  55
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 255 ; catch rate
        db 67 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/elgyem/front.dimensions"
        db TELEPATHY, SYNCHRONIZE     ; abilities
        db ANALYTIC    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
