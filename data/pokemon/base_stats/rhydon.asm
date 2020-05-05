	dw 00112 ;national dex no

        db 105, 130, 120,  40,  45,  45
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, ROCK ; type
        db 60 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/rhydon/front.dimensions"
        db LIGHTNING_ROD, ROCK_HEAD     ; abilities
        db RECKLESS    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER, EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
