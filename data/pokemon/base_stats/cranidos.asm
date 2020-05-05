	dw 00408 ;national dex no

        db  67, 125,  40,  58,  30,  30
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ROCK, ROCK ; type
        db 45 ; catch rate
        db 70 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cranidos/front.dimensions"
        db MOLD_BREAKER, MOLD_BREAKER     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_MONSTER ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
