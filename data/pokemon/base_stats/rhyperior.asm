	dw 00464 ;national dex no

        db 115, 140, 130,  40,  55,  55
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, ROCK ; type
        db 30 ; catch rate
        db 241 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/rhyperior/front.dimensions"
        db LIGHTNING_ROD, SOLID_ROCK     ; abilities
        db RECKLESS    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER, EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
