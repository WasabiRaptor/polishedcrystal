	dw 00467 ;national dex no

        db  75,  95,  67,  83, 125,  95
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, FIRE ; type
        db 30 ; catch rate
        db 243 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_25, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/magmortar/front.dimensions"
        db FLAME_BODY, FLAME_BODY     ; abilities
        db VITAL_SPIRIT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
