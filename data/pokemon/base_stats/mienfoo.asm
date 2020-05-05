	dw 00619 ;national dex no

        db  45,  85,  50,  65,  55,  50
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, FIGHTING ; type
        db 180 ; catch rate
        db 70 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mienfoo/front.dimensions"
        db INNER_FOCUS, REGENERATOR     ; abilities
        db RECKLESS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
